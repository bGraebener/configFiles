; ============= Keyboard Layout remapping =====================
SetTitleMatchMode, 2

GroupAdd, remapGroup, ahk_class Notepad
GroupAdd, remapGroup, ahk_class Notepad++

GroupAdd, remapGroup, ahk_exe idea64.exe
GroupAdd, remapGroup, Cmder
GroupAdd, remapGroup, Debian [wird ausgeführt] - Oracle VM VirtualBox
GroupAdd, remapGroup, Final Year Project Dissertation
GroupAdd, remapGroup, ahk_exe Code.exe

#IfWinActive ahk_group remapGroup
    1::!
    2::"
    3::§
    4::$
    5::Send `%
    6::&
    7::/
    8::(
    9::)
    ü::Send `=
    ö::SendRaw {
    ä::SendRaw }
    ß::SendRaw \
    Ö::SendRaw [
    Ä::SendRaw ]
    ,::;
    `;::Send {,}
    $+1::Send 1
    $+2::Send 2
    $+3::Send 3
    $+4::Send 4
    $+5::Send 5
    $+6::Send 6
    $+7::Send 7
    $+8::Send 8
    $+9::Send 9
    z::y
    y::z
    
