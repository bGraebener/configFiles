SetTitleMatchMode, 2

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
if(WinExist("Winamp")){
  WinActivate
}else {
  Run, winamp.exe
}
return


; ===================== Escape/CapsLock Remap ====================================
; remap caps lock to esc for vim and vim only
*Capslock::
     if WinActive("ahk_exe Code.exe") or ProcessExist("vim.exe") or WinActive("Final Year") or WinActive("Debian"){
       SetCapsLockState, Off
       Send, {ESC}
       return
    }else{
        GetKeyState, keystate, CapsLock, T
        if(keystate = "D")
            SetCapsLockState, Off
        else
            SetCapsLockState, On
        return
   }

ProcessExist(name){
    Process, Exist, %name%
    return ErrorLevel
}

; behave normally if used for original purpose

Numpad0::Send {Numpad0}
