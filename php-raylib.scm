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
        ; Some Basic Colors
        LIGHTGRAY
        RAYWHITE
        ; Window-related functions
        (initwindow width height title)
        (closewindow)
        (windowshouldclose)
        (iswindowready)
        (iswindowfullscreen)
        (iswindowhidden)
        (iswindowminimized)
        (iswindowmaximized)
        (iswindowfocused)
        (iswindowresized)
        (iswindowstate flag)
        (setwindowstate flags)
        (clearwindowstate flags)
        (togglefullscreen)
        (toggleborderlesswindowed)
        (maximizewindow)
        (minimizewindow)
        (restorewindow)
        (setwindowicon image)
        (setwindowicons images)
        (setwindowtitle title)
        (setwindowposition x y)
        (setwindowmonitor monitor)
        (setwindowminsize width height)
        (setwindowmaxsize width height)
        (setwindowsize width height)
        (setwindowopacity opacity)
        (setwindowfocused)
        (getscreenwidth)
        (getscreenheight)
        (getrenderwidth)
        (getrenderheight)
        (getmonitorcount)
        (getcurrentmonitor)
        (getmonitorposition monitor)
        (getmonitorwidth monitor)
        (getmonitorheight monitor)
        (getmonitorphysicalwidth monitor)
        (getmonitorphysicalheight monitor)
        (getmonitorrefreshrate monitor)
        (getwindowposition)
        (getwindowscaledpi)
        (getmonitorname monitor)
        (setclipboardtext text)
        (getclipboardtext)
        (enableeventwaiting)
        (disableeventwaiting)
        ; Drawing-related functions
        (clearbackground color)
        (begindrawing)
        (enddrawing)
        ; Text drawing functions
        (drawtext text posX posY fontSize color)
        ; Timing-related functions
        (settargetfps fps)
        ; Image loading functions
        (loadimage fileName)
        (loadimageraw fileName width height format headerSize)
        (loadimagesvg fileNameOrString width height)
        (loadimageanim fileName frames)
        (loadimagefrommemory fileType fileData dataSize)
        (loadimagefromscreen)
        (isimageready image)
        (unloadimage image)
        (exportimage image fileName)
        (exportimagetomemory image fileType)
        (exportimageascode image fileName)
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

; Some Basic Colors

