# 1. How to make

```shell
make && sudo make install
bpc -v -c bpc-raylib.conf --static -d display_errors=on -d max_execution_time=-1 test.php
./test
```

# 2. raylib.h

```c
typedef enum {
    RAYLIB_LOG_XXX // conflicts with syslog.h LOG_DEBUG, prefix RAYLIB_
} TraceLogLevel;
```

# 3. Data Structure Map

| C                                   | php                                                          |
| ----------------------------------- | ------------------------------------------------------------ |
| Color {r, g, b, a}                  | array(r, g, b, a)                                            |
| Rectangle {x, y, width, height}     | array(x, y, width, height)                                   |
| Image                               | resource: raylib Image                                       |
| Image *images                       | array(resource raylib Image 1, resource raylib Image 2, ...) |
| Font                                | resource: raylib Font                                        |
| GlyphInfo *glyphs, int glyphCount   | resource: raylib Glyphs                                      |
| int *codepoints, int codepointCount | NULL or array(codepoint1, codepoint2, codepoint3, ...)       |
| Vector2 {x, y}                      | array(x, y)                                                  |
| Vector3 {x, y, z}                   | array(x, y, z)                                               |
| Vector4 {x, y, z, w}                | array(x, y, z, w)                                            |
| Vector2 *points, int pointCount     | array(Vector2, Vector2, ...)                                 |
| Vector3 *points, int pointCount     | array(Vector3, Vector3, ...)                                 |
| Camera2D                            | array('offset' => Vector2, 'target' => Vector2, 'rotation' => , 'zoom' => ) |
| Camera3D                            | array('position' => Vector3, 'target' => Vector3, 'up' => array(x,y,z), 'fovy' => , 'projection' => ) |
| Texture,Texture2D,TextureCubemap    | array('id' => , 'width' => , 'height' => , 'mipmaps' => '', 'format' => ) |
| RenderTexture,RenderTexture2D       | array('id' => , 'texture' => Texture, 'depth' => Texture)    |
| NPatchInfo                          | array('source' => Rectangle, 'left' => , 'top' => , 'right' => , 'bottom' => , layout => '') |
| Ray                                 | array('position' => Vector3, 'direction' => Vector3)         |
| Matrix                              | array(m0,m1,m2,...m15)                                       |

