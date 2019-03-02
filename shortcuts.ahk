; ============== Shortcuts =================================
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


; ===================== Escape/CapsLock Remap ====================================
; group for capslock to escape mapping
GroupAdd, capsGroup, Debian
GroupAdd, capsGroup, ahk_exe Code.exe
GroupAdd, capsGroup, Final Year Project Dissertation

; remap caps lock to esc for vim and vim only
*Capslock::
    if ProcessExist("vim.exe") or WinActive("ahk_group capsGroup"){
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

; behave normally if used for original purpose

Numpad0::Send {Numpad0}
