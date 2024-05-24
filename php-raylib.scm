(module php-raylib
    (load (php-macros "/usr/local/lib/php-macros.scm"))
    (extern
        (include "raylib.h"))
    (export
        (init-php-raylib-lib)
        ; constants
        RAYLIB_VERSION_MAJOR
        RAYLIB_VERSION_MINOR
        RAYLIB_VERSION_PATCH
        RAYLIB_VERSION
        RAYLIB_PI
        RAYLIB_DEG2RAD
        RAYLIB_RAD2DEG
        ; color
        LIGHTGRAY
        RAYWHITE
        ; Window-related functions
        (initwindow width height title)
        (closewindow)
        (windowshouldclose)
        ; Drawing-related functions
        (clearbackground color)
        (begindrawing)
        (enddrawing)
        ; Text drawing functions
        (drawtext text posX posY fontSize color)
        ; Timing-related functions
        (settargetfps fps)
        ))

(define (init-php-raylib-lib)
    #t)

(register-extension "raylib"        ; extension title, shown in e.g. phpinfo()
                    PHP_VERSION     ; version
                    "php-raylib")   ; library name. make sure this matches LIBNAME in Makefile

; constants

(defconstant RAYLIB_VERSION_MAJOR   (pragma::elong "RAYLIB_VERSION_MAJOR"))
(defconstant RAYLIB_VERSION_MINOR   (pragma::elong "RAYLIB_VERSION_MINOR"))
(defconstant RAYLIB_VERSION_PATCH   (pragma::elong "RAYLIB_VERSION_PATCH"))
(defconstant RAYLIB_VERSION         (pragma::string "RAYLIB_VERSION"))

(defconstant RAYLIB_PI          (pragma::double "PI"))
(defconstant RAYLIB_DEG2RAD     (pragma::double "(PI/180.0f)"))
(defconstant RAYLIB_RAD2DEG     (pragma::double "(180.0f/PI)"))

(define-macro (%mkcolor r g b a)
    `(let ((color (make-php-hash 4)))
        (bpc_php_hash_insert_elong_elong color #e0 ,r)
        (bpc_php_hash_insert_elong_elong color #e1 ,g)
        (bpc_php_hash_insert_elong_elong color #e2 ,b)
        (bpc_php_hash_insert_elong_elong color #e3 ,a)
        color))

(defconstant LIGHTGRAY (%mkcolor #e200 #e200 #e200 #e255))
(defconstant RAYWHITE  (%mkcolor #e245 #e245 #e245 #e255))

; Window-related functions

(defbuiltin (initwindow width height title)
    (unless (elong? width)
        (set! width (mkelongw 'InitWindow 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'InitWindow 2 height)))
        (when height
            (unless (string? title)
                (set! title (mkstrw 'InitWindow 3 title)))
            (when title
                (pragma "InitWindow((int)$1, (int)$2, $3)"
                        ($belong->elong width)
                        ($belong->elong height)
                        ($bstring->string title)))))
    NULL)

(defbuiltin (closewindow)
    (pragma "CloseWindow()")
    NULL)

(defbuiltin (windowshouldclose)
    (pragma::bool "WindowShouldClose()"))

; Drawing-related functions

(define-macro (%init-c-color func-name arg-idx color c)
    `(begin
        (set! ,color (mkhashw ,func-name ,arg-idx ,color))
        (when ,color
            (let ((size (php-hash-size ,color)))
                (if (=fx size 4)
                    (let ((r (bpc_php_hash_lookup_int ,color #e0))
                          (g (bpc_php_hash_lookup_int ,color #e1))
                          (b (bpc_php_hash_lookup_int ,color #e2))
                          (a (bpc_php_hash_lookup_int ,color #e3)))
                        (unless (elong? r)
                            (set! r (or (mkelong r 'arg-parsing)
                                        (php-warning ,func-name "() expects parameter " ,arg-idx " array index 0 to be integer, " (get-php-datatype r 'arg-parsing) " given"))))
                        (when r
                            (unless (elong? g)
                                (set! g (or (mkelong g 'arg-parsing)
                                            (php-warning ,func-name "() expects parameter " ,arg-idx " array index 1 to be integer, " (get-php-datatype g 'arg-parsing) " given"))))
                            (when g
                                (unless (elong? b)
                                    (set! b (or (mkelong b 'arg-parsing)
                                                (php-warning ,func-name "() expects parameter " ,arg-idx " array index 2 to be integer, " (get-php-datatype b 'arg-parsing) " given"))))
                                (when b
                                    (unless (elong? a)
                                        (set! a (or (mkelong a 'arg-parsing)
                                                    (php-warning ,func-name "() expects parameter " ,arg-idx " array index 3 to be integer, " (get-php-datatype a 'arg-parsing) " given"))))
                                    (when a
                                        (pragma ,(string-append c ".r = (unsigned char)$1") ($belong->elong r))
                                        (pragma ,(string-append c ".g = (unsigned char)$1") ($belong->elong g))
                                        (pragma ,(string-append c ".b = (unsigned char)$1") ($belong->elong b))
                                        (pragma ,(string-append c ".a = (unsigned char)$1") ($belong->elong a))
                                        #t)))))
                    (php-warning ,func-name "() expects parameter " ,arg-idx " to be array with 4(rgba order) color values, " size " given"))))))

(defbuiltin (clearbackground color)
    (pragma "Color c")
    (when (%init-c-color 'ClearBackground 1 color "c")
        (pragma "ClearBackground(c)"))
    NULL)

(defbuiltin (begindrawing)
    (pragma "BeginDrawing()")
    NULL)

(defbuiltin (enddrawing)
    (pragma "EndDrawing()")
    NULL)

; Text drawing functions

(defbuiltin (drawtext text posX posY fontSize color)
    (unless (string? text)
        (set! text (mkstrw 'DrawText 1 text)))
    (when text
        (unless (elong? posX)
            (set! posX (mkelongw 'DrawText 2 posX)))
        (when posX
            (unless (elong? posY)
                (set! posY (mkelongw 'DrawText 3 posY)))
            (when posY
                (unless (elong? fontSize)
                    (set! fontSize (mkelongw 'DrawText 4 fontSize)))
                (when fontSize
                    (pragma "Color c")
                    (when (%init-c-color 'DrawText 5 color "c")
                        (pragma "DrawText($1, (int)$2, (int)$3, (int)$4, c)"
                                ($bstring->string text)
                                ($belong->elong posX)
                                ($belong->elong posY)
                                ($belong->elong fontSize)))))))
    NULL)

; Timing-related functions

(defbuiltin (settargetfps fps)
    (unless (elong? fps)
        (set! fps (mkelongw 'SetTargetFPS 1 fps)))
    (when fps
        (pragma "SetTargetFPS((int)$1)"
                ($belong->elong fps)))
    NULL)
