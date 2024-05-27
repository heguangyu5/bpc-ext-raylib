<?php

$screenWidth = 800;
$screenHeight = 450;

InitWindow($screenWidth, $screenHeight, "raylib [core] example - 2d camera mouse zoom");

$camera = array(
    'offset'   => array(0, 0),
    'target'   => array(0, 0),
    'rotation' => 0,
    'zoom'     => 1
);

$zoomMode = 0;   // 0-Mouse Wheel, 1-Mouse Move

SetTargetFPS(60);

while (!WindowShouldClose())
{
    // Update
    //----------------------------------------------------------------------------------
    if (IsKeyPressed(KEY_ONE)) $zoomMode = 0;
    else if (IsKeyPressed(KEY_TWO)) $zoomMode = 1;

    // Translate based on mouse right click
    if (IsMouseButtonDown(MOUSE_BUTTON_RIGHT))
    {
        $delta = GetMouseDelta();
        $delta = Vector2Scale($delta, -1/$camera['zoom']);
        $camera['target'] = Vector2Add($camera['target'], $delta);
    }

    if ($zoomMode == 0)
    {
        // Zoom based on mouse wheel
        $wheel = GetMouseWheelMove();
        if ($wheel != 0)
        {
            // Get the world point that is under the mouse
            $mouseWorldPos = GetScreenToWorld2D(GetMousePosition(), $camera);

            // Set the offset to where the mouse is
            $camera['offset'] = GetMousePosition();

            // Set the target to match, so that the camera maps the world space point
            // under the cursor to the screen space point under the cursor at any zoom
            $camera['target'] = $mouseWorldPos;

            // Zoom increment
            $scaleFactor = 1 + (0.25*abs($wheel));
            if ($wheel < 0) $scaleFactor = 1/$scaleFactor;
            $camera['zoom'] = Clamp($camera['zoom']*$scaleFactor, 0.125, 64);
        }
    }
    else
    {
        // Zoom based on mouse left click
        if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT))
        {
            // Get the world point that is under the mouse
            $mouseWorldPos = GetScreenToWorld2D(GetMousePosition(), $camera);

            // Set the offset to where the mouse is
            $camera['offset'] = GetMousePosition();

            // Set the target to match, so that the camera maps the world space point
            // under the cursor to the screen space point under the cursor at any zoom
            $camera['target'] = $mouseWorldPos;
        }
        if (IsMouseButtonDown(MOUSE_BUTTON_LEFT))
        {
            // Zoom increment
            $deltaX = GetMouseDelta()[0];
            $scaleFactor = 1 + (0.01*abs($deltaX));
            if ($deltaX < 0) $scaleFactor = 1/$scaleFactor;
            $camera['zoom'] = Clamp($camera['zoom']*$scaleFactor, 0.125, 64);
        }
    }
    //----------------------------------------------------------------------------------

    // Draw
    //----------------------------------------------------------------------------------
    BeginDrawing();
        ClearBackground(RAYWHITE);

        BeginMode2D($camera);

            // Draw the 3d grid, rotated 90 degrees and centered around 0,0
            // just so we have something in the XY plane
            rlPushMatrix();
                rlTranslatef(0, 25*50, 0);
                rlRotatef(90, 1, 0, 0);
                DrawGrid(100, 50);
            rlPopMatrix();

            // Draw a reference circle
            DrawCircle(GetScreenWidth()/2, GetScreenHeight()/2, 50, MAROON);

        EndMode2D();

        DrawText("[1][2] Select mouse zoom mode (Wheel or Move)", 20, 20, 20, DARKGRAY);
        if ($zoomMode == 0) DrawText("Mouse right button drag to move, mouse wheel to zoom", 20, 50, 20, DARKGRAY);
        else DrawText("Mouse right button drag to move, mouse press and move to zoom", 20, 50, 20, DARKGRAY);

    EndDrawing();
    //----------------------------------------------------------------------------------
}

CloseWindow();
