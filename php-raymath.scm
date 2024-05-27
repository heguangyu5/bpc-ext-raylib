(module php-raymath
    (load (php-macros "/usr/local/lib/php-macros.scm"))
    (load (raylib-macros "raylib-macros.scm"))
    (extern
        (include "raymath.h"))
    (export
        ; Utils math
        (clamp value min max)
        ; Vector2 math
        (vector2add v1 v2)
        (vector2scale v scale)
        ))

; Utils math

(defbuiltin (clamp value min max)
    (unless (flonum? value)
        (set! value (mkflonumw 'Clamp 1 value)))
    (when value
        (unless (flonum? min)
            (set! min (mkflonumw 'Clamp 2 min)))
        (when min
            (unless (flonum? max)
                (set! max (mkflonumw 'Clamp 3 max)))
            (when max
                (pragma::double "Clamp((float)$1, (float)$2, (float)$3)"
                                ($real->double value)
                                ($real->double min)
                                ($real->double max))))))

; Vector2 math

(defbuiltin (vector2add v1 v2)
    (pragma "Vector2 v1, v2")
    (when (and (%init-c-vector2 'Vector2Add 1 v1 "v1")
               (%init-c-vector2 'Vector2Add 2 v2 "v2"))
        (pragma "Vector2 result = Vector2Add(v1, v2)")
        (%mkvector2-v "result")))

(defbuiltin (vector2scale v scale)
    (pragma "Vector2 v")
    (when (%init-c-vector2 'Vector2Scale 1 v "v")
        (unless (flonum? scale)
            (set! scale (mkflonumw 'Vector2Scale 2 scale)))
        (when scale
            (pragma "Vector2 result")
            (pragma "result = Vector2Scale(v, (float)$1)" ($real->double scale))
            (%mkvector2-v "result"))))
