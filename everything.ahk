; tos-mouse
#t::Run, "C:/Users/Lomzem/coding/rust/tos-mouse/tos-mouse/target/debug/tos-mouse.exe", , Hide

; bracket escape
^[::Send, {Esc 3}

; Caps lock vim bindings
Capslock::Return
Capslock & h::Send {Left}
Capslock & j::Send {Down}
Capslock & k::Send {Up}
Capslock & l::Send {Right}
Capslock & f::Send ^{Right}
Capslock & b::Send ^{Left}

RAlt::LWin

; remap capslock + o to alt + F4
Capslock & o::Send !{F4}

; flip ctrl+space and alt+space
LCtrl & Space::Send !{Space}
LAlt & Space::Send ^{Space}

