<?php

define('MAX_BUILDINGS', 100);

$screenWidth = 800;
$screenHeight = 450;

InitWindow($screenWidth, $screenHeight, "raylib [core] example - 2d camera");

$player = array(400, 280, 40, 40); // x y width height
$buildings = array();
$buildColors = array();

$spacing = 0;

for ($i = 0; $i < MAX_BUILDINGS; $i++) {
    $width  = GetRandomValue(50, 200);
    $height = GetRandomValue(100, 800);
    $buildings[] = array(
        -6000 + $spacing,               // x
        $screenHeight - 130 - $height,  // y
        $width,                         // width
        $height                         // height
    );

    $spacing += $width;

    $buildColors[] = array(
        GetRandomValue(200, 240),   // r
        GetRandomValue(200, 240),   // g
        GetRandomValue(200, 250),   // b
        255                         // a
    );
}

$camera = array(
    'offset'   => array($screenWidth/2, $screenHeight/2),
    'target'   => array($player[0] + 20, $player[1] + 20),
    'rotation' => 0,
    'zoom'     => 1
);

SetTargetFPS(60);

while (!WindowShouldClose())
{
    // Update
    //----------------------------------------------------------------------------------
    // Player movement
    if (IsKeyDown(KEY_RIGHT)) $player[0] += 2;
    else if (IsKeyDown(KEY_LEFT)) $player[0] -= 2;

    // Camera target follows player
    $camera['target'][0] = $player[0] + 20;
    $camera['target'][1] = $player[1] + 20;

    // Camera rotation controls
    if (IsKeyDown(KEY_A)) $camera['rotation']--;
    else if (IsKeyDown(KEY_S)) $camera['rotation']++;

    // Limit camera rotation to 80 degrees (-40 to 40)
    if ($camera['rotation'] > 40) $camera['rotation'] = 40;
    else if ($camera['rotation'] < -40) $camera['rotation'] = -40;

    // Camera zoom controls
    $camera['zoom'] += GetMouseWheelMove()*0.05;

    if ($camera['zoom'] > 3) $camera['zoom'] = 3;
    else if ($camera['zoom'] < 0.1) $camera['zoom'] = 0.1;

    // Camera reset (zoom and rotation)
    if (IsKeyPressed(KEY_R))
    {
        $camera['zoom'] = 1;
        $camera['rotation'] = 0;
    }
    //----------------------------------------------------------------------------------

    // Draw
    //----------------------------------------------------------------------------------
    BeginDrawing();

        ClearBackground(RAYWHITE);

        BeginMode2D($camera);

            DrawRectangle(-6000, 320, 13000, 8000, DARKGRAY);

            for ($i = 0; $i < MAX_BUILDINGS; $i++) DrawRectangleRec($buildings[$i], $buildColors[$i]);

            DrawRectangleRec($player, RED);

            DrawLine($camera['target'][0], -$screenHeight*10, $camera['target'][0], $screenHeight*10, GREEN);
            DrawLine(-$screenWidth*10, $camera['target'][1], $screenWidth*10, $camera['target'][1], GREEN);

        EndMode2D();

        DrawText("SCREEN AREA", 640, 10, 20, RED);

        DrawRectangle(0, 0, $screenWidth, 5, RED);
        DrawRectangle(0, 5, 5, $screenHeight - 10, RED);
        DrawRectangle($screenWidth - 5, 5, 5, $screenHeight - 10, RED);
        DrawRectangle(0, $screenHeight - 5, $screenWidth, 5, RED);

        DrawRectangle( 10, 10, 250, 113, Fade(SKYBLUE, 0.5));
        DrawRectangleLines( 10, 10, 250, 113, BLUE);

        DrawText("Free 2d camera controls:", 20, 20, 10, BLACK);
        DrawText("- Right/Left to move Offset", 40, 40, 10, DARKGRAY);
        DrawText("- Mouse Wheel to Zoom in-out", 40, 60, 10, DARKGRAY);
        DrawText("- A / S to Rotate", 40, 80, 10, DARKGRAY);
        DrawText("- R to reset Zoom and Rotation", 40, 100, 10, DARKGRAY);

    EndDrawing();
    //----------------------------------------------------------------------------------
}

CloseWindow();
