(module php-raudio
    (load (php-macros "/usr/local/lib/php-macros.scm"))
    (extern
        (include "raylib.h"))
    (export
        ; Audio device management functions
        (initaudiodevice)
        (closeaudiodevice)
        (isaudiodeviceready)
        (setmastervolume volume)
        (getmastervolume)
        ; Wave/Sound loading/unloading functions
        (loadwave fileName)
        (loadwavefrommemory fileType fileData)
        (iswaveready wave)
        (loadsound fileName)
        (loadsoundfromwave wave)
        (loadsoundalias sound)
        (issoundready sound)
        (updatesound sound data sampleCount)
        (unloadwave wave)
        (unloadsound sound)
        (unloadsoundalias sound)
        (exportwave wave fileName)
        (exportwaveascode wave fileName)
        ; Wave/Sound management functions
        (playsound sound)
        (stopsound sound)
        (pausesound sound)
        (resumesound sound)
        (issoundplaying sound)
        (setsoundvolume sound volume)
        (setsoundpitch sound pitch)
        (setsoundpan sound pan)
        (wavecopy wave)
        (wavecrop wave initSample finalSample)
        (waveformat wave sampleRate sampleSize channels)
        ))

; Audio device management functions

(defbuiltin (initaudiodevice)
    (pragma "InitAudioDevice()")
    NULL)

(defbuiltin (closeaudiodevice)
    (pragma "CloseAudioDevice()")
    NULL)

(defbuiltin (isaudiodeviceready)
    (pragma "IsAudioDeviceReady()")
    NULL)

(defbuiltin (setmastervolume volume)
    (ensure-flonum 'SetMasterVolume volume 1
        (pragma "SetMasterVolume((float)$1)" ($real->double volume))
        NULL))

(defbuiltin (getmastervolume)
    (pragma::double "GetMasterVolume()"))

; Wave/Sound loading/unloading functions

(defresource %Wave "raylib Wave" intern)
(defresource %Sound "raylib Sound" intern)

(define-macro (%ensure-wave func-name . code)
    `(resource-valid-guard
        ,func-name
        (and (%Wave? wave)
             (%Wave-intern wave))
        "raylib Wave"
        (begin
            (pragma "Wave *wave")
            (pragma "wave = (Wave *)$1" ($obj->void* (%Wave-intern wave)))
            ,@code
            )))

(define-macro (%ensure-sound func-name . code)
    `(resource-valid-guard
        ,func-name
        (and (%Sound? sound)
             (%Sound-intern sound))
        "raylib Sound"
        (begin
            (pragma "Sound *sound")
            (pragma "sound = (Sound *)$1" ($obj->void* (%Sound-intern sound)))
            ,@code
            )))

(defbuiltin (loadwave fileName)
    (ensure-path 'LoadWave fileName 1
        (pragma "Wave *wave = (Wave *)GC_MALLOC_ATOMIC(sizeof(Wave))")
        (pragma "*wave = LoadWave($1)" ($bstring->string fileName))
        (make-resource %Wave (pragma::void* "wave"))))

(defbuiltin (loadwavefrommemory fileType fileData)
    (ensure-strs 'LoadWaveFromMemory (fileType fileData) 1
        (pragma "Wave *wave = (Wave *)GC_MALLOC_ATOMIC(sizeof(Wave))")
        (pragma "*wave = LoadWaveFromMemory($1, BSTRING_TO_STRING($2), STRING_LENGTH($2))"
                ($bstring->string fileType)
                fileData)
        (make-resource %Wave (pragma::void* "wave"))))

(defbuiltin (iswaveready wave)
    (%ensure-wave 'IsWaveReady
        (pragma::bool "IsWaveReady(*wave)")))

(defbuiltin (loadsound fileName)
    (ensure-path 'LoadSound fileName 1
        (pragma "Sound *sound = (Sound *)GC_MALLOC_ATOMIC(sizeof(Sound))")
        (pragma "*sound = LoadSound($1)" ($bstring->string fileName))
        (make-resource %Sound (pragma::void* "sound"))))

(defbuiltin (loadsoundfromwave wave)
    (%ensure-wave 'LoadSoundFromWave
        (pragma "Sound *sound = (Sound *)GC_MALLOC_ATOMIC(sizeof(Sound))")
        (pragma "*sound = LoadSoundFromWave(*wave)")
        (make-resource %Sound (pragma::void* "sound"))))

(defbuiltin (loadsoundalias sound)
    (%ensure-sound 'LoadSoundAlias
        (pragma "Sound *alias = (Sound *)GC_MALLOC_ATOMIC(sizeof(Sound))")
        (pragma "*alias = LoadSoundAlias(*sound)")
        (make-resource %Sound (pragma::void* "alias"))))

(defbuiltin (issoundready sound)
    (%ensure-sound 'IsSoundReady
        (pragma::bool "IsSoundReady(*sound)")))

