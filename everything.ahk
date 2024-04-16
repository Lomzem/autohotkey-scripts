SetCapsLockState AlwaysOff

; tos-mouse
#t::Run, "C:/Users/Lomzem/coding/bin/tos-select.exe", , Hide

; bracket escape
^[::Send, {Esc 3}

; Caps lock vim bindings
Capslock::Return

Capslock & h::
    If (GetKeyState("Shift", "P"))
        Send +{Left}
    Else
        Send {Left}
return

Capslock & j::
    If (GetKeyState("Shift", "P"))
        Send +{Down}
    Else
        Send {Down}
return

Capslock & k::
    If (GetKeyState("Shift", "P"))
        Send +{Up}
    Else
        Send {Up}
return

Capslock & l::
    If (GetKeyState("Shift", "P"))
        Send +{Right}
    Else
        Send {Right}
return

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

CapsLock & 0::Send {Home}
CapsLock & 4::Send {End}

RAlt::LWin

; remap capslock + o to alt + F4
Capslock & o::Send !{F4}

; flip ctrl+space and alt+space
LCtrl & Space::Send !{Space}
LAlt & Space::Send ^{Space}