(define-macro (%mkcolor r g b a)
    `(let ((color (make-php-hash 4)))
        (bpc_php_hash_insert_elong_elong color #e0 ,r)
        (bpc_php_hash_insert_elong_elong color #e1 ,g)
        (bpc_php_hash_insert_elong_elong color #e2 ,b)
        (bpc_php_hash_insert_elong_elong color #e3 ,a)
        color))

(defconstant LIGHTGRAY  (%mkcolor #e200 #e200 #e200 #e255)) ; Light Gray
(defconstant GRAY       (%mkcolor #e130 #e130 #e130 #e255)) ; Gray
(defconstant DARKGRAY   (%mkcolor #e80 #e80 #e80 #e255))    ; Dark Gray
(defconstant YELLOW     (%mkcolor #e253 #e249 #e0 #e255))   ; Yellow
(defconstant GOLD       (%mkcolor #e255 #e203 #e0 #e255))   ; Gold
(defconstant ORANGE     (%mkcolor #e255 #e161 #e0 #e255))   ; Orange
(defconstant PINK       (%mkcolor #e255 #e109 #e194 #e255)) ; Pink
(defconstant RED        (%mkcolor #e230 #e41 #e55 #e255))   ; Red
(defconstant MAROON     (%mkcolor #e190 #e33 #e55 #e255))   ; Maroon
(defconstant GREEN      (%mkcolor #e0 #e228 #e48 #e255))    ; Green
(defconstant LIME       (%mkcolor #e0 #e158 #e47 #e255))    ; Lime
(defconstant DARKGREEN  (%mkcolor #e0 #e117 #e44 #e255))    ; Dark Green
(defconstant SKYBLUE    (%mkcolor #e102 #e191 #e255 #e255)) ; Sky Blue
(defconstant BLUE       (%mkcolor #e0 #e121 #e241 #e255))   ; Blue
(defconstant DARKBLUE   (%mkcolor #e0 #e82 #e172 #e255))    ; Dark Blue
(defconstant PURPLE     (%mkcolor #e200 #e122 #e255 #e255)) ; Purple
(defconstant VIOLET     (%mkcolor #e135 #e60 #e190 #e255))  ; Violet
(defconstant DARKPURPLE (%mkcolor #e112 #e31 #e126 #e255))  ; Dark Purple
(defconstant BEIGE      (%mkcolor #e211 #e176 #e131 #e255)) ; Beige
(defconstant BROWN      (%mkcolor #e127 #e106 #e79 #e255))  ; Brown
(defconstant DARKBROWN  (%mkcolor #e76 #e63 #e47 #e255))    ; Dark Brown

(defconstant WHITE      (%mkcolor #e255 #e255 #e255 #e255)) ; White
(defconstant BLACK      (%mkcolor #e0 #e0 #e0 #e255))       ; Black
(defconstant BLANK      (%mkcolor #e0 #e0 #e0 #e0))         ; Blank (Transparent)
(defconstant MAGENTA    (%mkcolor #e255 #e0 #e255 #e255))   ; Magenta
(defconstant RAYWHITE   (%mkcolor #e245 #e245 #e245 #e255)) ; My own White (raylib logo)

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

(defbuiltin (iswindowready)
    (pragma::bool "IsWindowReady()"))

(defbuiltin (iswindowfullscreen)
    (pragma::bool "IsWindowFullscreen()"))

(defbuiltin (iswindowhidden)
    (pragma::bool "IsWindowHidden()"))

(defbuiltin (iswindowminimized)
    (pragma::bool "IsWindowMinimized()"))

(defbuiltin (iswindowmaximized)
    (pragma::bool "IsWindowMaximized()"))

(defbuiltin (iswindowfocused)
    (pragma::bool "IsWindowFocused()"))

(defbuiltin (iswindowresized)
    (pragma::bool "IsWindowResized()"))

(defbuiltin (iswindowstate flag)
    (unless (elong? flag)
        (set! flag (mkelongw 'IsWindowState 1 flag)))
    (when flag
        (pragma::bool "IsWindowState((unsigned int)$1)"
                      ($belong->elong flag))))

(defbuiltin (setwindowstate flags)
    (unless (elong? flags)
        (set! flags (mkelongw 'SetWindowState 1 flags)))
    (when flags
        (pragma "SetWindowState((unsigned int)$1)"
                ($belong->elong flags)))
    NULL)

(defbuiltin (clearwindowstate flags)
    (unless (elong? flags)
        (set! flags (mkelongw 'ClearWindowState 1 flags)))
    (when flags
        (pragma "ClearWindowState((unsigned int)$1)"
                ($belong->elong flags)))
    NULL)

(defbuiltin (togglefullscreen)
    (pragma "ToggleFullscreen()")
    NULL)

(defbuiltin (toggleborderlesswindowed)
    (pragma "ToggleBorderlessWindowed()")
    NULL)

(defbuiltin (maximizewindow)
    (pragma "MaximizeWindow()")
    NULL)

(defbuiltin (minimizewindow)
    (pragma "MinimizeWindow()")
    NULL)

(defbuiltin (restorewindow)
    (pragma "RestoreWindow()")
    NULL)

(defbuiltin (setwindowicon image)
    (resource-valid-guard
        'SetWindowIcon
        (and (%Image? image)
             (%Image-intern image))
        "raylib Image"
        (begin
            (pragma "SetWindowIcon(*((Image *)$1))" ($obj->void* (%Image-intern image)))
            NULL)))

(defbuiltin (setwindowicons images)
    (set! images (mkhashw 'SetWindowIcons 1 images))
    (when images
        (let ((size (php-hash-size images)))
            (when (>fx size 0)
                (pragma "Image *images;
                         int count = 0")
                (pragma "images = (Image *)GC_MALLOC_ATOMIC(sizeof(Image) * $1)"
                        ($bint->int size))
                (let loop ((image (php-hash-reset images 'cont)))
                    (when image
                        (set! image (container-value image))
                        (resource-valid-guard
                            'SetWindowIcons
                            (and (%Image? image)
                                 (%Image-intern image))
                            "raylib Image"
                            (pragma "images[count++] = *((Image *)$1)" ($obj->void* (%Image-intern image))))
                        (loop (php-hash-advance images 'cont))))
                (pragma "SetWindowIcons(images, count)")
                NULL))))

(defbuiltin (setwindowtitle title)
    (unless (string? title)
        (set! title (mkstrw 'SetWindowTitle 1 title)))
    (when title
        (pragma "SetWindowTitle($1)" ($bstring->string title))
        NULL))

(defbuiltin (setwindowposition x y)
    (unless (elong? x)
        (set! x (mkelongw 'SetWindowPosition 1 x)))
    (when x
        (unless (elong? y)
            (set! y (mkelongw 'SetWindowPosition 2 y)))
        (when y
            (pragma "SetWindowPosition((int)$1, (int)$2)"
                    ($belong->elong x)
                    ($belong->elong y))
            NULL)))

(defbuiltin (setwindowmonitor monitor)
    (unless (elong? monitor)
        (set! monitor (mkelongw 'SetWindowMonitor 1 monitor)))
    (when monitor
        (pragma "SetWindowMonitor((int)$1)"
                ($belong->elong monitor))
        NULL))

(defbuiltin (setwindowminsize width height)
    (unless (elong? width)
        (set! width (mkelongw 'SetWindowMinSize 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'SetWindowMinSize 2 height)))
        (when height
            (pragma "SetWindowMinSize((int)$1, (int)$2)"
                    ($belong->elong width)
                    ($belong->elong height))
            NULL)))

(defbuiltin (setwindowmaxsize width height)
    (unless (elong? width)
        (set! width (mkelongw 'SetWindowMaxSize 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'SetWindowMaxSize 2 height)))
        (when height
            (pragma "SetWindowMaxSize((int)$1, (int)$2)"
                    ($belong->elong width)
                    ($belong->elong height))
            NULL)))

(defbuiltin (setwindowsize width height)
    (unless (elong? width)
        (set! width (mkelongw 'SetWindowSize 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'SetWindowSize 2 height)))
        (when height
            (pragma "SetWindowSize((int)$1, (int)$2)"
                    ($belong->elong width)
                    ($belong->elong height))
            NULL)))

(defbuiltin (setwindowopacity opacity)
    (unless (flonum? opacity)
        (set! opacity (mkflonumw 'SetWindowOpacity 1 opacity)))
    (when opacity
        (pragma "SetWindowOpacity((float)$1)"
                ($real->double opacity))
        NULL))

(defbuiltin (setwindowfocused)
    (pragma "SetWindowFocused()")
    NULL)

(defbuiltin (getscreenwidth)
    (pragma::elong "GetScreenWidth()"))

(defbuiltin (getscreenheight)
    (pragma::elong "GetScreenHeight()"))

(defbuiltin (getrenderwidth)
    (pragma::elong "GetRenderWidth()"))

(defbuiltin (getrenderheight)
    (pragma::elong "GetRenderHeight()"))

(defbuiltin (getmonitorcount)
    (pragma::elong "GetMonitorCount()"))

(defbuiltin (getcurrentmonitor)
    (pragma::elong "GetCurrentMonitor()"))

(define-macro (%mkvector2 x y)
    `(let ((v2hash (make-php-hash 2)))
        (bpc_php_hash_insert_elong_obj v2hash #e0 ,x)
        (bpc_php_hash_insert_elong_obj v2hash #e1 ,y)
        v2hash))

(defbuiltin (getmonitorposition monitor)
    (unless (elong? monitor)
        (set! monitor (mkelongw 'GetMonitorPosition 1 monitor)))
    (when monitor
        (pragma "Vector2 v2")
        (pragma "v2 = GetMonitorPosition((int)$1)" ($belong->elong monitor))
        (%mkvector2 (pragma::double "v2.x") (pragma::double "v2.y"))))

(defbuiltin (getmonitorwidth monitor)
    (unless (elong? monitor)
        (set! monitor (mkelongw 'GetMonitorWidth 1 monitor)))
    (when monitor
        (pragma::elong "GetMonitorWidth((int)$1)" ($belong->elong monitor))))

(defbuiltin (getmonitorheight monitor)
    (unless (elong? monitor)
        (set! monitor (mkelongw 'GetMonitorHeight 1 monitor)))
    (when monitor
        (pragma::elong "GetMonitorHeight((int)$1)" ($belong->elong monitor))))

(defbuiltin (getmonitorphysicalwidth monitor)
    (unless (elong? monitor)
        (set! monitor (mkelongw 'GetMonitorPhysicalWidth 1 monitor)))
    (when monitor
        (pragma::elong "GetMonitorPhysicalWidth((int)$1)" ($belong->elong monitor))))

(defbuiltin (getmonitorphysicalheight monitor)
    (unless (elong? monitor)
        (set! monitor (mkelongw 'GetMonitorPhysicalHeight 1 monitor)))
    (when monitor
        (pragma::elong "GetMonitorPhysicalHeight((int)$1)" ($belong->elong monitor))))

(defbuiltin (getmonitorrefreshrate monitor)
    (unless (elong? monitor)
        (set! monitor (mkelongw 'GetMonitorRefreshRate 1 monitor)))
    (when monitor
        (pragma::elong "GetMonitorRefreshRate((int)$1)" ($belong->elong monitor))))

(defbuiltin (getwindowposition)
    (pragma "Vector2 v2 = GetWindowPosition()")
    (%mkvector2 (pragma::double "v2.x") (pragma::double "v2.y")))

(defbuiltin (getwindowscaledpi)
    (pragma "Vector2 v2 = GetWindowScaleDPI()")
    (%mkvector2 (pragma::double "v2.x") (pragma::double "v2.y")))

(defbuiltin (getmonitorname monitor)
    (unless (elong? monitor)
        (set! monitor (mkelongw 'GetMonitorName 1 monitor)))
    (when monitor
        (pragma::string "(char *)GetMonitorName((int)$1)" ($belong->elong monitor))))

(defbuiltin (setclipboardtext text)
    (unless (string? text)
        (set! text (mkstrw 'SetClipboardText 1 text)))
    (when text
        (pragma "SetClipboardText($1)" ($bstring->string text))
        NULL))

(defbuiltin (getclipboardtext)
    (pragma::string "(char *)GetClipboardText()"))

(defbuiltin (enableeventwaiting)
    (pragma "EnableEventWaiting()")
    NULL)

(defbuiltin (disableeventwaiting)
    (pragma "DisableEventWaiting()")
    NULL)

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
                                        (php-error ,func-name "() expects parameter " ,arg-idx " array index 0 to be integer, " (get-php-datatype r 'arg-parsing) " given"))))
                        (when r
                            (unless (elong? g)
                                (set! g (or (mkelong g 'arg-parsing)
                                            (php-error ,func-name "() expects parameter " ,arg-idx " array index 1 to be integer, " (get-php-datatype g 'arg-parsing) " given"))))
                            (when g
                                (unless (elong? b)
                                    (set! b (or (mkelong b 'arg-parsing)
                                                (php-error ,func-name "() expects parameter " ,arg-idx " array index 2 to be integer, " (get-php-datatype b 'arg-parsing) " given"))))
                                (when b
                                    (unless (elong? a)
                                        (set! a (or (mkelong a 'arg-parsing)
                                                    (php-error ,func-name "() expects parameter " ,arg-idx " array index 3 to be integer, " (get-php-datatype a 'arg-parsing) " given"))))
                                    (when a
                                        (pragma ,(string-append c ".r = (unsigned char)$1") ($belong->elong r))
                                        (pragma ,(string-append c ".g = (unsigned char)$1") ($belong->elong g))
                                        (pragma ,(string-append c ".b = (unsigned char)$1") ($belong->elong b))
                                        (pragma ,(string-append c ".a = (unsigned char)$1") ($belong->elong a))
                                        #t)))))
                    (php-error ,func-name "() expects parameter " ,arg-idx " to be array with 4(rgba order) color values, " size " given"))))))

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

; Image loading functions

(defresource %Image "raylib Image" intern)

(defbuiltin (loadimage fileName)
    (set! fileName (mkpathw 'LoadImage 1 fileName))
    (when fileName
        (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
        (pragma "*im = LoadImage($1)" ($bstring->string fileName))
        (make-resource %Image (pragma::void* "im"))))

(defbuiltin (loadimageraw fileName width height format headerSize)
    (set! fileName (mkpathw 'LoadImageRaw 1 fileName))
    (when fileName
        (unless (elong? width)
            (set! width (mkelongw 'LoadImageRaw 2 width)))
        (when width
            (unless (elong? height)
                (set! height (mkelongw 'LoadImageRaw 3 height)))
            (when height
                (unless (elong? format)
                    (set! format (mkelongw 'LoadImageRaw 4 format)))
                (when format
                    (unless (elong? headerSize)
                        (set! headerSize (mkelongw 'LoadImageRaw 5 headerSize)))
                    (when headerSize
                        (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                        (pragma "*im = LoadImageRaw($1, (int)$2, (int)$3, (int)$4, (int)$5)"
                                ($bstring->string fileName)
                                ($belong->elong width)
                                ($belong->elong height)
                                ($belong->elong format)
                                ($belong->elong headerSize))
                        (make-resource %Image (pragma::void* "im"))))))))

(defbuiltin (loadimagesvg fileNameOrString width height)
    (unless (string? fileNameOrString)
        (set! fileNameOrString (mkstrw 'LoadImageSvg 1 fileNameOrString)))
    (when fileNameOrString
        (unless (elong? width)
            (set! width (mkelongw 'LoadImageSvg 2 width)))
        (when width
            (unless (elong? height)
                (set! height (mkelongw 'LoadImageSvg 3 height)))
            (when height
                (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                (pragma "*im = LoadImageSvg($1, (int)$2, (int)$3)"
                        ($bstring->string fileNameOrString)
                        ($belong->elong width)
                        ($belong->elong height))
                (make-resource %Image (pragma::void* "im"))))))

(defbuiltin (loadimageanim fileName (ref . frames))
    (set! fileName (mkpathw 'LoadImageAnim 1 fileName))
    (when fileName
        (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
        (pragma "int frames")
        (pragma "*im = LoadImageAnim($1, &frames)" ($bstring->string fileName))
        (container-value-set! frames (pragma::elong "frames"))
        (make-resource %Image (pragma::void* "im"))))

(defbuiltin (loadimagefrommemory fileType fileData dataSize)
    (unless (string? fileType)
        (set! fileType (mkstrw 'LoadImageFromMemory 1 fileType)))
    (when fileType
        (unless (string? fileData)
            (set! fileData (mkstrw 'LoadImageFromMemory 2 fileData)))
        (when fileData
            (unless (elong? dataSize)
                (set! dataSize (mkelongw 'LoadImageFromMemory 3 dataSize)))
            (when dataSize
                (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                (pragma "*im = LoadImageFromMemory($1, $2, (int)$3)"
                        ($bstring->string fileType)
                        ($bstring->string fileData)
                        ($belong->elong dataSize))
                (make-resource %Image (pragma::void* "im"))))))

; TODO LoadImageFromTexture(Texture2D texture)

(defbuiltin (loadimagefromscreen)
    (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
    (pragma "*im = LoadImageFromScreen()")
    (make-resource %Image (pragma::void* "im")))

(defbuiltin (isimageready image)
    (resource-valid-guard
        'IsImageReady
        (and (%Image? image)
             (%Image-intern image))
        "raylib Image"
        (pragma::bool "IsImageReady(*((Image *)$1))" ($obj->void* (%Image-intern image)))))

(defbuiltin (unloadimage image)
    (resource-valid-guard
        'UnloadImage
        (and (%Image? image)
             (%Image-intern image))
        "raylib Image"
        (begin
            (pragma "UnloadImage(*(((Image *)$1)))" ($obj->void* (%Image-intern image)))
            (%Image-intern-set! image #f)
            (%Image-description-set! image #f)
            NULL)))

(defbuiltin (exportimage image fileName)
    (resource-valid-guard
        'ExportImage
        (and (%Image? image)
             (%Image-intern image))
        "raylib Image"
        (begin
            (set! fileName (mkpathw 'ExportImage 2 fileName))
            (when fileName
                (pragma::bool "ExportImage(*((Image *)$1), $2)"
                              ($obj->void* (%Image-intern image))
                              ($bstring->string fileName))))))

(defbuiltin (exportimagetomemory image fileType)
    (resource-valid-guard
        'ExportImageToMemory
        (and (%Image? image)
             (%Image-intern image))
        "raylib Image"
        (begin
            (unless (string? fileType)
                (set! fileType (mkstrw 'ExportImageToMemory 2 fileType)))
            (when fileType
                (pragma "unsigned char *fileData;
                         int dataSize;
                         obj_t ret = BNIL")
                (pragma "fileData = ExportImageToMemory(*((Image *)$1), $2, &dataSize)"
                        ($obj->void* (%Image-intern image))
                        ($bstring->string fileType))
                (pragma "if (fileData) {
                            ret = string_to_bstring_len(fileData, dataSize);
                            RL_FREE(fileData);
                         }")
                (pragma::obj "ret")))))

(defbuiltin (exportimageascode image fileName)
    (resource-valid-guard
        'ExportImageAsCode
        (and (%Image? image)
             (%Image-intern image))
        "raylib Image"
        (begin
            (set! fileName (mkpathw 'ExportImageAsCode 2 fileName))
            (when fileName
                (pragma::bool "ExportImageAsCode(*((Image *)$1), $2)"
                              ($obj->void* (%Image-intern image))
                              ($bstring->string fileName))))))
