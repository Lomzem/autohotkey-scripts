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

; remap r-alt to windows key
RAlt::LWin
