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

; Capslock & f::Send ^{Right}
; Capslock & b::Send ^{Left}

CapsLock & f:: 
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; SWITCHERS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

switchToBrave(){
IfWinNotExist, ahk_class Chrome_WidgetWin_1
	Run, brave.exe
WinActivate ahk_class Chrome_WidgetWin_1
}

switchToWT(){
WinMinimizeAll
IfWinNotExist, ahk_class CASCADIA_HOSTING_WINDOW_CLASS
	; Run, WindowsTerminal.exe
	Run, wt.exe
WinActivate ahk_class CASCADIA_HOSTING_WINDOW_CLASS
}

switchToFE(){
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
WinActivate ahk_class CabinetWClass
}

switchToSumatra(){
IfWinNotExist, ahk_class SUMATRA_PDF_FRAME
	return
WinActivate ahk_class SUMATRA_PDF_FRAME
}


CapsLock & w::switchToWT()
CapsLock & e::switchToBrave()
CapsLock & q::switchToSumatra()
#e::switchToFE()
