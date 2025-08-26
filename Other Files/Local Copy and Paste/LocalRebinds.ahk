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

#SuspendExempt True
*F10::Volume_Down

F11::Volume_Up

F12::Volume_Mute