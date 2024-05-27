<?php

$screenWidth = 800;
$screenHeight = 450;

InitWindow($screenWidth, $screenHeight, "raylib [core] example - mouse input");

$ballPosition = array(-100, -100);
$ballColor = DARKBLUE;

SetTargetFPS(60);

while (!WindowShouldClose())
{
    $ballPosition = GetMousePosition();

    if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT)) $ballColor = MAROON;
    else if (IsMouseButtonPressed(MOUSE_BUTTON_MIDDLE)) $ballColor = LIME;
    else if (IsMouseButtonPressed(MOUSE_BUTTON_RIGHT)) $ballColor = DARKBLUE;
    else if (IsMouseButtonPressed(MOUSE_BUTTON_SIDE)) $ballColor = PURPLE;
    else if (IsMouseButtonPressed(MOUSE_BUTTON_EXTRA)) $ballColor = YELLOW;
    else if (IsMouseButtonPressed(MOUSE_BUTTON_FORWARD)) $ballColor = ORANGE;
    else if (IsMouseButtonPressed(MOUSE_BUTTON_BACK)) $ballColor = BEIGE;

    BeginDrawing();

        ClearBackground(RAYWHITE);

        DrawCircleV($ballPosition, 40, $ballColor);

        DrawText("move ball with mouse and click mouse button to change color", 10, 10, 20, DARKGRAY);

    EndDrawing();
}

CloseWindow();
