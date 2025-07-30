#NoEnv
#SingleInstance Force
SendMode Input  ; Your preferred send mode

F1::
	Suspend, Off
	TrayTip, "Enabled"
Return

F2::
	Suspend, On
	


XButton2::
	Send, ^c
Return

XButton1::
	Send, ^v
Return