SetCapsLockState AlwaysOff

; tos-mouse
#t::Run, "C:/Users/Lomzem/coding/bin/tos-select.exe", , Hide

; bracket escape
^[::Send, {Esc 3}

; Caps lock vim bindings
Capslock::Return
Capslock & h::Send {Left}
Capslock & j::Send {Down}
Capslock & k::Send {Up}
Capslock & l::Send {Right}

; Capslock & w::Send ^{Right}
; Capslock & b::Send ^{Left}

CapsLock & w:: 
    If (GetKeyState("Shift", "P"))
        Send +^{Right}
    Else
        Send ^{Right}
return

CapsLock & b:: 
    If (GetKeyState("Shift", "P"))
        Send +^{Left}
    Else
        Send ^{Left}
return

RAlt::LWin

; remap capslock + o to alt + F4
Capslock & o::Send !{F4}

; flip ctrl+space and alt+space
LCtrl & Space::Send !{Space}
LAlt & Space::Send ^{Space}