(defbuiltin (updatesound sound data sampleCount)
    (%ensure-sound 'UpdateSound
        (ensure-str  'UpdateSound data 2
            (ensure-elong 'UpdateSound sampleCount 3
                (pragma "UpdateSound(*sound, $1, (int)$2)"
                        ($bstring->string data)
                        ($belong->elong sampleCount))
                NULL))))

(defbuiltin (unloadwave wave)
    (%ensure-wave 'UnloadWave
        (pragma "UnloadWave(*wave)")
        (%Wave-intern-set! wave #f)
        (%Wave-description-set! wave #f)
        NULL))

(defbuiltin (unloadsound sound)
    (%ensure-sound 'UnloadSound
        (pragma "UnloadSound(*sound)")
        (%Sound-intern-set! sound #f)
        (%Sound-description-set! sound #f)
        NULL))

(defbuiltin (unloadsoundalias sound)
    (%ensure-sound 'UnloadSoundAlias
        (pragma "UnloadSoundAlias(*sound)")
        (%Sound-intern-set! sound #f)
        (%Sound-description-set! sound #f)
        NULL))

(defbuiltin (exportwave wave fileName)
    (%ensure-wave 'ExportWave
        (ensure-path 'ExportWave fileName 2
            (pragma::bool "ExportWave(*wave, $1)" ($bstring->string fileName)))))

(defbuiltin (exportwaveascode wave fileName)
    (%ensure-wave 'ExportWaveAsCode
        (ensure-path 'ExportWaveAsCode fileName 2
            (pragma::bool "ExportWaveAsCode(*wave, $1)" ($bstring->string fileName)))))

; Wave/Sound management functions

(defbuiltin (playsound sound)
    (%ensure-sound 'PlaySound
        (pragma "PlaySound(*sound)")
        NULL))

(defbuiltin (stopsound sound)
    (%ensure-sound 'StopSound
        (pragma "StopSound(*sound)")
        NULL))

(defbuiltin (pausesound sound)
    (%ensure-sound 'PauseSound
        (pragma "PauseSound(*sound)")
        NULL))

(defbuiltin (resumesound sound)
    (%ensure-sound 'ResumeSound
        (pragma "ResumeSound(*sound)")
        NULL))

(defbuiltin (issoundplaying sound)
    (%ensure-sound 'IsSoundPlaying
        (pragma::bool "IsSoundPlaying(*sound)")))

(defbuiltin (setsoundvolume sound volume)
    (%ensure-sound 'SetSoundVolume
        (ensure-flonum 'SetSoundVolume volume 2
            (pragma "SetSoundVolume(*sound, (float)$1)" ($real->double volume))
            NULL)))

(defbuiltin (setsoundpitch sound pitch)
    (%ensure-sound 'SetSoundPitch
        (ensure-flonum 'SetSoundPitch pitch 2
            (pragma "SetSoundPitch(*sound, (float)$1)" ($real->double pitch))
            NULL)))

(defbuiltin (setsoundpan sound pan)
    (%ensure-sound 'SetSoundPan
        (ensure-flonum 'SetSoundPan pan 2
            (pragma "SetSoundPan(*sound, (float)$1)" ($real->double pan))
            NULL)))

(defbuiltin (wavecopy wave)
    (%ensure-wave 'WaveCopy
        (pragma "Wave *copy = (Wave *)GC_MALLOC_ATOMIC(sizeof(Wave))")
        (pragma "*copy = WaveCopy(*wave)")
        (make-resource %Wave (pragma::void* "copy"))))

(defbuiltin (wavecrop wave initSample finalSample)
    (%ensure-wave 'WaveCrop
        (ensure-elongs 'WaveCrop (initSample finalSample) 2
            (pragma "WaveCrop(wave, (int)$1, (int)$2)"
                    ($belong->elong initSample)
                    ($belong->elong finalSample))
            NULL)))

(defbuiltin (waveformat wave sampleRate sampleSize channels)
    (%ensure-wave 'WaveFormat
        (ensure-elongs 'WaveFormat (sampleRate sampleSize channels) 2
            (pragma "WaveFormat(wave, (int)$1, (int)$2, (int)$3)"
                    ($belong->elong sampleRate)
                    ($belong->elong sampleSize)
                    ($belong->elong channels))
            NULL)))

;TODO: float *LoadWaveSamples(Wave wave);
;TODO: void UnloadWaveSamples(float *samples);

; Music management functions

(defresource %Music "raylib Music" intern)

(define-macro (%ensure-music func-name . code)
    `(resource-valid-guard
        ,func-name
        (and (%Music? music)
             (%Music-intern music))
        "raylib Music"
        (begin
            (pragma "Music *music")
            (pragma "music = (Music *)$1" ($obj->void* (%Music-intern music)))
            ,@code
            )))
