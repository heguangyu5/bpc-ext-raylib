# 1. How to make

```shell
make debug && make && sudo make install
bpc -v -c bpc-raylib.conf --static -d display_errors=on test.php
./test
```

# 2. raylib.h

```c
typedef enum {
    RAYLIB_LOG_XXX // conflicts with syslog.h LOG_DEBUG, prefix RAYLIB_
} TraceLogLevel;
```

# 3. Data Structure Map

| C                    | php                 |
| -------------------- | ------------------- |
| `Color {r, g, b, a}` | `array(r, g, b, a)` |

