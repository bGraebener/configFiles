; create a new instance of cmder if none exists or a new tab
Numpad0 & Numpad1::
if(WinExist("Cmder")){
    WinActivate
    Send, !+1
    return
}
else {
    Run, cmder.exe
    return
}

; open visual studio code
Numpad0 & Numpad2::
Run, code.cmd
return

; open winamp
Numpad0 & Numpad3::
Run, winamp.exe
return

;remap caps lock to esc for vim and vim only
*Capslock::
    if ProcessExist("vim.exe")or WinActive("Debian [wird ausgeführt] - Oracle VM VirtualBox"){
       SetCapsLockState, Off
       Send, {ESC}
    }
    else{
        GetKeyState, keystate, CapsLock, T
        if(keystate = "D")
            SetCapsLockState, Off
        else
            SetCapsLockState, On
        return
    }
    return

ProcessExist(name){
    Process, Exist, %name%
    return ErrorLevel
}

