#NoEnv
#SingleInstance Force
SendMode Input  ; Your preferred send mode


!0::
     ExitApp ; Kill Switch

!t::
	Send, ^l
	Sleep, 100
	Send, ^c
	URL := Clipboard
	Sleep, 200
	
	if (Clipboard = "http://173.183.250.6:5014/ComputersPages/Refurb%20Computer/RefurbishedComputerList.aspx") {
		MsgBox, %Clipboard% " Yes"
	} else {
		MsgBox, %Clipboard% " No"
	}

return



!y::
	Sleep, 1000
	Send, ^l
	Sleep, 100
	Send, ^c
	URL := Clipboard
	Sleep, 200

	if (Clipboard = "http://173.183.250.6:5014/ComputersPages/Refurb%20Computer/RefurbishedComputerList.aspx") {
		Send, {F5}
		Sleep, 900
	} else {
		MsgBox, "Something went wrong"
		Progress, Off
		Return
	}


	; new refurbish computer
	Sleep, 1500
	Send {Shift Down}{Tab}
	Sleep, 50
	Send {Tab}
	Sleep, 50
	Send, {Tab}
	Send {Shift Up}
	Sleep, 200
	Send, {Space}

return
