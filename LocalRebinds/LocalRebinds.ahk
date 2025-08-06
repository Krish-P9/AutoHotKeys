#SingleInstance Force
SendMode Input  ; Your preferred send mode

F1::
	Suspend, Off
	TrayTip, "Enabled"
Return

F2::
	Suspend, On
Return
	


XButton2::
	Send, ^c
Return

XButton1::
	Send, ^v
Return

F10::
	Suspend, Off
	Send, {Volume_Down}
	Suspend, On
Return

F11::
	Suspend, Off	
	Send, {Volume_Up}
	Suspend, On
Return

F12::
	Suspend, Off	
	Send, {Volume_Mute}
	Suspend, On
Return

F9::
	Suspend, Off
	Send, {Media_Play_Pause}
	Suspend, On
Return

F8::
	MinMax = WinGetMinMax("UFC")

	if (!WinActive("UFC")) {
		WinActivate, UFC
		WinMaximize, UFC
	} else if (MinMax) {
		WinActivate, UFC
		WinMinimize, UFC
	}
Return
