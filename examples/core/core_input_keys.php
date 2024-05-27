<?php

$screenWidth = 800;
$screenHeight = 450;

InitWindow($screenWidth, $screenHeight, "raylib [core] example - keyboard input");

$ballPosition = array($screenWidth/2, $screenHeight/2);

SetTargetFPS(60);

while (!WindowShouldClose())
{
    if (IsKeyDown(KEY_RIGHT)) $ballPosition[0] += 2;
    if (IsKeyDown(KEY_LEFT)) $ballPosition[0] -= 2;
    if (IsKeyDown(KEY_UP)) $ballPosition[1] -= 2;
    if (IsKeyDown(KEY_DOWN)) $ballPosition[1] += 2;

    BeginDrawing();

        ClearBackground(RAYWHITE);

        DrawText("move the ball with arrow keys", 10, 10, 20, DARKGRAY);

        DrawCircleV($ballPosition, 50, MAROON);

    EndDrawing();
}

CloseWindow();
