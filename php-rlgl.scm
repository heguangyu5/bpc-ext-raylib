(module php-rlgl
    (load (php-macros "/usr/local/lib/php-macros.scm"))
    (extern
        (include "rlgl.h"))
    (export
        (rlpushmatrix)
        (rlpopmatrix)
        (rlloadidentity)
        (rltranslatef x y z)
        (rlrotatef angle x y z)
        (rlscalef x y z)
        ))

(defbuiltin (rlpushmatrix)
    (pragma "rlPushMatrix()")
    NULL)

(defbuiltin (rlpopmatrix)
    (pragma "rlPopMatrix()")
    NULL)

(defbuiltin (rlloadidentity)
    (pragma "rlLoadIdentity()")
    NULL)

(defbuiltin (rltranslatef x y z)
    (unless (flonum? x)
        (set! x (mkflonumw 'rlTranslatef 1 x)))
    (when x
        (unless (flonum? y)
            (set! y (mkflonumw 'rlTranslatef 2 y)))
        (when y
            (unless (flonum? z)
                (set! z (mkflonumw 'rlTranslatef 3 z)))
            (when z
                (pragma "rlTranslatef((float)$1, (float)$2, (float)$3)"
                        ($real->double x)
                        ($real->double y)
                        ($real->double z))
                NULL))))

(defbuiltin (rlrotatef angle x y z)
    (unless (flonum? angle)
        (set! angle (mkflonumw 'rlRotatef 1 angle)))
    (when angle
        (unless (flonum? x)
            (set! x (mkflonumw 'rlRotatef 2 x)))
        (when x
            (unless (flonum? y)
                (set! y (mkflonumw 'rlRotatef 3 y)))
            (when y
                (unless (flonum? z)
                    (set! z (mkflonumw 'rlRotatef 4 z)))
                (when z
                    (pragma "rlRotatef((float)$1, (float)$2, (float)$3, (float)$4)"
                            ($real->double angle)
                            ($real->double x)
                            ($real->double y)
                            ($real->double z))
                    NULL)))))

(defbuiltin (rlscalef x y z)
    (unless (flonum? x)
        (set! x (mkflonumw 'rlScalef 1 x)))
    (when x
        (unless (flonum? y)
            (set! y (mkflonumw 'rlScalef 2 y)))
        (when y
            (unless (flonum? z)
                (set! z (mkflonumw 'rlScalef 3 z)))
            (when z
                (pragma "rlScalef((float)$1, (float)$2, (float)$3)"
                        ($real->double x)
                        ($real->double y)
                        ($real->double z))
                NULL))))
