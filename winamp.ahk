; =========== Control Winamp ==============================
; control winamp without having it active
; control volume
NumpadSub & Numpad9::
	if WinExist("ahk_exe winamp.exe"){
		ControlSend, ahk_parent, {up 4}
	}
	return


NumpadSub & Numpad3::
	if WinExist("ahk_exe winamp.exe"){
		ControlSend, ahk_parent, {down 4}
	}
	return

; start, restart
NumpadSub & Numpad1::
	if WinExist("ahk_exe winamp.exe"){
		ControlSend, ahk_parent, x
	}
	return

; stop
NumpadSub & Numpad2::
	if WinExist("ahk_exe winamp.exe"){
		ControlSend, ahk_parent, v
	}
	return

; next track
NumpadSub & Numpad4::
	if WinExist("ahk_exe winamp.exe"){
		ControlSend, ahk_parent, b
	}
	return

; previous track
NumpadSub & Numpad5::
	if WinExist("ahk_exe winamp.exe"){
		ControlSend, ahk_parent, z
	}
	return

NumpadSub::Send {NumpadSub}