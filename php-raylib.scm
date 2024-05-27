(module php-raylib
    (load (php-macros "/usr/local/lib/php-macros.scm"))
    (load (raylib-macros "raylib-macros.scm"))
    (extern
        (include "raylib.h")
        (include "bpc.h"))
    (import
        php-raymath
        php-rlgl)
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
        GRAY
        DARKGRAY
        YELLOW
        GOLD
        ORANGE
        PINK
        RED
        MAROON
        GREEN
        LIME
        DARKGREEN
        SKYBLUE
        BLUE
        DARKBLUE
        PURPLE
        VIOLET
        DARKPURPLE
        BEIGE
        BROWN
        DARKBROWN
        WHITE
        BLACK
        BLANK
        MAGENTA
        RAYWHITE
        ; Keyboard keys (US keyboard layout)
        KEY_NULL
        ; Alphanumeric keys
        KEY_APOSTROPHE
        KEY_COMMA
        KEY_MINUS
        KEY_PERIOD
        KEY_SLASH
        KEY_ZERO
        KEY_ONE
        KEY_TWO
        KEY_THREE
        KEY_FOUR
        KEY_FIVE
        KEY_SIX
        KEY_SEVEN
        KEY_EIGHT
        KEY_NINE
        KEY_SEMICOLON
        KEY_EQUAL
        KEY_A
        KEY_B
        KEY_C
        KEY_D
        KEY_E
        KEY_F
        KEY_G
        KEY_H
        KEY_I
        KEY_J
        KEY_K
        KEY_L
        KEY_M
        KEY_N
        KEY_O
        KEY_P
        KEY_Q
        KEY_R
        KEY_S
        KEY_T
        KEY_U
        KEY_V
        KEY_W
        KEY_X
        KEY_Y
        KEY_Z
        KEY_LEFT_BRACKET
        KEY_BACKSLASH
        KEY_RIGHT_BRACKET
        KEY_GRAVE
        ; Function keys
        KEY_SPACE
        KEY_ESCAPE
        KEY_ENTER
        KEY_TAB
        KEY_BACKSPACE
        KEY_INSERT
        KEY_DELETE
        KEY_RIGHT
        KEY_LEFT
        KEY_DOWN
        KEY_UP
        KEY_PAGE_UP
        KEY_PAGE_DOWN
        KEY_HOME
        KEY_END
        KEY_CAPS_LOCK
        KEY_SCROLL_LOCK
        KEY_NUM_LOCK
        KEY_PRINT_SCREEN
        KEY_PAUSE
        KEY_F1
        KEY_F2
        KEY_F3
        KEY_F4
        KEY_F5
        KEY_F6
        KEY_F7
        KEY_F8
        KEY_F9
        KEY_F10
        KEY_F11
        KEY_F12
        KEY_LEFT_SHIFT
        KEY_LEFT_CONTROL
        KEY_LEFT_ALT
        KEY_LEFT_SUPER
        KEY_RIGHT_SHIFT
        KEY_RIGHT_CONTROL
        KEY_RIGHT_ALT
        KEY_RIGHT_SUPER
        KEY_KB_MENU
        ; Keypad keys
        KEY_KP_0
        KEY_KP_1
        KEY_KP_2
        KEY_KP_3
        KEY_KP_4
        KEY_KP_5
        KEY_KP_6
        KEY_KP_7
        KEY_KP_8
        KEY_KP_9
        KEY_KP_DECIMAL
        KEY_KP_DIVIDE
        KEY_KP_MULTIPLY
        KEY_KP_SUBTRACT
        KEY_KP_ADD
        KEY_KP_ENTER
        KEY_KP_EQUAL
        ; Android key buttons
        KEY_BACK
        KEY_MENU
        KEY_VOLUME_UP
        KEY_VOLUME_DOWN
        ; Mouse buttons
        MOUSE_BUTTON_LEFT
        MOUSE_BUTTON_RIGHT
        MOUSE_BUTTON_MIDDLE
        MOUSE_BUTTON_SIDE
        MOUSE_BUTTON_EXTRA
        MOUSE_BUTTON_FORWARD
        MOUSE_BUTTON_BACK
        ; Mouse cursor
        MOUSE_CURSOR_DEFAULT
        MOUSE_CURSOR_ARROW
        MOUSE_CURSOR_IBEAM
        MOUSE_CURSOR_CROSSHAIR
        MOUSE_CURSOR_POINTING_HAND
        MOUSE_CURSOR_RESIZE_EW
        MOUSE_CURSOR_RESIZE_NS
        MOUSE_CURSOR_RESIZE_NWSE
        MOUSE_CURSOR_RESIZE_NESW
        MOUSE_CURSOR_RESIZE_ALL
        MOUSE_CURSOR_NOT_ALLOWED
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
        ; Cursor-related functions
        (showcursor)
        (hidecursor)
        (iscursorhidden)
        (enablecursor)
        (disablecursor)
        (iscursoronscreen)
        ; Drawing-related functions
        (clearbackground color)
        (begindrawing)
        (enddrawing)
        (beginmode2d camera)
        (endmode2d)
        (beginmode3d camera)
        (endmode3d)
        (begintexturemode target)
        (endtexturemode)
        ; Text drawing functions
        (drawfps posX posY)
        (drawtext text posX posY fontSize color)
        ; Screen-space-related functions
        (getmouseray mousePosition camera)
        (getcameramatrix camera)
        (getcameramatrix2d camera)
        (getworldtoscreen position camera)
        (getscreentoworld2d position camera)
        (getworldtoscreenex position camera width height)
        (getworldtoscreen2d position camera)
        ; Timing-related functions
        (settargetfps fps)
        (getframetime)
        (gettime)
        (getfps)
        ; Basic shapes drawing functions
        (drawpixel posX posY color)
        (drawpixelv position color)
        (drawline startPosX startPosY endPosX endPosY color)
        (drawlinev startPos endPos color)
        (drawlineex startPos endPos thick color)
        (drawlinestrip points color)
        (drawlinebezier startPos endPos thick color)
        (drawcircle centerX centerY radius color)
        (drawcirclesector center radius startAngle endAngle segments color)
        (drawcirclesectorlines center radius startAngle endAngle segments color)
        (drawcirclegradient centerX centerY radius color1 color2)
        (drawcirclev center radius color)
        (drawcirclelines centerX centerY radius color)
        (drawcirclelinesv center radius color)
        (drawellipse centerX centerY radiusH radiusV color)
        (drawellipselines centerX centerY radiusH radiusV color)
        (drawring center innerRadius outerRadius startAngle endAngle segments color)
        (drawringlines center innerRadius outerRadius startAngle endAngle segments color)
        (drawrectangle posX posY width height color)
        (drawrectanglev position size color)
        (drawrectanglerec rec color)
        (drawrectanglepro rec origin rotation color)
        (drawrectanglegradientv posX posY width height color1 color2)
        (drawrectanglegradienth posX posY width height color1 color2)
        (drawrectanglegradientex rec col1 col2 col3 col4)
        (drawrectanglelines posX posY width height color)
        (drawrectanglelinesex rec lineThick color)
        (drawrectanglerounded rec roundness segments color)
        (drawrectangleroundedlines rec roundness segments lineThick color)
        (drawtriangle v1 v2 v3 color)
        (drawtrianglelines v1 v2 v3 color)
        (drawtrianglefan points color)
        (drawtrianglestrip points color)
        (drawpoly center sides radius rotation color)
        (drawpolylines center sides radius rotation color)
        (drawpolylinesex center sides radius rotation lineThick color)
        ; Image loading functions
        (loadimage fileName)
        (loadimageraw fileName width height format headerSize)
        (loadimagesvg fileNameOrString width height)
        (loadimageanim fileName frames)
        (loadimagefrommemory fileType fileData)
        (loadimagefromtexture texture)
        (loadimagefromscreen)
        (isimageready image)
        (unloadimage image)
        (exportimage image fileName)
        (exportimagetomemory image fileType)
        (exportimageascode image fileName)
        ; Image generation functions
        (genimagecolor width height color)
        (genimagegradientlinear width height direction start end)
        (genimagegradientradial width height density inner outer)
        (genimagegradientsquare width height density inner outer)
        (genimagechecked width height checksX checksY col1 col2)
        (genimagewhitenoise width height factor)
        (genimageperlinnoise width height offsetX offsetY scale)
        (genimagecellular width height tileSize)
        (genimagetext width height text)
        ; Image manipulation functions
        (imagecopy image)
        (imagefromimage image rec)
        (imagetext text fontSize color)
        (imagetextex font text fontSize spacing tint)
        (imageformat image newFormat)
        (imagetopot image fill)
        (imagecrop image crop)
        (imagealphacrop image threshold)
        (imagealphaclear image color threshold)
        (imagealphamask image alphaMask)
        (imagealphapremultiply image)
        (imageblurgaussian image blurSize)
        (imageresize image newWidth newHeight)
        (imageresizenn image newWidth newHeight)
        (imageresizecanvas image newWidth newHeight offsetX offsetY fill)
        (imagemipmaps image)
        (imagedither image rBpp gBpp bBpp aBpp)
        (imageflipvertical image)
        (imagefliphorizontal image)
        (imagerotate image degrees)
        (imagerotatecw image)
        (imagerotateccw image)
        (imagecolortint image color)
        (imagecolorinvert image)
        (imagecolorgrayscale image)
        (imagecolorcontrast image contrast)
        (imagecolorbrightness image brightness)
        (imagecolorreplace image color replace)
        (loadimagecolors image)
        (loadimagepalette image maxPaletteSize colorCount)
        (getimagealphaborder image threshold)
        (getimagecolor image x y)
        ; Texture loading functions
        (loadtexture fileName)
        (loadtexturefromimage image)
        (loadtexturecubemap image layout)
        (loadrendertexture width height)
        (istextureready texture)
        (unloadtexture texture)
        (isrendertextureready target)
        (unloadrendertexture target)
        ; Color/pixel related functions
        (fade color alpha)
        (colortoint color)
        (colornormalize color)
        (colorfromnormalized normalized)
        (colortohsv color)
        (colorfromhsv hue saturation value)
        (colortint color tint)
        (colorbrightness color factor)
        (colorcontrast color contrast)
        (coloralpha color alpha)
        (coloralphablend dst src tint)
        (getcolor hexValue)
        (getpixeldatasize width height format)
        ; Font loading/unloading functions
        (getfontdefault)
        (loadfont fileName)
        (loadfontex fileName fontSize codepoints)
        (loadfontfromimage image key firstChar)
        (loadfontfrommemory fileType fileData fontSize codepoints)
        (isfontready font)
        (loadfontdata fileData fontSize codepoints type)
        (genimagefontatlas glyphs glyphRecs fontSize padding packMethod)
        (unloadfontdata glyphs)
        (unloadfont font)
        (exportfontascode font fileName)
        ; Input-related functions: keyboard
        (iskeypressed key)
        (iskeypressedrepeat key)
        (iskeydown key)
        (iskeyreleased key)
        (iskeyup key)
        (getkeypressed)
        (getcharpressed)
        (setexitkey key)
        ; Input-related functions: mouse
        (ismousebuttonpressed button)
        (ismousebuttondown button)
        (ismousebuttonreleased button)
        (ismousebuttonup button)
        (getmousex)
        (getmousey)
        (getmouseposition)
        (getmousedelta)
        (setmouseposition x y)
        (setmouseoffset offsetX offsetY)
        (setmousescale scaleX scaleY)
        (getmousewheelmove)
        (getmousewheelmovev)
        (setmousecursor cursor)
        ; Random values generation functions
        (setrandomseed seed)
        (getrandomvalue min max)
        (loadrandomsequence count min max)
        ; Basic geometric 3D shapes drawing functions
        (drawline3d startPos endPos color)
        (drawpoint3d position color)
        (drawcircle3d center radius rotationAxis rotationAngle color)
        (drawtriangle3d v1 v2 v3 color)
        (drawtrianglestrip3d points color)
        (drawcube position width height length color)
        (drawcubev position size color)
        (drawcubewires position width height length color)
        (drawcubewiresv position size color)
        (drawsphere centerPos radius color)
        (drawsphereex centerPos radius rings slices color)
        (drawspherewires centerPos radius rings slices color)
        (drawcylinder position radiusTop radiusBottom height slices color)
        (drawcylinderex startPos endPos startRadius endRadius sides color)
        (drawcylinderwires position radiusTop radiusBottom height slices color)
        (drawcylinderwiresex startPos endPos startRadius endRadius sides color)
        (drawcapsule startPos endPos radius slices rings color)
        (drawcapsulewires startPos endPos radius slices rings color)
        (drawplane centerPos size color)
        (drawray ray color)
        (drawgrid slices spacing)
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

; Keyboard keys (US keyboard layout)

(defconstant KEY_NULL #e0)        ; Key: NULL, used for no key pressed
; Alphanumeric keys
(defconstant KEY_APOSTROPHE #e39)   ; Key: '
(defconstant KEY_COMMA      #e44)   ; Key: ,
(defconstant KEY_MINUS      #e45)   ; Key: -
(defconstant KEY_PERIOD     #e46)   ; Key: .
(defconstant KEY_SLASH      #e47)   ; Key: /
(defconstant KEY_ZERO       #e48)   ; Key: 0
(defconstant KEY_ONE        #e49)   ; Key: 1
(defconstant KEY_TWO        #e50)   ; Key: 2
(defconstant KEY_THREE      #e51)   ; Key: 3
(defconstant KEY_FOUR       #e52)   ; Key: 4
(defconstant KEY_FIVE       #e53)   ; Key: 5
(defconstant KEY_SIX        #e54)   ; Key: 6
(defconstant KEY_SEVEN      #e55)   ; Key: 7
(defconstant KEY_EIGHT      #e56)   ; Key: 8
(defconstant KEY_NINE       #e57)   ; Key: 9
(defconstant KEY_SEMICOLON  #e59)   ; Key: ;
(defconstant KEY_EQUAL      #e61)   ; Key: =
(defconstant KEY_A          #e65)   ; Key: A | a
(defconstant KEY_B          #e66)   ; Key: B | b
(defconstant KEY_C          #e67)   ; Key: C | c
(defconstant KEY_D          #e68)   ; Key: D | d
(defconstant KEY_E          #e69)   ; Key: E | e
(defconstant KEY_F          #e70)   ; Key: F | f
(defconstant KEY_G          #e71)   ; Key: G | g
(defconstant KEY_H          #e72)   ; Key: H | h
(defconstant KEY_I          #e73)   ; Key: I | i
(defconstant KEY_J          #e74)   ; Key: J | j
(defconstant KEY_K          #e75)   ; Key: K | k
(defconstant KEY_L          #e76)   ; Key: L | l
(defconstant KEY_M          #e77)   ; Key: M | m
(defconstant KEY_N          #e78)   ; Key: N | n
(defconstant KEY_O          #e79)   ; Key: O | o
(defconstant KEY_P          #e80)   ; Key: P | p
(defconstant KEY_Q          #e81)   ; Key: Q | q
(defconstant KEY_R          #e82)   ; Key: R | r
(defconstant KEY_S          #e83)   ; Key: S | s
(defconstant KEY_T          #e84)   ; Key: T | t
(defconstant KEY_U          #e85)   ; Key: U | u
(defconstant KEY_V          #e86)   ; Key: V | v
(defconstant KEY_W          #e87)   ; Key: W | w
(defconstant KEY_X          #e88)   ; Key: X | x
(defconstant KEY_Y          #e89)   ; Key: Y | y
(defconstant KEY_Z          #e90)   ; Key: Z | z
(defconstant KEY_LEFT_BRACKET   #e91)   ; Key: [
(defconstant KEY_BACKSLASH      #e92)   ; Key: '\'
(defconstant KEY_RIGHT_BRACKET  #e93)   ; Key: ]
(defconstant KEY_GRAVE          #e96)   ; Key: `
; Function keys
(defconstant KEY_SPACE          #e32)       ; Key: Space
(defconstant KEY_ESCAPE         #e256)      ; Key: Esc
(defconstant KEY_ENTER          #e257)      ; Key: Enter
(defconstant KEY_TAB            #e258)      ; Key: Tab
(defconstant KEY_BACKSPACE      #e259)      ; Key: Backspace
(defconstant KEY_INSERT         #e260)      ; Key: Ins
(defconstant KEY_DELETE         #e261)      ; Key: Del
(defconstant KEY_RIGHT          #e262)      ; Key: Cursor right
(defconstant KEY_LEFT           #e263)      ; Key: Cursor left
(defconstant KEY_DOWN           #e264)      ; Key: Cursor down
(defconstant KEY_UP             #e265)      ; Key: Cursor up
(defconstant KEY_PAGE_UP        #e266)      ; Key: Page up
(defconstant KEY_PAGE_DOWN      #e267)      ; Key: Page down
(defconstant KEY_HOME           #e268)      ; Key: Home
(defconstant KEY_END            #e269)      ; Key: End
(defconstant KEY_CAPS_LOCK      #e280)      ; Key: Caps lock
(defconstant KEY_SCROLL_LOCK    #e281)      ; Key: Scroll down
(defconstant KEY_NUM_LOCK       #e282)      ; Key: Num lock
(defconstant KEY_PRINT_SCREEN   #e283)      ; Key: Print screen
(defconstant KEY_PAUSE          #e284)      ; Key: Pause
(defconstant KEY_F1             #e290)      ; Key: F1
(defconstant KEY_F2             #e291)      ; Key: F2
(defconstant KEY_F3             #e292)      ; Key: F3
(defconstant KEY_F4             #e293)      ; Key: F4
(defconstant KEY_F5             #e294)      ; Key: F5
(defconstant KEY_F6             #e295)      ; Key: F6
(defconstant KEY_F7             #e296)      ; Key: F7
(defconstant KEY_F8             #e297)      ; Key: F8
(defconstant KEY_F9             #e298)      ; Key: F9
(defconstant KEY_F10            #e299)      ; Key: F10
(defconstant KEY_F11            #e300)      ; Key: F11
(defconstant KEY_F12            #e301)      ; Key: F12
(defconstant KEY_LEFT_SHIFT     #e340)      ; Key: Shift left
(defconstant KEY_LEFT_CONTROL   #e341)      ; Key: Control left
(defconstant KEY_LEFT_ALT       #e342)      ; Key: Alt left
(defconstant KEY_LEFT_SUPER     #e343)      ; Key: Super left
(defconstant KEY_RIGHT_SHIFT    #e344)      ; Key: Shift right
(defconstant KEY_RIGHT_CONTROL  #e345)      ; Key: Control right
(defconstant KEY_RIGHT_ALT      #e346)      ; Key: Alt right
(defconstant KEY_RIGHT_SUPER    #e347)      ; Key: Super right
(defconstant KEY_KB_MENU        #e348)      ; Key: KB menu
; Keypad keys
(defconstant KEY_KP_0           #e320)      ; Key: Keypad 0
(defconstant KEY_KP_1           #e321)      ; Key: Keypad 1
(defconstant KEY_KP_2           #e322)      ; Key: Keypad 2
(defconstant KEY_KP_3           #e323)      ; Key: Keypad 3
(defconstant KEY_KP_4           #e324)      ; Key: Keypad 4
(defconstant KEY_KP_5           #e325)      ; Key: Keypad 5
(defconstant KEY_KP_6           #e326)      ; Key: Keypad 6
(defconstant KEY_KP_7           #e327)      ; Key: Keypad 7
(defconstant KEY_KP_8           #e328)      ; Key: Keypad 8
(defconstant KEY_KP_9           #e329)      ; Key: Keypad 9
(defconstant KEY_KP_DECIMAL     #e330)      ; Key: Keypad .
(defconstant KEY_KP_DIVIDE      #e331)      ; Key: Keypad /
(defconstant KEY_KP_MULTIPLY    #e332)      ; Key: Keypad *
(defconstant KEY_KP_SUBTRACT    #e333)      ; Key: Keypad -
(defconstant KEY_KP_ADD         #e334)      ; Key: Keypad +
(defconstant KEY_KP_ENTER       #e335)      ; Key: Keypad Enter
(defconstant KEY_KP_EQUAL       #e336)      ; Key: Keypad =
; Android key buttons
(defconstant KEY_BACK           #e4)        ; Key: Android back button
(defconstant KEY_MENU           #e82)       ; Key: Android menu button
(defconstant KEY_VOLUME_UP      #e24)       ; Key: Android volume up button
(defconstant KEY_VOLUME_DOWN    #e25)

; Mouse buttons

(defconstant MOUSE_BUTTON_LEFT    #e0)      ; Mouse button left
(defconstant MOUSE_BUTTON_RIGHT   #e1)      ; Mouse button right
(defconstant MOUSE_BUTTON_MIDDLE  #e2)      ; Mouse button middle (pressed wheel)
(defconstant MOUSE_BUTTON_SIDE    #e3)      ; Mouse button side (advanced mouse device)
(defconstant MOUSE_BUTTON_EXTRA   #e4)      ; Mouse button extra (advanced mouse device)
(defconstant MOUSE_BUTTON_FORWARD #e5)      ; Mouse button forward (advanced mouse device)
(defconstant MOUSE_BUTTON_BACK    #e6)      ; Mouse button back (advanced mouse device)

; Mouse cursor

(defconstant MOUSE_CURSOR_DEFAULT       #e0)    ; Default pointer shape
(defconstant MOUSE_CURSOR_ARROW         #e1)    ; Arrow shape
(defconstant MOUSE_CURSOR_IBEAM         #e2)    ; Text writing cursor shape
(defconstant MOUSE_CURSOR_CROSSHAIR     #e3)    ; Cross shape
(defconstant MOUSE_CURSOR_POINTING_HAND #e4)    ; Pointing hand cursor
(defconstant MOUSE_CURSOR_RESIZE_EW     #e5)    ; Horizontal resize/move arrow shape
(defconstant MOUSE_CURSOR_RESIZE_NS     #e6)    ; Vertical resize/move arrow shape
(defconstant MOUSE_CURSOR_RESIZE_NWSE   #e7)    ; Top-left to bottom-right diagonal resize/move arrow shape
(defconstant MOUSE_CURSOR_RESIZE_NESW   #e8)    ; The top-right to bottom-left diagonal resize/move arrow shape
(defconstant MOUSE_CURSOR_RESIZE_ALL    #e9)    ; The omnidirectional resize/move cursor shape
(defconstant MOUSE_CURSOR_NOT_ALLOWED   #e10)   ; The operation-not-allowed shape

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

(define-macro (%ensure-image func-name . code)
    `(resource-valid-guard
        ,func-name
        (and (%Image? image)
             (%Image-intern image))
        "raylib Image"
        (begin
            (pragma "Image *im")
            (pragma "im = (Image *)$1" ($obj->void* (%Image-intern image)))
            ,@code
            )))

(define-macro (%ensure-font func-name . code)
    `(resource-valid-guard
        ,func-name
        (and (%Font? font)
             (%Font-intern font))
        "raylib Font"
        (begin
            (pragma "Font *font")
            (pragma "font = (Font *)$1" ($obj->void* (%Font-intern font)))
            ,@code
            )))

(define-macro (%ensure-glyphs func-name . code)
    `(resource-valid-guard
        ,func-name
        (and (%Glyphs? glyphs)
             (%Glyphs-glyphs glyphs))
        "raylib Glyphs"
        (begin
            (pragma "GlyphInfo *glyphs;
                     int glyphCount")
            (pragma "glyphs = (GlyphInfo *)$1;
                     glyphCount = $2"
                    ($obj->void* (%Glyphs-glyphs glyphs))
                    ($bint->int (%Glyphs-glyphCount glyphs)))
            ,@code
            )))

(defbuiltin (setwindowicon image)
    (%ensure-image
        'SetWindowIcon
        (begin
            (pragma "SetWindowIcon(*im)")
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
                        (%ensure-image
                            'SetWindowIcons
                            (pragma "images[count++] = *im"))
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

(defbuiltin (getmonitorposition monitor)
    (unless (elong? monitor)
        (set! monitor (mkelongw 'GetMonitorPosition 1 monitor)))
    (when monitor
        (pragma "Vector2 v2")
        (pragma "v2 = GetMonitorPosition((int)$1)" ($belong->elong monitor))
        (%mkvector2-v "v2")))

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
    (%mkvector2-v "v2"))

(defbuiltin (getwindowscaledpi)
    (pragma "Vector2 v2 = GetWindowScaleDPI()")
    (%mkvector2-v "v2"))

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

; Cursor-related functions

(defbuiltin (showcursor)
    (pragma "ShowCursor()")
    NULL)

(defbuiltin (hidecursor)
    (pragma "HideCursor()")
    NULL)

(defbuiltin (iscursorhidden)
    (pragma "IsCursorHidden()")
    NULL)

(defbuiltin (enablecursor)
    (pragma "EnableCursor()")
    NULL)

(defbuiltin (disablecursor)
    (pragma "DisableCursor()")
    NULL)

(defbuiltin (iscursoronscreen)
    (pragma "IsCursorOnScreen()")
    NULL)

; Drawing-related functions

(define-macro (%with-c-vector2-points func-name arg-idx . code)
    `(begin
        (pragma "Vector2 *points = NULL;
                 int pointCount = 0")
        (unless (null? points)
            (set! points (mkhashw ,func-name ,arg-idx points))
            (when points
                (let ((size (php-hash-size points)))
                    (when (>fx size 0)
                        (pragma "points = (Vector2 *)GC_MALLOC_ATOMIC(sizeof(Vector2) * $1)"
                                ($bint->int size))
                        (let loop ((v2 (php-hash-reset points 'cont)))
                            (when v2
                                (set! v2 (container-value v2))
                                (when (%init-c-vector2 ,func-name (mkstr-v ,arg-idx " element") v2 "points[pointCount]")
                                    (pragma "pointCount++"))
                                (loop (php-hash-advance points 'cont))))
                        (pragma "if (pointCount == 0) {
                                    points = NULL;
                                 }")))))
        ,@code))

(define-macro (%with-c-vector3-points func-name arg-idx . code)
    `(begin
        (pragma "Vector3 *points = NULL;
                 int pointCount = 0")
        (unless (null? points)
            (set! points (mkhashw ,func-name ,arg-idx points))
            (when points
                (let ((size (php-hash-size points)))
                    (when (>fx size 0)
                        (pragma "points = (Vector3 *)GC_MALLOC_ATOMIC(sizeof(Vector3) * $1)"
                                ($bint->int size))
                        (let loop ((v3 (php-hash-reset points 'cont)))
                            (when v3
                                (set! v3 (container-value v3))
                                (when (%init-c-vector3 ,func-name (mkstr-v ,arg-idx " element") v3 "points[pointCount]")
                                    (pragma "pointCount++"))
                                (loop (php-hash-advance points 'cont))))
                        (pragma "if (pointCount == 0) {
                                    points = NULL;
                                 }")))))
        ,@code))

(define-macro (%init-c-camera2d func-name arg-idx camera2d cm2d)
    `(begin
        (set! ,camera2d (mkhashw ,func-name ,arg-idx ,camera2d))
        (when ,camera2d
            (let ((size (php-hash-size ,camera2d)))
                (if (>=fx size 4)
                    (let ((offset (php-hash-lookup ,camera2d "offset"))
                          (target (php-hash-lookup ,camera2d "target"))
                          (rotation (php-hash-lookup ,camera2d "rotation"))
                          (zoom (php-hash-lookup ,camera2d "zoom")))
                        (%init-c-vector2 ,func-name (mkstr-v ,arg-idx " element 'offset'") offset ,(string-append cm2d ".offset"))
                        (when offset
                            (%init-c-vector2 ,func-name (mkstr-v ,arg-idx " element 'target'") target ,(string-append cm2d ".target"))
                            (when target
                                (unless (flonum? rotation)
                                    (set! rotation (or (mkflonum rotation 'arg-parsing)
                                                       (php-error ,func-name "() expects parameter " ,arg-idx " element rotation to be float, " (get-php-datatype rotation 'arg-parsing) " given"))))
                                (unless (flonum? zoom)
                                    (set! zoom (or (mkflonum zoom 'arg-parsing)
                                                   (php-error ,func-name "() expects parameter " ,arg-idx " element zoom to be float, " (get-php-datatype zoom 'arg-parsing) " given"))))
                                (pragma ,(string-append cm2d ".rotation = (float)$1") ($real->double rotation))
                                (pragma ,(string-append cm2d ".zoom = (float)$1") ($real->double zoom))
                                #t)))
                    (php-error ,func-name "() expects parameter " ,arg-idx " to be array with 4(offset, target, rotation, zoom) elements, " size " given"))))))

(define-macro (%init-c-camera3d func-name arg-idx camera3d cm3d)
    `(begin
        (set! ,camera3d (mkhashw ,func-name ,arg-idx ,camera3d))
        (when ,camera3d
            (let ((size (php-hash-size ,camera3d)))
                (if (>=fx size 5)
                    (let ((position (php-hash-lookup ,camera3d "position"))
                          (target (php-hash-lookup ,camera3d "target"))
                          (up (php-hash-lookup ,camera3d "up"))
                          (fovy (php-hash-lookup ,camera3d "fovy"))
                          (projection (php-hash-lookup ,camera3d "projection")))
                        (%init-c-vector3 ,func-name (mkstr-v ,arg-idx " element 'position'") position ,(string-append cm3d ".position"))
                        (when position
                            (%init-c-vector3 ,func-name (mkstr-v ,arg-idx " element 'target'") target ,(string-append cm3d ".target"))
                            (when target
                                (%init-c-vector3 ,func-name (mkstr-v ,arg-idx " element 'up'") up ,(string-append cm3d ".up"))
                                (when up
                                    (unless (flonum? fovy)
                                        (set! fovy (or (mkflonum fovy 'arg-parsing)
                                                       (php-error ,func-name "() expects parameter " ,arg-idx " element 'fovy' to be float, " (get-php-datatype fovy 'arg-parsing) " given"))))
                                    (unless (elong? projection)
                                        (set! projection (or (mkelong projection 'arg-parsing)
                                                             (php-error ,func-name "() expects parameter " ,arg-idx " element 'projection' to be integer, " (get-php-datatype projection 'arg-parsing) " given"))))
                                    (pragma ,(string-append cm3d ".fovy = (float)$1") ($real->double fovy))
                                    (pragma ,(string-append cm3d ".projection = (int)$1") ($belong->elong projection))
                                    #t))))
                    (php-error ,func-name "() expects parameter " ,arg-idx " to be array with 5(position, target, up, fovy, projection) elements, " size " given"))))))

(define-macro (%init-c-ray func-name arg-idx ray r)
    `(begin
        (set! ,ray (mkhashw ,func-name ,arg-idx ,ray))
        (when ,ray
            (let ((size (php-hash-size ,ray)))
                (if (>=fx size 2)
                    (let ((position (php-hash-lookup ,ray "position"))
                          (direction (php-hash-lookup ,ray "direction")))
                        (%init-c-vector3 ,func-name (mkstr-v ,arg-idx " element 'position'") position ,(string-append r ".position"))
                        (when position
                            (%init-c-vector3 ,func-name (mkstr-v ,arg-idx " element 'direction'") direction ,(string-append r ".direction"))
                            (when direction
                                #t)))
                    (php-error ,func-name "() expects parameter " ,arg-idx " to be array with 2(position, direction) elements, " size " given"))))))

(define-macro (%init-c-texture func-name arg-idx texture t)
    `(begin
        (set! ,texture (mkhashw ,func-name ,arg-idx ,texture))
        (when ,texture
            (let ((size (php-hash-size ,texture)))
                (if (>=fx size 5)
                    (let ((id (php-hash-lookup ,texture "id"))
                          (width (php-hash-lookup ,texture "width"))
                          (height (php-hash-lookup ,texture "height"))
                          (mipmaps (php-hash-lookup ,texture "mipmaps"))
                          (format (php-hash-lookup , texture "format")))
                        (unless (elong? id)
                            (set! id (or (mkelong id 'arg-parsing)
                                         (php-error ,func-name "() expects parameter " , arg-idx " element 'id' to be integer, " (get-php-datatype id 'arg-parsing) " given"))))
                        (unless (elong? width)
                            (set! width (or (mkelong width 'arg-parsing)
                                            (php-error ,func-name "() expects parameter " , arg-idx " element 'width' to be integer, " (get-php-datatype width 'arg-parsing) " given"))))
                        (unless (elong? height)
                            (set! height (or (mkelong height 'arg-parsing)
                                             (php-error ,func-name "() expects parameter " , arg-idx " element 'height' to be integer, " (get-php-datatype height 'arg-parsing) " given"))))
                        (unless (elong? mipmaps)
                            (set! mipmaps (or (mkelong mipmaps 'arg-parsing)
                                              (php-error ,func-name "() expects parameter " , arg-idx " element 'mipmaps' to be integer, " (get-php-datatype mipmaps 'arg-parsing) " given"))))
                        (unless (elong? format)
                            (set! format (or (mkelong format 'arg-parsing)
                                             (php-error ,func-name "() expects parameter " , arg-idx " element 'format' to be integer, " (get-php-datatype format 'arg-parsing) " given"))))
                        (pragma ,(string-append t ".id = (unsigned int)$1") ($belong->elong id))
                        (pragma ,(string-append t ".width = (int)$1") ($belong->elong width))
                        (pragma ,(string-append t ".height = (int)$1") ($belong->elong height))
                        (pragma ,(string-append t ".mipmaps = (int)$1") ($belong->elong mipmaps))
                        (pragma ,(string-append t ".format = (int)$1") ($belong->elong format))
                        #t)
                    (php-error ,func-name "() expects parameter " ,arg-idx " to be array with 5(id, width, height, mipmaps, format) elements, " size " given"))))))

(define-macro (%init-c-render-texture func-name arg-idx render-texture rt)
    `(begin
        (set! ,render-texture (mkhashw ,func-name ,arg-idx ,render-texture))
        (when ,render-texture
            (let ((size (php-hash-size ,render-texture)))
                (if (>=fx size 3)
                    (let ((id (php-hash-lookup ,render-texture "id"))
                          (texture (php-hash-lookup ,render-texture "texture"))
                          (depth (php-hash-lookup ,render-texture "depth")))
                        (unless (elong? id)
                            (set! id (or (mkelong id 'arg-parsing)
                                         (php-error ,func-name "() expects parameter " ,arg-idx " element 'id' to be integer, " (get-php-datatype id 'arg-parsing) " given"))))
                        (%init-c-texture ,func-name (mkstr-v ,arg-idx " element 'texture'") texture ,(string-append rt ".texture"))
                        (when texture
                            (%init-c-texture ,func-name (mkstr-v ,arg-idx " element 'depth'") depth ,(string-append rt ".depth"))
                            (when depth
                                (pragma ,(string-append rt ".id = (unsigned int)$1") ($belong->elong id))
                                #t)))
                    (php-error ,func-name "() expects parameter " ,arg-idx " to be array with 3(id, texture, depth) elements, " size " given"))))))

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

(defbuiltin (beginmode2d camera)
    (pragma "Camera2D camera")
    (when (%init-c-camera2d 'BeginMode2D 1 camera "camera")
        (pragma "BeginMode2D(camera)"))
    NULL)

(defbuiltin (endmode2d)
    (pragma "EndMode2D()")
    NULL)

(defbuiltin (beginmode3d camera)
    (pragma "Camera3D camera")
    (when (%init-c-camera3d 'BeginMode3D 1 camera "camera")
        (pragma "BeginMode3D(camera)"))
    NULL)

(defbuiltin (endmode3d)
    (pragma "EndMode3D()")
    NULL)

(defbuiltin (begintexturemode target)
    (pragma "RenderTexture2D target")
    (when (%init-c-render-texture 'BeginTextureMode 1 target "target")
        (pragma "BeginTextureMode(target)"))
    NULL)

(defbuiltin (endtexturemode)
    (pragma "EndTextureMode()")
    NULL)

; Text drawing functions

(defbuiltin (drawfps posX posY)
    (unless (elong? posX)
        (set! posX (mkelongw 'DrawFPS 1 posX)))
    (when posX
        (unless (elong? posY)
            (set! posY (mkelongw 'DrawFPS 2 posY)))
        (when posY
            (pragma "DrawFPS((int)$1, (int)$2)"
                    ($belong->elong posX)
                    ($belong->elong posY))
            NULL)))

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

; Screen-space-related functions

(define-macro (%mkray r)
    `(let ((rayhash (make-php-hash 2)))
        (php-hash-insert! rayhash "position" (%mkvector3-v ,(string-append r ".position")))
        (php-hash-insert! rayhash "direction" (%mkvector3-v ,(string-append r ".direction")))
        rayhash))

(defbuiltin (getmouseray mousePosition camera)
    (pragma "Vector2 pos;
             Camera cm3d")
    (when (and (%init-c-vector2 'GetMouseRay 1 mousePosition "pos")
               (%init-c-camera3d 'GetMouseRay 2 camera "cm3d"))
        (pragma "Ray r = GetMouseRay(pos, cm3d)")
        (%mkray "r")))

(defbuiltin (getcameramatrix camera)
    (pragma "Camera cm3d")
    (when (%init-c-camera3d 'GetCameraMatrix 1 camera "cm3d")
        (pragma "Matrix m = GetCameraMatrix(cm3d)")
        (%mkmatrix-m "m")))

(defbuiltin (getcameramatrix2d camera)
    (pragma "Camera2D cm2d")
    (when (%init-c-camera2d 'GetCameraMatrix2D 1 camera "cm2d")
        (pragma "Matrix m = GetCameraMatrix2D(cm2d)")
        (%mkmatrix-m "m")))

(defbuiltin (getworldtoscreen position camera)
    (pragma "Vector3 pos;
             Camera cm3d")
    (when (and (%init-c-vector3 'GetWorldToScreen 1 position "pos")
               (%init-c-camera3d 'GetWorldToScreen 2 camera "cm3d"))
        (pragma "Vector2 v2 = GetWorldToScreen(pos, cm3d)")
        (%mkvector2-v "v2")))

(defbuiltin (getscreentoworld2d position camera)
    (pragma "Vector2 pos;
             Camera2D cm2d")
    (when (and (%init-c-vector2 'GetScreenToWorld2D 1 position "pos")
               (%init-c-camera2d 'GetScreenToWorld2D 2 camera "cm2d"))
        (pragma "Vector2 v2 = GetScreenToWorld2D(pos, cm2d)")
        (%mkvector2-v "v2")))

(defbuiltin (getworldtoscreenex position camera width height)
    (pragma "Vector3 pos;
             Camera cm3d")
    (when (and (%init-c-vector3 'GetWorldToScreenEx 1 position "pos")
               (%init-c-camera3d 'GetWorldToScreenEx 2 camera "cm3d"))
        (unless (elong? width)
            (set! width (mkelongw 'GetWorldToScreenEx 3 width)))
        (when width
            (unless (elong? height)
                (set! height (mkelongw 'GetWorldToScreenEx 4 height)))
            (when height
                (pragma "Vector2 v2")
                (pragma "v2 = GetWorldToScreenEx(pos, cm3d, (int)$1, (int)$2)"
                        ($belong->elong width)
                        ($belong->elong height))
                (%mkvector2-v "v2")))))

(defbuiltin (getworldtoscreen2d position camera)
    (pragma "Vector2 pos;
             Camera2D cm2d")
    (when (and (%init-c-vector2 'GetWorldToScreen2D 1 position "pos")
               (%init-c-camera2d 'GetWorldToScreen2D 2 camera "cm2d"))
        (pragma "Vector2 v2 = GetWorldToScreen2D(pos, cm2d)")
        (%mkvector2-v "v2")))

; Timing-related functions

(defbuiltin (settargetfps fps)
    (unless (elong? fps)
        (set! fps (mkelongw 'SetTargetFPS 1 fps)))
    (when fps
        (pragma "SetTargetFPS((int)$1)"
                ($belong->elong fps)))
    NULL)

(defbuiltin (getframetime)
    (pragma::double "GetFrameTime()"))

(defbuiltin (gettime)
    (pragma::double "GetTime()"))

(defbuiltin (getfps)
    (pragma::elong "GetFPS()"))

; Basic shapes drawing functions

(defbuiltin (setshapestexture texture source)
    (pragma "Texture2D texture;
             Rectangle source")
    (when (and (%init-c-texture 'SetShapesTexture 1 texture "texture")
               (%init-c-rect 'SetShapesTexture 2 source "source"))
        (pragma "SetShapesTexture(texture, source)")
        NULL))

(defbuiltin (drawpixel posX posY color)
    (unless (elong? posX)
        (set! posX (mkelongw 'DrawPixel 1 posX)))
    (when posX
        (unless (elong? posY)
            (set! posY (mkelongw 'DrawPixel 2 posY)))
        (when posY
            (pragma "Color c")
            (when (%init-c-color 'DrawPixel 3 color "c")
                (pragma "DrawPixel((int)$1, (int)$2, c)"
                        ($belong->elong posX)
                        ($belong->elong posY))
                NULL))))

(defbuiltin (drawpixelv position color)
    (pragma "Vector2 pos;
             Color c")
    (when (and (%init-c-vector2 'DrawPixelV 1 position "pos")
               (%init-c-color 'DrawPixelV 2 color "c"))
        (pragma "DrawPixelV(pos, c)")
        NULL))

(defbuiltin (drawline startPosX startPosY endPosX endPosY color)
    (unless (elong? startPosX)
        (set! startPosX (mkelongw 'DrawLine 1 startPosX)))
    (when startPosX
        (unless (elong? startPosY)
            (set! startPosY (mkelongw 'DrawLine 2 startPosY)))
        (when startPosY
            (unless (elong? endPosX)
                (set! endPosX (mkelongw 'DrawLine 3 endPosX)))
            (when endPosX
                (unless (elong? endPosY)
                    (set! endPosY (mkelongw 'DrawLine 4 endPosY)))
                (when endPosY
                    (pragma "Color c")
                    (when (%init-c-color 'DrawLine 5 color "c")
                        (pragma "DrawLine((int)$1, (int)$2, (int)$3, (int)$4, c)"
                                ($belong->elong startPosX)
                                ($belong->elong startPosY)
                                ($belong->elong endPosX)
                                ($belong->elong endPosY))
                        NULL))))))

(defbuiltin (drawlinev startPos endPos color)
    (pragma "Vector2 startPos, endPos;
             Color c")
    (when (and (%init-c-vector2 'DrawLineV 1 startPos "startPos")
               (%init-c-vector2 'DrawLineV 2 endPos "endPos")
               (%init-c-color 'DrawLineV 3 color "c"))
        (pragma "DrawLineV(startPos, endPos, c)")
        NULL))

(defbuiltin (drawlineex startPos endPos thick color)
    (pragma "Vector2 startPos, endPos")
    (when (and (%init-c-vector2 'DrawLineEx 1 startPos "startPos")
               (%init-c-vector2 'DrawLineEx 2 endPos "endPos"))
        (unless (flonum? thick)
            (set! thick (mkflonumw 'DrawLineEx 3 thick)))
        (when thick
            (pragma "Color c")
            (when (%init-c-color 'DrawLineEx 4 color "c")
                (pragma "DrawLineEx(startPos, endPos, (float)$1, c)"
                        ($real->double thick))
                NULL))))

(defbuiltin (drawlinestrip points color)
    (%with-c-vector2-points
        'DrawLineStrip
        1
        (when (pragma::bool "points")
            (pragma "Color c")
            (when (%init-c-color 'DrawLineStrip 2 color "c")
                (pragma "DrawLineStrip(points, pointCount, c)")
                NULL))))

(defbuiltin (drawlinebezier startPos endPos thick color)
    (pragma "Vector2 startPos, endPos")
    (when (and (%init-c-vector2 'DrawLineBezier 1 startPos "startPos")
               (%init-c-vector2 'DrawLineBezier 2 endPos "endPos"))
        (unless (flonum? thick)
            (set! thick (mkflonumw 'DrawLineBezier 3 thick)))
        (when thick
            (pragma "Color c")
            (when (%init-c-color 'DrawLineBezier 4 color "c")
                (pragma "DrawLineBezier(startPos, endPos, (float)$1, c)"
                        ($real->double thick))
                NULL))))

(defbuiltin (drawcircle centerX centerY radius color)
    (unless (elong? centerX)
        (set! centerX (mkelongw 'DrawCircle 1 centerX)))
    (when centerX
        (unless (elong? centerY)
            (set! centerY (mkelongw 'DrawCircle 2 centerY)))
        (when centerY
            (unless (flonum? radius)
                (set! radius (mkflonumw 'DrawCircle 3 radius)))
            (when radius
                (pragma "Color c")
                (when (%init-c-color 'DrawCircle 4 color "c")
                    (pragma "DrawCircle((int)$1, (int)$2, (float)$3, c)"
                            ($belong->elong centerX)
                            ($belong->elong centerY)
                            ($real->double radius))
                    NULL)))))

(defbuiltin (drawcirclesector center radius startAngle endAngle segments color)
    (pragma "Vector2 center")
    (when (%init-c-vector2 'DrawCircleSector 1 center "center")
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawCircleSector 2 radius)))
        (when radius
            (unless (flonum? startAngle)
                (set! startAngle (mkflonumw 'DrawCircleSector 3 startAngle)))
            (when startAngle
                (unless (flonum? endAngle)
                    (set! endAngle (mkflonumw 'DrawCircleSector 4 endAngle)))
                (when endAngle
                    (unless (elong? segments)
                        (set! segments (mkelongw 'DrawCircleSector 5 segments)))
                    (when segments
                        (pragma "Color c")
                        (when (%init-c-color 'DrawCircleSector 6 color "c")
                            (pragma "DrawCircleSector(center, (float)$1, (float)$2, (float)$3, (int)$4, c)"
                                    ($real->double radius)
                                    ($real->double startAngle)
                                    ($real->double endAngle)
                                    ($belong->elong segments))
                            NULL)))))))

(defbuiltin (drawcirclesectorlines center radius startAngle endAngle segments color)
    (pragma "Vector2 center")
    (when (%init-c-vector2 'DrawCircleSectorLines 1 center "center")
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawCircleSectorLines 2 radius)))
        (when radius
            (unless (flonum? startAngle)
                (set! startAngle (mkflonumw 'DrawCircleSectorLines 3 startAngle)))
            (when startAngle
                (unless (flonum? endAngle)
                    (set! endAngle (mkflonumw 'DrawCircleSectorLines 4 endAngle)))
                (when endAngle
                    (unless (elong? segments)
                        (set! segments (mkelongw 'DrawCircleSectorLines 5 segments)))
                    (when segments
                        (pragma "Color c")
                        (when (%init-c-color 'DrawCircleSectorLines 6 color "c")
                            (pragma "DrawCircleSectorLines(center, (float)$1, (float)$2, (float)$3, (int)$4, c)"
                                    ($real->double radius)
                                    ($real->double startAngle)
                                    ($real->double endAngle)
                                    ($belong->elong segments))
                            NULL)))))))

(defbuiltin (drawcirclegradient centerX centerY radius color1 color2)
    (unless (elong? centerX)
        (set! centerX (mkelongw 'DrawCircleGradient 1 centerX)))
    (when centerX
        (unless (elong? centerY)
            (set! centerY (mkelongw 'DrawCircleGradient 2 centerY)))
        (when centerY
            (unless (flonum? radius)
                (set! radius (mkflonumw 'DrawCircleGradient 3 radius)))
            (when radius
                (pragma "Color c1, c2")
                (when (and (%init-c-color 'DrawCircleGradient 4 color1 "c1")
                           (%init-c-color 'DrawCircleGradient 5 color2 "c2"))
                    (pragma "DrawCircleGradient((int)$1, (int)$2, (float)$3, c1, c2)"
                            ($belong->elong centerX)
                            ($belong->elong centerY)
                            ($real->double radius))
                    NULL)))))

(defbuiltin (drawcirclev center radius color)
    (pragma "Vector2 center")
    (when (%init-c-vector2 'DrawCircleV 1 center "center")
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawCircleV 2 radius)))
        (when radius
            (pragma "Color c")
            (when (%init-c-color 'DrawCircleV 3 color "c")
                (pragma "DrawCircleV(center, (float)$1, c)"
                        ($real->double radius))
                NULL))))

(defbuiltin (drawcirclelines centerX centerY radius color)
    (unless (elong? centerX)
        (set! centerX (mkelongw 'DrawCircleLines 1 centerX)))
    (when centerX
        (unless (elong? centerY)
            (set! centerY (mkelongw 'DrawCircleLines 2 centerY)))
        (when centerY
            (unless (flonum? radius)
                (set! radius (mkflonumw 'DrawCircleLines 3 radius)))
            (when radius
                (pragma "Color c")
                (when (%init-c-color 'DrawCircleLines 4 color "c")
                    (pragma "DrawCircleLines((int)$1, (int)$2, (float)$3, c)"
                            ($belong->elong centerX)
                            ($belong->elong centerY)
                            ($real->double radius))
                    NULL)))))

(defbuiltin (drawcirclelinesv center radius color)
    (pragma "Vector2 center")
    (when (%init-c-vector2 'DrawCircleLinesV 1 center "center")
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawCircleLinesV 2 radius)))
        (when radius
            (pragma "Color c")
            (when (%init-c-color 'DrawCircleLinesV 3 color "c")
                (pragma "DrawCircleLinesV(center, (float)$1, c)"
                        ($real->double radius))
                NULL))))

(defbuiltin (drawellipse centerX centerY radiusH radiusV color)
    (unless (elong? centerX)
        (set! centerX (mkelongw 'DrawEllipse 1 centerX)))
    (when centerX
        (unless (elong? centerY)
            (set! centerY (mkelongw 'DrawEllipse 2 centerY)))
        (when centerY
            (unless (flonum? radiusH)
                (set! radiusH (mkflonumw 'DrawEllipse 3 radiusH)))
            (when radiusH
                (unless (flonum? radiusV)
                    (set! radiusV (mkflonumw 'DrawEllipse 4 radiusV)))
                (when radiusV
                    (pragma "Color c")
                    (when (%init-c-color 'DrawEllipse 5 color "c")
                        (pragma "DrawEllipse((int)$1, (int)$2, (float)$3, (float)$4, c)"
                                ($belong->elong centerX)
                                ($belong->elong centerY)
                                ($real->double radiusH)
                                ($real->double radiusV))
                        NULL))))))

(defbuiltin (drawellipselines centerX centerY radiusH radiusV color)
    (unless (elong? centerX)
        (set! centerX (mkelongw 'DrawEllipseLines 1 centerX)))
    (when centerX
        (unless (elong? centerY)
            (set! centerY (mkelongw 'DrawEllipseLines 2 centerY)))
        (when centerY
            (unless (flonum? radiusH)
                (set! radiusH (mkflonumw 'DrawEllipseLines 3 radiusH)))
            (when radiusH
                (unless (flonum? radiusV)
                    (set! radiusV (mkflonumw 'DrawEllipseLines 4 radiusV)))
                (when radiusV
                    (pragma "Color c")
                    (when (%init-c-color 'DrawEllipseLines 5 color "c")
                        (pragma "DrawEllipseLines((int)$1, (int)$2, (float)$3, (float)$4, c)"
                                ($belong->elong centerX)
                                ($belong->elong centerY)
                                ($real->double radiusH)
                                ($real->double radiusV))
                        NULL))))))

(defbuiltin (drawring center innerRadius outerRadius startAngle endAngle segments color)
    (pragma "Vector2 center")
    (when (%init-c-vector2 'DrawRing 1 center "center")
        (unless (flonum? innerRadius)
            (set! innerRadius (mkflonumw 'DrawRing 2 innerRadius)))
        (when innerRadius
            (unless (flonum? outerRadius)
                (set! outerRadius (mkflonumw 'DrawRing 3 outerRadius)))
            (when outerRadius
                (unless (flonum? startAngle)
                    (set! startAngle (mkflonumw 'DrawRing 4 startAngle)))
                (when startAngle
                    (unless (flonum? endAngle)
                        (set! endAngle (mkflonumw 'DrawRing 5 endAngle)))
                    (when endAngle
                        (unless (elong? segments)
                            (set! segments (mkelongw 'DrawRing 6 segments)))
                        (when segments
                            (pragma "Color c")
                            (when (%init-c-color 'DrawRing 7 color "c")
                                (pragma "DrawRing(center, (float)$1, (float)$2, (float)$3, (float)$4, (int)$5, c)"
                                        ($real->double innerRadius)
                                        ($real->double outerRadius)
                                        ($real->double startAngle)
                                        ($real->double endAngle)
                                        ($belong->elong segments))
                                NULL))))))))

(defbuiltin (drawringlines center innerRadius outerRadius startAngle endAngle segments color)
    (pragma "Vector2 center")
    (when (%init-c-vector2 'DrawRingLines 1 center "center")
        (unless (flonum? innerRadius)
            (set! innerRadius (mkflonumw 'DrawRingLines 2 innerRadius)))
        (when innerRadius
            (unless (flonum? outerRadius)
                (set! outerRadius (mkflonumw 'DrawRingLines 3 outerRadius)))
            (when outerRadius
                (unless (flonum? startAngle)
                    (set! startAngle (mkflonumw 'DrawRingLines 4 startAngle)))
                (when startAngle
                    (unless (flonum? endAngle)
                        (set! endAngle (mkflonumw 'DrawRingLines 5 endAngle)))
                    (when endAngle
                        (unless (elong? segments)
                            (set! segments (mkelongw 'DrawRingLines 6 segments)))
                        (when segments
                            (pragma "Color c")
                            (when (%init-c-color 'DrawRingLines 7 color "c")
                                (pragma "DrawRingLines(center, (float)$1, (float)$2, (float)$3, (float)$4, (int)$5, c)"
                                        ($real->double innerRadius)
                                        ($real->double outerRadius)
                                        ($real->double startAngle)
                                        ($real->double endAngle)
                                        ($belong->elong segments))
                                NULL))))))))

(defbuiltin (drawrectangle posX posY width height color)
    (unless (elong? posX)
        (set! posX (mkelongw 'DrawRectangle 1 posX)))
    (when posX
        (unless (elong? posY)
            (set! posY (mkelongw 'DrawRectangle 2 posY)))
        (when posY
            (unless (elong? width)
                (set! width (mkelongw 'DrawRectangle 3 width)))
            (when width
                (unless (elong? height)
                    (set! height (mkelongw 'DrawRectangle 4 height)))
                (when height
                    (pragma "Color c")
                    (when (%init-c-color 'DrawRectangle 5 color "c")
                        (pragma "DrawRectangle((int)$1, (int)$2, (int)$3, (int)$4, c)"
                                ($belong->elong posX)
                                ($belong->elong posY)
                                ($belong->elong width)
                                ($belong->elong height))
                        NULL))))))

(defbuiltin (drawrectanglev position size color)
    (pragma "Vector2 pos, size;
             Color c")
    (when (and (%init-c-vector2 'DrawRectangleV 1 position "pos")
               (%init-c-vector2 'DrawRectangleV 2 size "size")
               (%init-c-color 'DrawRectangleV 3 color "c"))
        (pragma "DrawRectangleV(pos, size, c)")
        NULL))

(defbuiltin (drawrectanglerec rec color)
    (pragma "Rectangle r;
             Color c")
    (when (and (%init-c-rect 'DrawRectangleRec 1 rec "r")
               (%init-c-color 'DrawRectangleRec 2 color "c"))
        (pragma "DrawRectangleRec(r, c)")
        NULL))

(defbuiltin (drawrectanglepro rec origin rotation color)
    (pragma "Rectangle r;
             Vector2 origin")
    (when (and (%init-c-rect 'DrawRectanglePro 1 rec "r")
               (%init-c-vector2 'DrawRectanglePro 2 origin "origin"))
        (unless (flonum? rotation)
            (set! rotation (mkflonumw 'DrawRectanglePro 3 rotation)))
        (when rotation
            (pragma "Color c")
            (when (%init-c-color 'DrawRectanglePro 4 color "c")
                (pragma "DrawRectanglePro(r, origin, (float)$1, c)"
                        ($real->double rotation))
                NULL))))

(defbuiltin (drawrectanglegradientv posX posY width height color1 color2)
    (unless (elong? posX)
        (set! posX (mkelongw 'DrawRectangleGradientV 1 posX)))
    (when posX
        (unless (elong? posY)
            (set! posY (mkelongw 'DrawRectangleGradientV 2 posY)))
        (when posY
            (unless (elong? width)
                (set! width (mkelongw 'DrawRectangleGradientV 3 width)))
            (when width
                (unless (elong? height)
                    (set! height (mkelongw 'DrawRectangleGradientV 4 height)))
                (when height
                    (pragma "Color c1, c2")
                    (when (and (%init-c-color 'DrawRectangleGradientV 5 color1 "c1")
                               (%init-c-color 'DrawRectangleGradientV 6 color2 "c2"))
                        (pragma "DrawRectangleGradientV((int)$1, (int)$2, (int)$3, (int)$4, c1, c2)"
                                ($belong->elong posX)
                                ($belong->elong posY)
                                ($belong->elong width)
                                ($belong->elong height))
                        NULL))))))

(defbuiltin (drawrectanglegradienth posX posY width height color1 color2)
    (unless (elong? posX)
        (set! posX (mkelongw 'DrawRectangleGradientH 1 posX)))
    (when posX
        (unless (elong? posY)
            (set! posY (mkelongw 'DrawRectangleGradientH 2 posY)))
        (when posY
            (unless (elong? width)
                (set! width (mkelongw 'DrawRectangleGradientH 3 width)))
            (when width
                (unless (elong? height)
                    (set! height (mkelongw 'DrawRectangleGradientH 4 height)))
                (when height
                    (pragma "Color c1, c2")
                    (when (and (%init-c-color 'DrawRectangleGradientH 5 color1 "c1")
                               (%init-c-color 'DrawRectangleGradientH 6 color2 "c2"))
                        (pragma "DrawRectangleGradientH((int)$1, (int)$2, (int)$3, (int)$4, c1, c2)"
                                ($belong->elong posX)
                                ($belong->elong posY)
                                ($belong->elong width)
                                ($belong->elong height))
                        NULL))))))

(defbuiltin (drawrectanglegradientex rec col1 col2 col3 col4)
    (pragma "Rectangle r;
             Color c1, c2, c3, c4")
    (when (and (%init-c-rect 'DrawRectangleGradientEx 1 rec "r")
               (%init-c-color 'DrawRectangleGradientEx 2 col1 "c1")
               (%init-c-color 'DrawRectangleGradientEx 3 col1 "c2")
               (%init-c-color 'DrawRectangleGradientEx 4 col1 "c3")
               (%init-c-color 'DrawRectangleGradientEx 5 col1 "c4"))
        (pragma "DrawRectangleGradientEx(r, c1, c2, c3, c4)")
        NULL))

(defbuiltin (drawrectanglelines posX posY width height color)
    (unless (elong? posX)
        (set! posX (mkelongw 'DrawRectangleLines 1 posX)))
    (when posX
        (unless (elong? posY)
            (set! posY (mkelongw 'DrawRectangleLines 2 posY)))
        (when posY
            (unless (elong? width)
                (set! width (mkelongw 'DrawRectangleLines 3 width)))
            (when width
                (unless (elong? height)
                    (set! height (mkelongw 'DrawRectangleLines 4 height)))
                (when height
                    (pragma "Color c")
                    (when (%init-c-color 'DrawRectangleLines 5 color "c")
                        (pragma "DrawRectangleLines((int)$1, (int)$2, (int)$3, (int)$4, c)"
                                ($belong->elong posX)
                                ($belong->elong posY)
                                ($belong->elong width)
                                ($belong->elong height))
                        NULL))))))

(defbuiltin (drawrectanglelinesex rec lineThick color)
    (pragma "Rectangle r")
    (when (%init-c-rect 'DrawRectangleLinesEx 1 rec "r")
        (unless (flonum? lineThick)
            (set! lineThick (mkflonumw 'DrawRectangleLinesEx 2 lineThick)))
        (when lineThick
            (pragma "Color c")
            (when (%init-c-color 'DrawRectangleLinesEx 3 color "c")
                (pragma "DrawRectangleLinesEx(r, (float)$1, c)"
                        ($real->double lineThick))
                NULL))))

(defbuiltin (drawrectanglerounded rec roundness segments color)
    (pragma "Rectangle r")
    (when (%init-c-rect 'DrawRectangleRounded 1 rec "r")
        (unless (flonum? roundness)
            (set! roundness (mkflonumw 'DrawRectangleRounded 2 roundness)))
        (when roundness
            (unless (elong? segments)
                (set! segments (mkelongw 'DrawRectangleRounded 3 segments)))
            (when segments
                (pragma "Color c")
                (when (%init-c-color 'DrawRectangleRounded 4 color "c")
                    (pragma "DrawRectangleRounded(r, (float)$1, (int)$2, c)"
                            ($real->double roundness)
                            ($belong->elong segments))
                    NULL)))))

(defbuiltin (drawrectangleroundedlines rec roundness segments lineThick color)
    (pragma "Rectangle r")
    (when (%init-c-rect 'DrawRectangleRoundedLines 1 rec "r")
        (unless (flonum? roundness)
            (set! roundness (mkflonumw 'DrawRectangleRoundedLines 2 roundness)))
        (when roundness
            (unless (elong? segments)
                (set! segments (mkelongw 'DrawRectangleRoundedLines 3 segments)))
            (when segments
                (unless (flonum? lineThick)
                    (set! lineThick (mkflonumw 'DrawRectangleRoundedLines 4 lineThick)))
                (when lineThick
                    (pragma "Color c")
                    (when (%init-c-color 'DrawRectangleRoundedLines 5 color "c")
                        (pragma "DrawRectangleRoundedLines(r, (float)$1, (int)$2, (float)$3, c)"
                                ($real->double roundness)
                                ($belong->elong segments)
                                ($real->double lineThick))
                        NULL))))))

(defbuiltin (drawtriangle v1 v2 v3 color)
    (pragma "Vector2 v1, v2, v3;
             Color c")
    (when (and (%init-c-vector2 'DrawTriangle 1 v1 "v1")
               (%init-c-vector2 'DrawTriangle 2 v2 "v2")
               (%init-c-vector2 'DrawTriangle 3 v3 "v3")
               (%init-c-color 'DrawTriangle 4 color "c"))
        (pragma "DrawTriangle(v1, v2, v3, c)")
        NULL))

(defbuiltin (drawtrianglelines v1 v2 v3 color)
    (pragma "Vector2 v1, v2, v3;
             Color c")
    (when (and (%init-c-vector2 'DrawTriangleLines 1 v1 "v1")
               (%init-c-vector2 'DrawTriangleLines 2 v2 "v2")
               (%init-c-vector2 'DrawTriangleLines 3 v3 "v3")
               (%init-c-color 'DrawTriangleLines 4 color "c"))
        (pragma "DrawTriangleLines(v1, v2, v3, c)")
        NULL))

(defbuiltin (drawtrianglefan points color)
    (%with-c-vector2-points
        'DrawTriangleFan
        1
        (when (pragma::bool "points")
            (pragma "Color c")
            (when (%init-c-color 'DrawTriangleFan 2 color "c")
                (pragma "DrawTriangleFan(points, pointCount, c)")
                NULL))))

(defbuiltin (drawtrianglestrip points color)
    (%with-c-vector2-points
        'DrawTriangleStrip
        1
        (when (pragma::bool "points")
            (pragma "Color c")
            (when (%init-c-color 'DrawTriangleStrip 2 color "c")
                (pragma "DrawTriangleStrip(points, pointCount, c)")
                NULL))))

(defbuiltin (drawpoly center sides radius rotation color)
    (pragma "Vector2 center")
    (when (%init-c-vector2 'DrawPoly 1 center "center")
        (unless (elong? sides)
            (set! sides (mkelongw 'DrawPoly 2 sides)))
        (when sides
            (unless (flonum? radius)
                (set! radius (mkflonumw 'DrawPoly 3 radius)))
            (when radius
                (unless (flonum? rotation)
                    (set! rotation (mkflonumw 'DrawPoly 4 rotation)))
                (when rotation
                    (pragma "Color c")
                    (when (%init-c-color 'DrawPoly 5 color "c")
                        (pragma "DrawPoly(center, (int)$1, (float)$2, (float)$3, c)"
                                ($belong->elong sides)
                                ($real->double radius)
                                ($real->double rotation))
                        NULL))))))

(defbuiltin (drawpolylines center sides radius rotation color)
    (pragma "Vector2 center")
    (when (%init-c-vector2 'DrawPolyLines 1 center "center")
        (unless (elong? sides)
            (set! sides (mkelongw 'DrawPolyLines 2 sides)))
        (when sides
            (unless (flonum? radius)
                (set! radius (mkflonumw 'DrawPolyLines 3 radius)))
            (when radius
                (unless (flonum? rotation)
                    (set! rotation (mkflonumw 'DrawPolyLines 4 rotation)))
                (when rotation
                    (pragma "Color c")
                    (when (%init-c-color 'DrawPolyLines 5 color "c")
                        (pragma "DrawPolyLines(center, (int)$1, (float)$2, (float)$3, c)"
                                ($belong->elong sides)
                                ($real->double radius)
                                ($real->double rotation))
                        NULL))))))

(defbuiltin (drawpolylinesex center sides radius rotation lineThick color)
    (pragma "Vector2 center")
    (when (%init-c-vector2 'DrawPolyLinesEx 1 center "center")
        (unless (elong? sides)
            (set! sides (mkelongw 'DrawPolyLinesEx 2 sides)))
        (when sides
            (unless (flonum? radius)
                (set! radius (mkflonumw 'DrawPolyLinesEx 3 radius)))
            (when radius
                (unless (flonum? rotation)
                    (set! rotation (mkflonumw 'DrawPolyLinesEx 4 rotation)))
                (when rotation
                    (unless (flonum? lineThick)
                        (set! lineThick (mkflonumw 'DrawPolyLinesEx 5 lineThick)))
                    (when lineThick
                        (pragma "Color c")
                        (when (%init-c-color 'DrawPolyLinesEx 6 color "c")
                            (pragma "DrawPolyLinesEx(center, (int)$1, (float)$2, (float)$3, (float)$4, c)"
                                    ($belong->elong sides)
                                    ($real->double radius)
                                    ($real->double rotation)
                                    ($real->double lineThick))
                            NULL)))))))

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

(defbuiltin (loadimagefrommemory fileType fileData)
    (unless (string? fileType)
        (set! fileType (mkstrw 'LoadImageFromMemory 1 fileType)))
    (when fileType
        (unless (string? fileData)
            (set! fileData (mkstrw 'LoadImageFromMemory 2 fileData)))
        (when fileData
            (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
            (pragma "*im = LoadImageFromMemory($1, BSTRING_TO_STRING($2), STRING_LENGTH($2))"
                    ($bstring->string fileType)
                    fileData)
            (make-resource %Image (pragma::void* "im")))))

(defbuiltin (loadimagefromtexture texture)
    (pragma "Texture2D t")
    (when (%init-c-texture 'LoadImageFromTexture 1 texture "t")
        (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image));
                 *im = LoadImageFromTexture(t)")
        (make-resource %Image (pragma::void* "im"))))

(defbuiltin (loadimagefromscreen)
    (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
    (pragma "*im = LoadImageFromScreen()")
    (make-resource %Image (pragma::void* "im")))

(defbuiltin (isimageready image)
    (%ensure-image
        'IsImageReady
        (pragma::bool "IsImageReady(*im)")))

(defbuiltin (unloadimage image)
    (%ensure-image
        'UnloadImage
        (begin
            (pragma "UnloadImage(*im)")
            (%Image-intern-set! image #f)
            (%Image-description-set! image #f)
            NULL)))

(defbuiltin (exportimage image fileName)
    (%ensure-image
        'ExportImage
        (begin
            (set! fileName (mkpathw 'ExportImage 2 fileName))
            (when fileName
                (pragma::bool "ExportImage(*im, $1)"
                              ($bstring->string fileName))))))

(defbuiltin (exportimagetomemory image fileType)
    (%ensure-image
        'ExportImageToMemory
        (begin
            (unless (string? fileType)
                (set! fileType (mkstrw 'ExportImageToMemory 2 fileType)))
            (when fileType
                (pragma "unsigned char *fileData;
                         int dataSize;
                         obj_t ret = BNIL")
                (pragma "fileData = ExportImageToMemory(*im, $1, &dataSize)"
                        ($bstring->string fileType))
                (pragma "if (fileData) {
                            ret = string_to_bstring_len(fileData, dataSize);
                            RL_FREE(fileData);
                         }")
                (pragma::obj "ret")))))

(defbuiltin (exportimageascode image fileName)
    (%ensure-image
        'ExportImageAsCode
        (begin
            (set! fileName (mkpathw 'ExportImageAsCode 2 fileName))
            (when fileName
                (pragma::bool "ExportImageAsCode(*im, $1)"
                              ($bstring->string fileName))))))

; Image generation functions

(defbuiltin (genimagecolor width height color)
    (unless (elong? width)
        (set! width (mkelongw 'GenImageColor 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GenImageColor 2 height)))
        (when height
            (pragma "Color c")
            (when (%init-c-color 'GenImageColor 3 color "c")
                (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                (pragma "*im = GenImageColor((int)$1, (int)$2, c)"
                        ($belong->elong width)
                        ($belong->elong height))
                (make-resource %Image (pragma::void* "im"))))))

(defbuiltin (genimagegradientlinear width height direction start end)
    (unless (elong? width)
        (set! width (mkelongw 'GenImageGradientLinear 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GenImageGradientLinear 2 height)))
        (when height
            (unless (elong? direction)
                (set! direction (mkelongw 'GenImageGradientLinear 3 direction)))
            (when direction
                (pragma "Color start, end")
                (when (and (%init-c-color 'GenImageGradientLinear 4 start "start")
                           (%init-c-color 'GenImageGradientLinear 5 end "end"))
                    (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                    (pragma "*im = GenImageGradientLinear((int)$1, (int)$2, (int)$3, start, end)"
                            ($belong->elong width)
                            ($belong->elong height)
                            ($belong->elong direction))
                    (make-resource %Image (pragma::void* "im")))))))

(defbuiltin (genimagegradientradial width height density inner outer)
    (unless (elong? width)
        (set! width (mkelongw 'GenImageGradientRadial 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GenImageGradientRadial 2 height)))
        (when height
            (unless (flonum? density)
                (set! density (mkflonumw 'GenImageGradientRadial 3 density)))
            (when density
                (pragma "Color inner, outer")
                (when (and (%init-c-color 'GenImageGradientRadial 4 inner "inner")
                           (%init-c-color 'GenImageGradientRadial 5 outer "outer"))
                    (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                    (pragma "*im = GenImageGradientRadial((int)$1, (int)$2, (float)$3, inner, outer)"
                            ($belong->elong width)
                            ($belong->elong height)
                            ($real->double density))
                    (make-resource %Image (pragma::void* "im")))))))

(defbuiltin (genimagegradientsquare width height density inner outer)
    (unless (elong? width)
        (set! width (mkelongw 'GenImageGradientSquare 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GenImageGradientSquare 2 height)))
        (when height
            (unless (flonum? density)
                (set! density (mkflonumw 'GenImageGradientSquare 3 density)))
            (when density
                (pragma "Color inner, outer")
                (when (and (%init-c-color 'GenImageGradientSquare 4 inner "inner")
                           (%init-c-color 'GenImageGradientSquare 5 outer "outer"))
                    (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                    (pragma "*im = GenImageGradientSquare((int)$1, (int)$2, (float)$3, inner, outer)"
                            ($belong->elong width)
                            ($belong->elong height)
                            ($real->double density))
                    (make-resource %Image (pragma::void* "im")))))))

(defbuiltin (genimagechecked width height checksX checksY col1 col2)
    (unless (elong? width)
        (set! width (mkelongw 'GenImageChecked 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GenImageChecked 2 height)))
        (when height
            (unless (elong? checksX)
                (set! checksX (mkelongw 'GenImageChecked 3 checksX)))
            (when checksX
                (unless (elong? checksY)
                    (set! checksY (mkelongw 'GenImageChecked 4 checksY)))
                (when checksY
                    (pragma "Color col1, col2")
                    (when (and (%init-c-color 'GenImageChecked 5 col1 "col1")
                               (%init-c-color 'GenImageChecked 6 col2 "col2"))
                        (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                        (pragma "*im = GenImageChecked((int)$1, (int)$2, (int)$3, (int)$4, col1, col2)"
                                ($belong->elong width)
                                ($belong->elong height)
                                ($belong->elong checksX)
                                ($belong->elong checksY))
                        (make-resource %Image (pragma::void* "im"))))))))

(defbuiltin (genimagewhitenoise width height factor)
    (unless (elong? width)
        (set! width (mkelongw 'GenImageWhiteNoise 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GenImageWhiteNoise 2 height)))
        (when height
            (unless (flonum? factor)
                (set! factor (mkflonumw 'GenImageWhiteNoise 3 factor)))
            (when factor
                (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                (pragma "*im = GenImageWhiteNoise((int)$1, (int)$2, (float)$3)"
                        ($belong->elong width)
                        ($belong->elong height)
                        ($real->double factor))
                (make-resource %Image (pragma::void* "im"))))))

(defbuiltin (genimageperlinnoise width height offsetX offsetY scale)
    (unless (elong? width)
        (set! width (mkelongw 'GenImagePerlinNoise 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GenImagePerlinNoise 2 height)))
        (when height
            (unless (elong? offsetX)
                (set! offsetX (mkelongw 'GenImagePerlinNoise 3 offsetX)))
            (when offsetX
                (unless (elong? offsetY)
                    (set! offsetY (mkelongw 'GenImagePerlinNoise 4 offsetY)))
                (when offsetY
                    (unless (flonum? scale)
                        (set! scale (mkflonumw 'GenImagePerlinNoise 5 scale)))
                    (when scale
                        (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                        (pragma "*im = GenImagePerlinNoise((int)$1, (int)$2, (int)$3, (int)$4, (float)$5)"
                                ($belong->elong width)
                                ($belong->elong height)
                                ($belong->elong offsetX)
                                ($belong->elong offsetY)
                                ($real->double scale))
                        (make-resource %Image (pragma::void* "im"))))))))

(defbuiltin (genimagecellular width height tileSize)
    (unless (elong? width)
        (set! width (mkelongw 'GenImageCellular 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GenImageCellular 2 height)))
        (when height
            (unless (elong? tileSize)
                (set! tileSize (mkelongw 'GenImageCellular 3 tileSize)))
            (when tileSize
                (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                (pragma "*im = GenImageCellular((int)$1, (int)$2, (int)$3)"
                        ($belong->elong width)
                        ($belong->elong height)
                        ($belong->elong tileSize))
                (make-resource %Image (pragma::void* "im"))))))

(defbuiltin (genimagetext width height text)
    (unless (elong? width)
        (set! width (mkelongw 'GenImageText 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GenImageText 2 height)))
        (when height
            (unless (string? text)
                (set! text (mkstrw 'GenImageText 3 text)))
            (when text
                (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                (pragma "*im = GenImageText((int)$1, (int)$2, $3)"
                        ($belong->elong width)
                        ($belong->elong height)
                        ($bstring->string text))
                (make-resource %Image (pragma::void* "im"))))))

; Image manipulation functions

(defbuiltin (imagecopy image)
    (%ensure-image
        'ImageCopy
        (begin
            (pragma "Image *copy = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
            (pragma "*copy = ImageCopy(*im)")
            (make-resource %Image (pragma::void* "copy")))))

(defbuiltin (imagefromimage image rec)
    (%ensure-image
        'ImageFromImage
        (begin
            (pragma "Rectangle r")
            (when (%init-c-rect 'ImageFromImage 2 rec "r")
                (pragma "Image *newim = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                (pragma "*newim = ImageFromImage(*im, r)")
                (make-resource %Image (pragma::void* "newim"))))))

(defbuiltin (imagetext text fontSize color)
    (unless (string? text)
        (set! text (mkstrw 'ImageText 1 text)))
    (when text
        (unless (elong? fontSize)
            (set! fontSize (mkelongw 'ImageText 2 fontSize)))
        (when fontSize
            (pragma "Color c")
            (when (%init-c-color 'ImageText 3 color "c")
                (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                (pragma "*im = ImageText($1, (int)$2, c)"
                        ($bstring->string text)
                        ($belong->elong fontSize))
                (make-resource %Image (pragma::void* "im"))))))

(defbuiltin (imagetextex font text fontSize spacing tint)
    (%ensure-font
        'ImageTextEx
        (unless (string? text)
            (set! text (mkstrw 'ImageTextEx 2 text)))
        (when text
            (unless (flonum? fontSize)
                (set! fontSize (mkflonumw 'ImageTextEx 3 fontSize)))
            (when fontSize
                (unless (flonum? spacing)
                    (set! spacing (mkflonumw 'ImageTextEx 4 spacing)))
                (when spacing
                    (pragma "Color tint")
                    (when (%init-c-color 'ImageTextEx 5 tint "tint")
                        (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image))")
                        (pragma "*im = ImageTextEx(*font, $1, (float)$2, (float)$3, tint)"
                                ($bstring->string text)
                                ($real->double fontSize)
                                ($real->double spacing))
                        (make-resource %Image (pragma::void* "im"))))))))

(defbuiltin (imageformat image newFormat)
    (%ensure-image
        'ImageFormat
        (unless (elong? newFormat)
            (set! newFormat (mkelongw 'ImageFormat 2 newFormat)))
        (when newFormat
            (pragma "ImageFormat(im, (int)$1)"
                    ($belong->elong newFormat))
            NULL)))

(defbuiltin (imagetopot image fill)
    (%ensure-image
        'ImageToPOT
        (pragma "Color fill")
        (when (%init-c-color 'ImageToPOT 2 fill "fill")
            (pragma "ImageToPOT(im, fill)")
            NULL)))

(defbuiltin (imagecrop image crop)
    (%ensure-image
        'ImageCrop
        (pragma "Rectangle crop")
        (when (%init-c-rect 'ImageCrop 2 crop "crop")
            (pragma "ImageCrop(im, crop)")
            NULL)))

(defbuiltin (imagealphacrop image threshold)
    (%ensure-image
        'ImageAlphaCrop
        (unless (flonum? threshold)
            (set! threshold (mkflonumw 'ImageAlphaCrop 2 threshold)))
        (when threshold
            (pragma "ImageAlphaCrop(im, (float)$1)"
                    ($real->double threshold))
            NULL)))

(defbuiltin (imagealphaclear image color threshold)
    (%ensure-image
        'ImageAlphaClear
        (pragma "Color c")
        (when (%init-c-color 'ImageAlphaClear 2 color "c")
            (unless (flonum? threshold)
                (set! threshold (mkflonumw 'ImageAlphaClear 3 threshold)))
            (when threshold
                (pragma "ImageAlphaClear(im, c, (float)$1)"
                        ($real->double threshold))
                NULL))))

(defbuiltin (imagealphamask image alphaMask)
    (%ensure-image
        'ImageAlphaMask
        (resource-valid-guard
            'ImageAlphaMask
            (and (%Image? alphaMask)
                 (%Image-intern alphaMask))
            "raylib Image"
            (begin
                (pragma "Image *mask")
                (pragma "mask = (Image *)$1" ($obj->void* (%Image-intern alphaMask)))
                (pragma "ImageAlphaMask(im, *mask)")
                NULL))))

(defbuiltin (imagealphapremultiply image)
    (%ensure-image
        'ImageAlphaPremultiply
        (pragma "ImageAlphaPremultiply(im)")
        NULL))

(defbuiltin (imageblurgaussian image blurSize)
    (%ensure-image
        'ImageBlurGaussian
        (unless (elong? blurSize)
            (set! blurSize (mkelongw 'ImageBlurGaussian 2 blurSize)))
        (when blurSize
            (pragma "ImageBlurGaussian(im, (int)$1)"
                    ($belong->elong blurSize))
            NULL)))

(defbuiltin (imageresize image newWidth newHeight)
    (%ensure-image
        'ImageResize
        (unless (elong? newWidth)
            (set! newWidth (mkelongw 'ImageResize 2 newWidth)))
        (when newWidth
            (unless (elong? newHeight)
                (set! newHeight (mkelongw 'ImageResize 3 newHeight)))
            (when newHeight
                (pragma "ImageResize(im, (int)$1, (int)$2)"
                        ($belong->elong newWidth)
                        ($belong->elong newHeight))
                NULL))))

(defbuiltin (imageresizenn image newWidth newHeight)
    (%ensure-image
        'ImageResizeNN
        (unless (elong? newWidth)
            (set! newWidth (mkelongw 'ImageResizeNN 2 newWidth)))
        (when newWidth
            (unless (elong? newHeight)
                (set! newHeight (mkelongw 'ImageResizeNN 3 newHeight)))
            (when newHeight
                (pragma "ImageResizeNN(im, (int)$1, (int)$2)"
                        ($belong->elong newWidth)
                        ($belong->elong newHeight))
                NULL))))

(defbuiltin (imageresizecanvas image newWidth newHeight offsetX offsetY fill)
    (%ensure-image
        'ImageResizeCanvas
        (unless (elong? newWidth)
            (set! newWidth (mkelongw 'ImageResizeCanvas 2 newWidth)))
        (when newWidth
            (unless (elong? newHeight)
                (set! newHeight (mkelongw 'ImageResizeCanvas 3 newHeight)))
            (when newHeight
                (unless (elong? offsetX)
                    (set! offsetX (mkelongw 'ImageResizeCanvas 4 offsetX)))
                (when offsetX
                    (unless (elong? offsetY)
                        (set! offsetY (mkelongw 'ImageResizeCanvas 5 offsetY)))
                    (when offsetY
                        (pragma "Color fill")
                        (when (%init-c-color 'ImageResizeCanvas 6 fill "fill")
                            (pragma "ImageResizeCanvas(im, (int)$1, (int)$2, (int)$3, (int)$4, fill)"
                                    ($belong->elong newWidth)
                                    ($belong->elong newHeight)
                                    ($belong->elong offsetX)
                                    ($belong->elong offsetY))
                            NULL)))))))

(defbuiltin (imagemipmaps image)
    (%ensure-image
        'ImageMipmaps
        (pragma "ImageMipmaps(im)")
        NULL))

(defbuiltin (imagedither image rBpp gBpp bBpp aBpp)
    (%ensure-image
        'ImageDither
        (unless (elong? rBpp)
            (set! rBpp (mkelongw 'ImageDither 2 rBpp)))
        (when rBpp
            (unless (elong? gBpp)
                (set! gBpp (mkelongw 'ImageDither 3 gBpp)))
            (when gBpp
                (unless (elong? bBpp)
                    (set! bBpp (mkelongw 'ImageDither 4 bBpp)))
                (when bBpp
                    (unless (elong? aBpp)
                        (set! aBpp (mkelongw 'ImageDither 5 aBpp)))
                    (when aBpp
                        (pragma "ImageDither(im, (int)$1, (int)$2, (int)$3, (int)$4)"
                                ($belong->elong rBpp)
                                ($belong->elong gBpp)
                                ($belong->elong bBpp)
                                ($belong->elong aBpp))
                        NULL))))))

(defbuiltin (imageflipvertical image)
    (%ensure-image
        'ImageFlipVertical
        (pragma "ImageFlipVertical(im)")
        NULL))

(defbuiltin (imagefliphorizontal image)
    (%ensure-image
        'ImageFlipHorizontal
        (pragma "ImageFlipHorizontal(im)")
        NULL))

(defbuiltin (imagerotate image degrees)
    (%ensure-image
        'ImageRotate
        (unless (elong? degrees)
            (set! degrees (mkelongw 'ImageRotate 2 degrees)))
        (when degrees
            (pragma "ImageRotate(im, (int)$1)"
                    ($belong->elong degrees))
            NULL)))

(defbuiltin (imagerotatecw image)
    (%ensure-image
        'ImageRotateCW
        (pragma "ImageRotateCW(im)")
        NULL))

(defbuiltin (imagerotateccw image)
    (%ensure-image
        'ImageRotateCCW
        (pragma "ImageRotateCCW(im)")
        NULL))

(defbuiltin (imagecolortint image color)
    (%ensure-image
        'ImageColorTint
        (pragma "Color c")
        (when (%init-c-color 'ImageColorTint 2 color "c")
            (pragma "ImageColorTint(im, c)")
            NULL)))

(defbuiltin (imagecolorinvert image)
    (%ensure-image
        'ImageColorInvert
        (pragma "ImageColorInvert(im)")
        NULL))

(defbuiltin (imagecolorgrayscale image)
    (%ensure-image
        'ImageColorGrayscale
        (pragma "ImageColorGrayscale(im)")
        NULL))

(defbuiltin (imagecolorcontrast image contrast)
    (%ensure-image
        'ImageColorContrast
        (unless (flonum? contrast)
            (set! contrast (mkflonumw 'ImageColorContrast 2 contrast)))
        (when contrast
            (pragma "ImageColorContrast(im, (float)$1)"
                    ($real->double contrast))
            NULL)))

(defbuiltin (imagecolorbrightness image brightness)
    (%ensure-image
        'ImageColorBrightness
        (unless (elong? brightness)
            (set! brightness (mkelongw 'ImageColorBrightness 2 brightness)))
        (when brightness
            (pragma "ImageColorBrightness(im, (int)$1)"
                    ($belong->elong brightness))
            NULL)))

(defbuiltin (imagecolorreplace image color replace)
    (%ensure-image
        'ImageColorReplace
        (pragma "Color color, replace")
        (when (and (%init-c-color 'ImageColorReplace 2 color "color")
                   (%init-c-color 'ImageColorReplace 3 replace "replace"))
            (pragma "ImageColorReplace(im, color, replace)")
            NULL)))

(defbuiltin (loadimagecolors image)
    (%ensure-image
        'LoadImageColors
        (pragma "Color *pixels = LoadImageColors(*im);
                 int size = im->width * im->height;
                 obj_t ret = bpc_make_php_hash_size_hint(size);
                 for (int i = 0; i < size; i++) {
                    obj_t c = bpc_make_php_hash_size_hint(4);
                    bpc_php_hash_insert_elong_elong(c, 0, pixels[i].r);
                    bpc_php_hash_insert_elong_elong(c, 1, pixels[i].g);
                    bpc_php_hash_insert_elong_elong(c, 2, pixels[i].b);
                    bpc_php_hash_insert_elong_elong(c, 3, pixels[i].a);
                    bpc_php_hash_insert_elong_obj(ret, i, c);
                 }
                 UnloadImageColors(pixels)")
        (pragma::obj "ret")))

(defbuiltin (loadimagepalette image maxPaletteSize (ref . colorCount))
    (%ensure-image
        'LoadImagePalette
        (unless (elong? maxPaletteSize)
            (set! maxPaletteSize (mkelongw 'LoadImagePalette 2 maxPaletteSize)))
        (when maxPaletteSize
            (pragma "Color *palette;
                     int colorCount;")
            (pragma "palette = LoadImagePalette(*im, (int)$1, &colorCount)"
                    ($belong->elong maxPaletteSize))
            (pragma "obj_t ret = bpc_make_php_hash_size_hint(colorCount);
                     for (int i = 0; i < colorCount; i++) {
                        obj_t c = bpc_make_php_hash_size_hint(4);
                        bpc_php_hash_insert_elong_elong(c, 0, palette[i].r);
                        bpc_php_hash_insert_elong_elong(c, 1, palette[i].g);
                        bpc_php_hash_insert_elong_elong(c, 2, palette[i].b);
                        bpc_php_hash_insert_elong_elong(c, 3, palette[i].a);
                        bpc_php_hash_insert_elong_obj(ret, i, c);
                     }
                     UnloadImagePalette(palette)")
            (container-value-set! colorCount (pragma::elong "colorCount"))
            (pragma::obj "ret"))))

(defbuiltin (getimagealphaborder image threshold)
    (%ensure-image
        'GetImageAlphaBorder
        (unless (flonum? threshold)
            (set! threshold (mkflonumw 'GetImageAlphaBorder 2 threshold)))
        (when threshold
            (pragma "Rectangle r")
            (pragma "r = GetImageAlphaBorder(*im, (float)$1)"
                    ($real->double threshold))
            (%mkrect-r "r"))))

(defbuiltin (getimagecolor image x y)
    (%ensure-image
        'GetImageColor
        (unless (elong? x)
            (set! x (mkelongw 'GetImageColor 2 x)))
        (when x
            (unless (elong? y)
                (set! y (mkelongw 'GetImageColor 3 y)))
            (when y
                (pragma "Color c")
                (pragma "c = GetImageColor(*im, (int)$1, (int)$2)"
                        ($belong->elong x)
                        ($belong->elong y))
                (%mkcolor-c "c")))))

; Texture loading functions

(define-macro (%mktexture t)
    `(let ((texture (make-php-hash 5)))
        (php-hash-insert! texture "id"      (pragma::elong ,(string-append t ".id")))
        (php-hash-insert! texture "width"   (pragma::elong ,(string-append t ".width")))
        (php-hash-insert! texture "height"  (pragma::elong ,(string-append t ".height")))
        (php-hash-insert! texture "mipmaps" (pragma::elong ,(string-append t ".mipmaps")))
        (php-hash-insert! texture "format"  (pragma::elong ,(string-append t ".format")))
        texture))

(define-macro (%mkrendertexture rt)
    `(let ((render-texture (make-php-hash 3)))
        (php-hash-insert! render-texture "id"      (pragma::elong ,(string-append rt ".id")))
        (php-hash-insert! render-texture "texture" (%mktexture ,(string-append rt ".texture")))
        (php-hash-insert! render-texture "depth"   (%mktexture ,(string-append rt ".depth")))
        render-texture))

(defbuiltin (loadtexture fileName)
    (set! fileName (mkpathw 'LoadTexture 1 fileName))
    (when fileName
        (pragma "Texture2D t")
        (pragma "t = LoadTexture($1)" ($bstring->string fileName))
        (%mktexture "t")))

(defbuiltin (loadtexturefromimage image)
    (%ensure-image
        'LoadTextureFromImage
        (begin
            (pragma "Texture2D t")
            (pragma "t = LoadTextureFromImage(*im)")
            (%mktexture "t"))))

(defbuiltin (loadtexturecubemap image layout)
    (%ensure-image
        'LoadTextureCubemap
        (begin
            (unless (elong? layout)
                (set! layout (mkelongw 'LoadTextureCubemap 2 layout)))
            (when layout
                (pragma "TextureCubemap t")
                (pragma "t = LoadTextureCubemap(*im, (int)$1)"
                        ($belong->elong layout))
                (%mktexture "t")))))

(defbuiltin (loadrendertexture width height)
    (unless (elong? width)
        (set! width (mkelongw 'LoadRenderTexture 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'LoadRenderTexture 2 height)))
        (when height
            (pragma "RenderTexture2D rt")
            (pragma "rt = LoadRenderTexture((int)$1, (int)$2)"
                    ($belong->elong width)
                    ($belong->elong height))
            (%mkrendertexture "rt"))))

(defbuiltin (istextureready texture)
    (pragma "Texture2D t")
    (when (%init-c-texture 'IsTextureReady 1 texture "t")
        (pragma::bool "IsTextureReady(t)")))

(defbuiltin (unloadtexture texture)
    (pragma "Texture2D t")
    (when (%init-c-texture 'UnloadTexture 1 texture "t")
        (pragma "UnloadTexture(t)"))
    NULL)

(defbuiltin (isrendertextureready target)
    (pragma "RenderTexture2D target")
    (when (%init-c-render-texture 'IsRenderTextureReady 1 target "target")
        (pragma::bool "IsRenderTextureReady(target)")))

(defbuiltin (unloadrendertexture target)
    (pragma "RenderTexture2D target")
    (when (%init-c-render-texture 'UnloadRenderTexture 1 target "target")
        (pragma "UnloadRenderTexture(target)"))
    NULL)

; TODO: void UpdateTexture(Texture2D texture, const void *pixels);
; TODO: void UpdateTextureRec(Texture2D texture, Rectangle rec, const void *pixels);

; Color/pixel related functions

(defbuiltin (fade color alpha)
    (pragma "Color c")
    (when (%init-c-color 'Fade 1 color "c")
        (unless (flonum? alpha)
            (set! alpha (mkflonumw 'Fade 2 alpha)))
        (when alpha
            (pragma "Color f")
            (pragma "f = Fade(c, (float)$1)" ($real->double alpha))
            (%mkcolor-c "f"))))

(defbuiltin (colortoint color)
    (pragma "Color c")
    (when (%init-c-color 'ColorToInt 1 color "c")
        (pragma::elong "ColorToInt(c)")))

(defbuiltin (colornormalize color)
    (pragma "Color c")
    (when (%init-c-color 'ColorNormalize 1 color "c")
        (pragma "Vector4 v4 = ColorNormalize(c)")
        (%mkvector4-v "v4")))

(defbuiltin (colorfromnormalized normalized)
    (pragma "Vector4 v4")
    (when (%init-c-vector4 'ColorFromNormalized 1 normalized "v4")
        (pragma "Color c = ColorFromNormalized(v4)")
        (%mkcolor-c "c")))

(defbuiltin (colortohsv color)
    (pragma "Color c")
    (when (%init-c-color 'ColorToHSV 1 color "c")
        (pragma "Vector3 v3 = ColorToHSV(c)")
        (%mkvector3-v "v3")))

(defbuiltin (colorfromhsv hue saturation value)
    (unless (flonum? hue)
        (set! hue (mkflonumw 'ColorFromHSV 1 hue)))
    (when hue
        (unless (flonum? saturation)
            (set! saturation (mkflonumw 'ColorFromHSV 2 saturation)))
        (when saturation
            (unless (flonum? value)
                (set! value (mkflonumw 'ColorFromHSV 3 value)))
            (when value
                (pragma "Color c")
                (pragma "c = ColorFromHSV((float)$1, (float)$2, (float)$3)"
                        ($real->double hue)
                        ($real->double saturation)
                        ($real->double value))
                (%mkcolor-c "c")))))

(defbuiltin (colortint color tint)
    (pragma "Color c, t")
    (when (and (%init-c-color 'ColorTint 1 color "c")
               (%init-c-color 'ColorTint 2 tint "t"))
        (pragma "c = ColorTint(c, t)")
        (%mkcolor-c "c")))

(defbuiltin (colorbrightness color factor)
    (pragma "Color c")
    (when (%init-c-color 'ColorBrightness 1 color "c")
        (unless (flonum? factor)
            (set! factor (mkflonumw 'ColorBrightness 2 factor)))
        (when factor
            (pragma "c = ColorBrightness(c, (float)$1)"
                    ($real->double factor))
            (%mkcolor-c "c"))))

(defbuiltin (colorcontrast color contrast)
    (pragma "Color c")
    (when (%init-c-color 'ColorContrast 1 color "c")
        (unless (flonum? contrast)
            (set! contrast (mkflonumw 'ColorContrast 2 contrast)))
        (when contrast
            (pragma "c = ColorContrast(c, (float)$1)"
                    ($real->double contrast))
            (%mkcolor-c "c"))))

(defbuiltin (coloralpha color alpha)
    (pragma "Color c")
    (when (%init-c-color 'ColorAlpha 1 color "c")
        (unless (flonum? alpha)
            (set! alpha (mkflonumw 'ColorAlpha 2 alpha)))
        (when alpha
            (pragma "c = ColorAlpha(c, (float)$1)"
                    ($real->double alpha))
            (%mkcolor-c "c"))))

(defbuiltin (coloralphablend dst src tint)
    (pragma "Color dst, src, tint")
    (when (and (%init-c-color 'ColorAlphaBlend 1 dst "dst")
               (%init-c-color 'ColorAlphaBlend 2 src "src")
               (%init-c-color 'ColorAlphaBlend 3 tint "tint"))
        (pragma "Color c = ColorAlphaBlend(dst, src, tint)")
        (%mkcolor-c "c")))

(defbuiltin (getcolor hexValue)
    (unless (elong? hexValue)
        (set! hexValue (mkelongw 'GetColor 1 hexValue)))
    (when hexValue
        (pragma "Color c")
        (pragma "c = GetColor((unsigned int)$1)"
                ($belong->elong hexValue))
        (%mkcolor-c "c")))

;TODO Color GetPixelColor(void *srcPtr, int format);
;TODO void SetPixelColor(void *dstPtr, Color color, int format);

(defbuiltin (getpixeldatasize width height format)
    (unless (elong? width)
        (set! width (mkelongw 'GetPixelDataSize 1 width)))
    (when width
        (unless (elong? height)
            (set! height (mkelongw 'GetPixelDataSize 2 height)))
        (when height
            (unless (elong? format)
                (set! format (mkelongw 'GetPixelDataSize 3 format)))
            (when format
                (pragma::elong "GetPixelDataSize((int)$1, (int)$2, (int)$3)"
                               ($belong->elong width)
                               ($belong->elong height)
                               ($belong->elong format))))))

; Font loading/unloading functions

(defresource %Font "raylib Font" intern)
(defresource %Glyphs "raylib Glyphs" glyphs glyphCount)

(defbuiltin (getfontdefault)
    (pragma "Font *font = (Font *)GC_MALLOC_ATOMIC(sizeof(Font));
             *font = GetFontDefault()")
    (make-resource %Font (pragma::void* "font")))

(defbuiltin (loadfont fileName)
    (set! fileName (mkpathw 'LoadFont 1 fileName))
    (when fileName
        (pragma "Font *font = (Font *)GC_MALLOC_ATOMIC(sizeof(Font))")
        (pragma "*font = LoadFont($1)" ($bstring->string fileName))
        (make-resource %Font (pragma::void* "font"))))

(define-macro (%with-c-codepoints func-name arg-idx . code)
    `(begin
        (pragma "int *codepoints = NULL;
                 int codepointCount = 0")
        (unless (null? codepoints)
            (set! codepoints (mkhashw ,func-name ,arg-idx codepoints))
            (when codepoints
                (let ((size (php-hash-size codepoints)))
                    (when (>fx size 0)
                        (pragma "codepoints = (int *)GC_MALLOC_ATOMIC(sizeof(int) * $1)"
                                ($bint->int size))
                        (let loop ((cp (php-hash-reset codepoints 'cont)))
                            (when cp
                                (set! cp (container-value cp))
                                (unless (elong? cp)
                                    (set! cp (or (mkelong cp 'arg-parsing)
                                                 (php-warning ,func-name "() expects parameter " ,arg-idx " to be array of integers, " (get-php-datatype cp 'arg-parsing) " given"))))
                                (when cp
                                    (pragma "codepoints[codepointCount++] = (int)$1" ($belong->elong cp)))
                                (loop (php-hash-advance codepoints 'cont))))
                        (pragma "if (codepointCount == 0) {
                                    codepoints = NULL;
                                 }")))))
        ,@code))

(defbuiltin (loadfontex fileName fontSize (codepoints NULL))
    (set! fileName (mkpathw 'LoadFontEx 1 fileName))
    (when fileName
        (unless (elong? fontSize)
            (set! fontSize (mkelongw 'LoadFontEx 2 fontSize)))
        (when fontSize
            (%with-c-codepoints
                'LoadFontEx
                3
                (pragma "Font *font = (Font *)GC_MALLOC_ATOMIC(sizeof(Font))")
                (pragma "*font = LoadFontEx($1, (int)$2, codepoints, codepointCount)"
                        ($bstring->string fileName)
                        ($belong->elong fontSize))
                (make-resource %Font (pragma::void* "font"))))))

(defbuiltin (loadfontfromimage image key firstChar)
    (%ensure-image
        'LoadFontFromImage
        (begin
            (pragma "Color key")
            (when (%init-c-color 'LoadFontFromImage 2 key "key")
                (unless (elong? firstChar)
                    (set! firstChar (mkelongw 'LoadFontFromImage 3 firstChar)))
                (when firstChar
                    (pragma "Font *font = (Font *)GC_MALLOC_ATOMIC(sizeof(Font))")
                    (pragma "*font = LoadFontFromImage(*im, key, (int)$1)"
                            ($belong->elong firstChar))
                    (make-resource %Font (pragma::void* "font")))))))

(defbuiltin (loadfontfrommemory fileType fileData fontSize codepoints)
    (unless (string? fileType)
        (set! fileType (mkstrw 'LoadFontFromMemory 1 fileType)))
    (when fileType
        (unless (string? fileData)
            (set! fileData (mkstrw 'LoadFontFromMemory 2 fileData)))
        (when fileData
            (unless (elong? fontSize)
                (set! fontSize (mkelongw 'LoadFontFromMemory 3 fontSize)))
            (when fontSize
                (%with-c-codepoints
                    'LoadFontFromMemory
                    4
                    (pragma "Font *font = (Font *)GC_MALLOC_ATOMIC(sizeof(Font))")
                    (pragma "*font = LoadFontFromMemory($1, BSTRING_TO_STRING($2), STRING_LENGTH($2), (int)$3, codepoints, codepointCount)"
                            ($bstring->string fileType)
                            fileData
                            ($belong->elong fontSize))
                    (make-resource %Font (pragma::void* "font")))))))

(defbuiltin (isfontready font)
    (%ensure-font
        'IsFontReady
        (pragma::bool "IsFontReady(*font)")))

(defbuiltin (loadfontdata fileData fontSize codepoints type)
    (unless (string? fileData)
        (set! fileData (mkstrw 'LoadFontData 1 fileData)))
    (when fileData
        (unless (elong? fontSize)
            (set! fontSize (mkelongw 'LoadFontData 2 fontSize)))
        (when fontSize
            (%with-c-codepoints
                'LoadFontData
                3
                (unless (elong? type)
                    (set! type (mkelongw 'LoadFontData 4 type)))
                (when type
                    (pragma "GlyphInfo *glyphs")
                    (pragma "glyphs = LoadFontData(BSTRING_TO_STRING($1), STRING_LENGTH($1), (int)$2, codepoints, codepointCount, (int)$3)"
                            fileData
                            ($belong->elong fontSize)
                            ($belong->elong type))
                    (make-resource %Glyphs (pragma::void* "glyphs") (pragma::int "codepointCount")))))))

(defbuiltin (genimagefontatlas glyphs (ref . glyphRecs) fontSize padding packMethod)
    (%ensure-glyphs
        (unless (elong? fontSize)
            (set! fontSize (mkelongw 'GenImageFontAtlas 3 fontSize)))
        (when fontSize
            (unless (elong? padding)
                (set! padding (mkelongw 'GenImageFontAtlas 4 padding)))
            (when padding
                (unless (elong? packMethod)
                    (set! packMethod (mkelongw 'GenImageFontAtlas 5 packMethod)))
                (when packMethod
                    (pragma "Image *im = (Image *)GC_MALLOC_ATOMIC(sizeof(Image));
                             Rectangle *recs;")
                    (pragma "*im = GenImageFontAtlas(glyphs, &recs, glyphCount, (int)$1, (int)$2, (int)$3)"
                            ($belong->elong fontSize)
                            ($belong->elong padding)
                            ($belong->elong packMethod))
                    (pragma "obj_t glyphRecs = bpc_make_php_hash_size_hint(glyphCount);
                             for (int i = 0; i < glyphCount; i++) {
                                obj_t rect = bpc_make_php_hash_size_hint(4);
                                bpc_php_hash_insert_elong_obj(rect, 0, DOUBLE_TO_REAL(recs[i].x));
                                bpc_php_hash_insert_elong_obj(rect, 1, DOUBLE_TO_REAL(recs[i].y));
                                bpc_php_hash_insert_elong_obj(rect, 2, DOUBLE_TO_REAL(recs[i].width));
                                bpc_php_hash_insert_elong_obj(rect, 3, DOUBLE_TO_REAL(recs[i].height));
                                bpc_php_hash_insert_elong_obj(glyphRecs, i, rect);
                             }
                             RL_FREE(recs)")
                    (container-value-set! glyphRecs (pragma::obj "glyphRecs"))
                    (make-resource %Image (pragma::void* "im")))))))

(defbuiltin (unloadfontdata glyphs)
    (%ensure-glyphs
        'UnloadFontData
        (pragma "UnloadFontData(glyphs, glyphCount)")
        (%Glyphs-glyphs-set! glyphs #f)
        (%Glyphs-glyphCount-set! glyphs 0)
        (%Glyphs-description-set! glyphs #f)
        NULL))

(defbuiltin (unloadfont font)
    (%ensure-font
        'UnloadFont
        (pragma "UnloadFont(*font)")
        (%Font-intern-set! font #f)
        (%Font-description-set! font #f)
        NULL))

(defbuiltin (exportfontascode font fileName)
    (%ensure-font
        'ExportFontAsCode
        (set! fileName (mkpathw 'ExportFontAsCode 2 fileName))
        (when fileName
            (pragma::bool "ExportFontAsCode(*font, $1)"
                          ($bstring->string fileName)))))

; Input-related functions: keyboard

(defbuiltin (iskeypressed key)
    (unless (elong? key)
        (set! key (mkelongw 'IsKeyPressed 1 key)))
    (when key
        (pragma::bool "IsKeyPressed((int)$1)" ($belong->elong key))))

(defbuiltin (iskeypressedrepeat key)
    (unless (elong? key)
        (set! key (mkelongw 'IsKeyPressedRepeat 1 key)))
    (when key
        (pragma::bool "IsKeyPressedRepeat((int)$1)" ($belong->elong key))))

(defbuiltin (iskeydown key)
    (unless (elong? key)
        (set! key (mkelongw 'IsKeyDown 1 key)))
    (when key
        (pragma::bool "IsKeyDown((int)$1)" ($belong->elong key))))

(defbuiltin (iskeyreleased key)
    (unless (elong? key)
        (set! key (mkelongw 'IsKeyReleased 1 key)))
    (when key
        (pragma::bool "IsKeyReleased((int)$1)" ($belong->elong key))))

(defbuiltin (iskeyup key)
    (unless (elong? key)
        (set! key (mkelongw 'IsKeyUp 1 key)))
    (when key
        (pragma::bool "IsKeyUp((int)$1)" ($belong->elong key))))

(defbuiltin (getkeypressed)
    (pragma::elong "GetKeyPressed()"))

(defbuiltin (getcharpressed)
    (pragma::elong "GetCharPressed()"))

(defbuiltin (setexitkey key)
    (unless (elong? key)
        (set! key (mkelongw 'SetExitKey 1 key)))
    (when key
        (pragma "SetExitKey((int)$1)" ($belong->elong key))
        NULL))

; Input-related functions: mouse

(defbuiltin (ismousebuttonpressed button)
    (unless (elong? button)
        (set! button (mkelongw 'IsMouseButtonPressed 1 button)))
    (when button
        (pragma::bool "IsMouseButtonPressed((int)$1)"
                      ($belong->elong button))))

(defbuiltin (ismousebuttondown button)
    (unless (elong? button)
        (set! button (mkelongw 'IsMouseButtonDown 1 button)))
    (when button
        (pragma::bool "IsMouseButtonDown((int)$1)"
                      ($belong->elong button))))

(defbuiltin (ismousebuttonreleased button)
    (unless (elong? button)
        (set! button (mkelongw 'IsMouseButtonReleased 1 button)))
    (when button
        (pragma::bool "IsMouseButtonReleased((int)$1)"
                      ($belong->elong button))))

(defbuiltin (ismousebuttonup button)
    (unless (elong? button)
        (set! button (mkelongw 'IsMouseButtonUp 1 button)))
    (when button
        (pragma::bool "IsMouseButtonUp((int)$1)"
                      ($belong->elong button))))

(defbuiltin (getmousex)
    (pragma::elong "GetMouseX()"))

(defbuiltin (getmousey)
    (pragma::elong "GetMouseY()"))

(defbuiltin (getmouseposition)
    (pragma "Vector2 v2 = GetMousePosition()")
    (%mkvector2-v "v2"))

(defbuiltin (getmousedelta)
    (pragma "Vector2 v2 = GetMouseDelta()")
    (%mkvector2-v "v2"))

(defbuiltin (setmouseposition x y)
    (unless (elong? x)
        (set! x (mkelongw 'SetMousePosition 1 x)))
    (when x
        (unless (elong? y)
            (set! y (mkelongw 'SetMousePosition 2 y)))
        (when y
            (pragma "SetMousePosition((int)$1, (int)$2)"
                    ($belong->elong x)
                    ($belong->elong y))
            NULL)))

(defbuiltin (setmouseoffset offsetX offsetY)
    (unless (elong? offsetX)
        (set! offsetX (mkelongw 'SetMouseOffset 1 offsetX)))
    (when offsetX
        (unless (elong? offsetY)
            (set! offsetY (mkelongw 'SetMousePosition 2 offsetY)))
        (when offsetY
            (pragma "SetMouseOffset((int)$1, (int)$2)"
                    ($belong->elong offsetX)
                    ($belong->elong offsetY))
            NULL)))

(defbuiltin (setmousescale scaleX scaleY)
    (unless (flonum? scaleX)
        (set! scaleX (mkflonumw 'SetMouseScale 1 scaleX)))
    (when scaleX
        (unless (flonum? scaleY)
            (set! scaleY (mkflonumw 'SetMouseScale 2 scaleY)))
        (when scaleY
            (pragma "SetMouseScale((float)$1, (float)$2)"
                    ($real->double scaleX)
                    ($real->double scaleY))
            NULL)))

(defbuiltin (getmousewheelmove)
    (pragma::double "GetMouseWheelMove()"))

(defbuiltin (getmousewheelmovev)
    (pragma "Vector2 v2 = GetMouseWheelMoveV()")
    (%mkvector2-v "v2"))

(defbuiltin (setmousecursor cursor)
    (unless (elong? cursor)
        (set! cursor (mkelongw 'SetMouseCursor 1 cursor)))
    (when cursor
        (pragma "SetMouseCursor((int)$1)"
                ($belong->elong cursor))
        NULL))

; Random values generation functions

(defbuiltin (setrandomseed seed)
    (unless (elong? seed)
        (set! seed (mkelongw 'SetRandomSeed 1 seed)))
    (when seed
        (pragma "SetRandomSeed((unsigned int)$1)"
                ($belong->elong seed))
        NULL))

(defbuiltin (getrandomvalue min max)
    (unless (elong? min)
        (set! min (mkelongw 'GetRandomValue 1 min)))
    (when min
        (unless (elong? max)
            (set! max (mkelongw 'GetRandomValue 2 max)))
        (when max
            (pragma::elong "GetRandomValue((int)$1, (int)$2)"
                           ($belong->elong min)
                           ($belong->elong max)))))

(defbuiltin (loadrandomsequence count min max)
    (unless (elong? count)
        (set! count (mkelongw 'LoadRandomSequence 1 count)))
    (when count
        (unless (elong? min)
            (set! min (mkelongw 'LoadRandomSequence 2 min)))
        (when min
            (unless (elong? max)
                (set! max (mkelongw 'LoadRandomSequence 3 max)))
            (when max
                (pragma "obj_t ret = BNIL")
                (pragma "unsigned int count = (unsigned int)$1;
                         int *sequence = LoadRandomSequence(count, (int)$2, (int)$3);
                         if (sequence) {
                             ret = bpc_make_php_hash_size_hint(count);
                             for (int i = 0; i < count; i++) {
                                bpc_php_hash_insert_elong_elong(ret, i, sequence[i]);
                             }
                             UnloadRandomSequence(sequence);
                         }"
                        ($belong->elong count)
                        ($belong->elong min)
                        ($belong->elong max))
                (pragma::obj "ret")))))

; Basic geometric 3D shapes drawing functions

(defbuiltin (drawline3d startPos endPos color)
    (pragma "Vector3 startPos, endPos;
             Color c")
    (when (and (%init-c-vector3 'DrawLine3D 1 startPos "startPos")
               (%init-c-vector3 'DrawLine3D 2 endPos "endPos")
               (%init-c-color 'DrawLine3D 3 color "c"))
        (pragma "DrawLine3D(startPos, endPos, c)")
        NULL))

(defbuiltin (drawpoint3d position color)
    (pragma "Vector3 pos;
             Color c")
    (when (and (%init-c-vector3 'DrawPoint3D 1 position "pos")
               (%init-c-color 'DrawPoint3D 2 color "c"))
        (pragma "DrawPoint3D(pos, c)")
        NULL))

(defbuiltin (drawcircle3d center radius rotationAxis rotationAngle color)
    (pragma "Vector3 center")
    (when (%init-c-vector3 'DrawCircle3D 1 center "center")
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawCircle3D 2 radius)))
        (when radius
            (pragma "Vector3 rotationAxis")
            (when (%init-c-vector3 'DrawCircle3D 3 rotationAxis "rotationAxis")
                (unless (flonum? rotationAngle)
                    (set! rotationAngle (mkflonumw 'DrawCircle3D 4 rotationAngle)))
                (when rotationAngle
                    (pragma "Color c")
                    (when (%init-c-color 'DrawCircle3D 5 color "c")
                        (pragma "DrawCircle3D(center, (float)$1, rotationAxis, (float)$2, c)"
                                ($real->double radius)
                                ($real->double rotationAngle))
                        NULL))))))

(defbuiltin (drawtriangle3d v1 v2 v3 color)
    (pragma "Vector3 v1, v2, v3;
             Color c")
    (when (and (%init-c-vector3 'DrawTriangle3D 1 v1 "v1")
               (%init-c-vector3 'DrawTriangle3D 2 v2 "v2")
               (%init-c-vector3 'DrawTriangle3D 3 v3 "v3")
               (%init-c-color 'DrawTriangle3D 4 color "c"))
        (pragma "DrawTriangle3D(v1, v2, v3, c)")
        NULL))

(defbuiltin (drawtrianglestrip3d points color)
    (%with-c-vector3-points
        'DrawTriangleStrip3D
        1
        (pragma "Color c")
        (when (%init-c-color 'DrawTriangleStrip3D 2 color "c")
            (pragma "DrawTriangleStrip3D(points, pointCount, c)")
            NULL)))

(defbuiltin (drawcube position width height length color)
    (pragma "Vector3 pos")
    (when (%init-c-vector3 'DrawCube 1 position "pos")
        (unless (flonum? width)
            (set! width (mkflonumw 'DrawCube 2 width)))
        (when width
            (unless (flonum? height)
                (set! height (mkflonumw 'DrawCube 3 height)))
            (when height
                (unless (flonum? length)
                    (set! length (mkflonumw 'DrawCube 4 length)))
                (when length
                    (pragma "Color c")
                    (when (%init-c-color 'DrawCube 5 color "c")
                        (pragma "DrawCube(pos, (float)$1, (float)$2, (float)$3, c)"
                                ($real->double width)
                                ($real->double height)
                                ($real->double length))
                        NULL))))))

(defbuiltin (drawcubev position size color)
    (pragma "Vector3 pos, size;
             Color c")
    (when (and (%init-c-vector3 'DrawCubeV 1 position "pos")
               (%init-c-vector3 'DrawCubeV 2 size "size")
               (%init-c-color 'DrawCubeV 3 color "c"))
        (pragma "DrawCubeV(pos, size, c)")
        NULL))

(defbuiltin (drawcubewires position width height length color)
    (pragma "Vector3 pos")
    (when (%init-c-vector3 'DrawCubeWires 1 position "pos")
        (unless (flonum? width)
            (set! width (mkflonumw 'DrawCubeWires 2 width)))
        (when width
            (unless (flonum? height)
                (set! height (mkflonumw 'DrawCubeWires 3 height)))
            (when height
                (unless (flonum? length)
                    (set! length (mkflonumw 'DrawCubeWires 4 length)))
                (when length
                    (pragma "Color c")
                    (when (%init-c-color 'DrawCubeWires 5 color "c")
                        (pragma "DrawCubeWires(pos, (float)$1, (float)$2, (float)$3, c)"
                                ($real->double width)
                                ($real->double height)
                                ($real->double length))
                        NULL))))))

(defbuiltin (drawcubewiresv position size color)
    (pragma "Vector3 pos, size;
             Color c")
    (when (and (%init-c-vector3 'DrawCubeWiresV 1 position "pos")
               (%init-c-vector3 'DrawCubeWiresV 2 size "size")
               (%init-c-color 'DrawCubeWiresV 3 color "c"))
        (pragma "DrawCubeWiresV(pos, size, c)")
        NULL))

(defbuiltin (drawsphere centerPos radius color)
    (pragma "Vector3 center")
    (when (%init-c-vector3 'DrawSphere 1 centerPos "center")
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawSphere 2 radius)))
        (when radius
            (pragma "Color c")
            (when (%init-c-color 'DrawSphere 3 color "c")
                (pragma "DrawSphere(center, (float)$1, c)"
                        ($real->double radius))
                NULL))))

(defbuiltin (drawsphereex centerPos radius rings slices color)
    (pragma "Vector3 center")
    (when (%init-c-vector3 'DrawSphereEx 1 centerPos "center")
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawSphereEx 2 radius)))
        (when radius
            (unless (elong? rings)
                (set! rings (mkelongw 'DrawSphereEx 3 rings)))
            (when rings
                (unless (elong? slices)
                    (set! slices (mkelongw 'DrawSphereEx 4 slices)))
                (when slices
                    (pragma "Color c")
                    (when (%init-c-color 'DrawSphereEx 5 color "c")
                        (pragma "DrawSphereEx(center, (float)$1, (int)$2, (int)$3, c)"
                                ($real->double radius)
                                ($belong->elong rings)
                                ($belong->elong slices))
                        NULL))))))

(defbuiltin (drawspherewires centerPos radius rings slices color)
    (pragma "Vector3 center")
    (when (%init-c-vector3 'DrawSphereWires 1 centerPos "center")
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawSphereWires 2 radius)))
        (when radius
            (unless (elong? rings)
                (set! rings (mkelongw 'DrawSphereWires 3 rings)))
            (when rings
                (unless (elong? slices)
                    (set! slices (mkelongw 'DrawSphereWires 4 slices)))
                (when slices
                    (pragma "Color c")
                    (when (%init-c-color 'DrawSphereWires 5 color "c")
                        (pragma "DrawSphereWires(center, (float)$1, (int)$2, (int)$3, c)"
                                ($real->double radius)
                                ($belong->elong rings)
                                ($belong->elong slices))
                        NULL))))))

(defbuiltin (drawcylinder position radiusTop radiusBottom height slices color)
    (pragma "Vector3 pos")
    (when (%init-c-vector3 'DrawCylinder 1 position "pos")
        (unless (flonum? radiusTop)
            (set! radiusTop (mkflonumw 'DrawCylinder 2 radiusTop)))
        (when radiusTop
            (unless (flonum? radiusBottom)
                (set! radiusBottom (mkflonumw 'DrawCylinder 3 radiusBottom)))
            (when radiusBottom
                (unless (flonum? height)
                    (set! height (mkflonumw 'DrawCylinder 4 height)))
                (when height
                    (unless (elong? slices)
                        (set! slices (mkelongw 'DrawCylinder 5 slices)))
                    (when slices
                        (pragma "Color c")
                        (when (%init-c-color 'DrawCylinder 6 color "c")
                            (pragma "DrawCylinder(pos, (float)$1, (float)$2, (float)$3, (int)$4, c)"
                                    ($real->double radiusTop)
                                    ($real->double radiusBottom)
                                    ($real->double height)
                                    ($belong->elong slices))
                            NULL)))))))

(defbuiltin (drawcylinderex startPos endPos startRadius endRadius sides color)
    (pragma "Vector3 startPos, endPos")
    (when (and (%init-c-vector3 'DrawCylinderEx 1 startPos "startPos")
               (%init-c-vector3 'DrawCylinderEx 2 endPos "endPos"))
        (unless (flonum? startRadius)
            (set! startRadius (mkflonumw 'DrawCylinderEx 3 startRadius)))
        (when startRadius
            (unless (flonum? endRadius)
                (set! endRadius (mkflonumw 'DrawCylinderEx 4 endRadius)))
            (when endRadius
                (unless (elong? sides)
                    (set! sides (mkelongw 'DrawCylinderEx 5 sides)))
                (when sides
                    (pragma "Color c")
                    (when (%init-c-color 'DrawCylinderEx 6 color "c")
                        (pragma "DrawCylinderEx(startPos, endPos, (float)$1, (float)$2, (int)$3, c)"
                                ($real->double startRadius)
                                ($real->double endRadius)
                                ($belong->elong sides))
                        NULL))))))

(defbuiltin (drawcylinderwires position radiusTop radiusBottom height slices color)
    (pragma "Vector3 pos")
    (when (%init-c-vector3 'DrawCylinderWires 1 position "pos")
        (unless (flonum? radiusTop)
            (set! radiusTop (mkflonumw 'DrawCylinderWires 2 radiusTop)))
        (when radiusTop
            (unless (flonum? radiusBottom)
                (set! radiusBottom (mkflonumw 'DrawCylinderWires 3 radiusBottom)))
            (when radiusBottom
                (unless (flonum? height)
                    (set! height (mkflonumw 'DrawCylinderWires 4 height)))
                (when height
                    (unless (elong? slices)
                        (set! slices (mkelongw 'DrawCylinderWires 5 slices)))
                    (when slices
                        (pragma "Color c")
                        (when (%init-c-color 'DrawCylinderWires 6 color "c")
                            (pragma "DrawCylinderWires(pos, (float)$1, (float)$2, (float)$3, (int)$4, c)"
                                    ($real->double radiusTop)
                                    ($real->double radiusBottom)
                                    ($real->double height)
                                    ($belong->elong slices))
                            NULL)))))))

(defbuiltin (drawcylinderwiresex startPos endPos startRadius endRadius sides color)
    (pragma "Vector3 startPos, endPos")
    (when (and (%init-c-vector3 'DrawCylinderWiresEx 1 startPos "startPos")
               (%init-c-vector3 'DrawCylinderWiresEx 2 endPos "endPos"))
        (unless (flonum? startRadius)
            (set! startRadius (mkflonumw 'DrawCylinderWiresEx 3 startRadius)))
        (when startRadius
            (unless (flonum? endRadius)
                (set! endRadius (mkflonumw 'DrawCylinderWiresEx 4 endRadius)))
            (when endRadius
                (unless (elong? sides)
                    (set! sides (mkelongw 'DrawCylinderWiresEx 5 sides)))
                (when sides
                    (pragma "Color c")
                    (when (%init-c-color 'DrawCylinderWiresEx 6 color "c")
                        (pragma "DrawCylinderWiresEx(startPos, endPos, (float)$1, (float)$2, (int)$3, c)"
                                ($real->double startRadius)
                                ($real->double endRadius)
                                ($belong->elong sides))
                        NULL))))))

(defbuiltin (drawcapsule startPos endPos radius slices rings color)
    (pragma "Vector3 startPos, endPos")
    (when (and (%init-c-vector3 'DrawCapsule 1 startPos "startPos")
               (%init-c-vector3 'DrawCapsule 2 endPos "endPos"))
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawCapsule 3 radius)))
        (when radius
            (unless (elong? slices)
                (set! slices (mkelongw 'DrawCapsule 4 slices)))
            (when slices
                (unless (elong? rings)
                    (set! rings (mkelongw 'DrawCapsule 5 rings)))
                (when rings
                    (pragma "Color c")
                    (when (%init-c-color 'DrawCapsule 6 color "c")
                        (pragma "DrawCapsule(startPos, endPos, (float)$1, (int)$2, (int)$3, c)"
                                ($real->double radius)
                                ($belong->elong slices)
                                ($belong->elong rings))
                        NULL))))))

(defbuiltin (drawcapsulewires startPos endPos radius slices rings color)
    (pragma "Vector3 startPos, endPos")
    (when (and (%init-c-vector3 'DrawCapsuleWires 1 startPos "startPos")
               (%init-c-vector3 'DrawCapsuleWires 2 endPos "endPos"))
        (unless (flonum? radius)
            (set! radius (mkflonumw 'DrawCapsuleWires 3 radius)))
        (when radius
            (unless (elong? slices)
                (set! slices (mkelongw 'DrawCapsuleWires 4 slices)))
            (when slices
                (unless (elong? rings)
                    (set! rings (mkelongw 'DrawCapsuleWires 5 rings)))
                (when rings
                    (pragma "Color c")
                    (when (%init-c-color 'DrawCapsuleWires 6 color "c")
                        (pragma "DrawCapsuleWires(startPos, endPos, (float)$1, (int)$2, (int)$3, c)"
                                ($real->double radius)
                                ($belong->elong slices)
                                ($belong->elong rings))
                        NULL))))))

(defbuiltin (drawplane centerPos size color)
    (pragma "Vector3 center;
             Vector2 size;
             Color c")
    (when (and (%init-c-vector3 'DrawPlane 1 centerPos "center")
               (%init-c-vector2 'DrawPlane 2 size "size")
               (%init-c-color 'DrawPlane 3 color "c"))
        (pragma "DrawPlane(center, size, c)")
        NULL))

(defbuiltin (drawray ray color)
    (pragma "Ray r;
             Color c")
    (when (and (%init-c-ray 'DrawRay 1 ray "r")
               (%init-c-color 'DrawRay 2 color "c"))
        (pragma "DrawRay(r, c)")
        NULL))

(defbuiltin (drawgrid slices spacing)
    (unless (elong? slices)
        (set! slices (mkelongw 'DrawGrid 1 slices)))
    (when slices
        (unless (flonum? spacing)
            (set! spacing (mkflonumw 'DrawGrid 2 spacing)))
        (when spacing
            (pragma "DrawGrid((int)$1, (float)$2)"
                    ($belong->elong slices)
                    ($real->double spacing))
            NULL)))
