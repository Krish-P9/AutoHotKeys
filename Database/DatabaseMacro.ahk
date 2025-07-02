#NoEnv
#SingleInstance Force
SendMode Input  ; Your preferred send mode


!0::
     ExitApp ; Kill Switch



!r::
    InputBox, loopCount, Loop Counter, Enter number of loops (1-100):,, 300, 150
    if !ErrorLevel  ; User didn't cancel
    {
        loopCount := loopCount + 0  ; Convert to number
        if (loopCount >= 1 && loopCount <= 100)
        {

		; Show progress window (non-interactive)
		Progress, b w200, Running macro...`nLoops remaining: %loopCount%, Macro Progress, Please wait	


            Loop %loopCount%





            {
		
		;copy harddrive barcode
		Send, {Tab}
                Send, ^c
		Sleep, 200
		Harddrive := Clipboard
		
		;copy computer barcode
		Sleep, 150
		Send, {Tab}
		Send, ^c
		Sleep, 200
		Computer := Clipboard

		; copy COA
		Sleep, 100
		Send, {Tab}
		Sleep, 50
		Send,{Tab}
		Send, ^c
		Sleep 200
		COA := Clipboard

		; copy i Series
		Sleep, 100
		Send, {Tab}
		Sleep, 50
		Send, {Tab}
		Sleep, 50
		Send, {Tab}
		Sleep, 50
		Send, {Tab}
		Sleep, 50
		Send, ^c
		Sleep, 200
		iSeries := SubStr(Clipboard, 1, 7)

		; copy CPU 
		Sleep, 100
		Send, {Tab}
		Send, ^c
		Sleep, 200
		CPU := Clipboard

		;copy Total Ram
		Sleep, 100
		Send, {Tab}
		Send, ^c
		Sleep, 200
		TotalRam := Clipboard

		; copy Number of Ram Sticks
		Sleep, 100
		Send, {Tab}
		Send, ^c
		Sleep, 200
		NumRam := Clipboard

		; copy Optical Drive
		Sleep, 100
		Send, {Tab}
		Send, ^c
		Sleep, 200
		ODrive := SubStr(Clipboard, 1, 3)

		; Copy OS
		Sleep, 100
		Send, {Tab}
		Sleep, 100
		Send, ^c
		Sleep, 200
		OS := Clipboard



		;switch tab and paste info
		Sleep, 100
		Send, ^1
		Sleep, 50
		Send, ^1
		Sleep, 50
		Send, ^1    ; i gotta make sure it switches 
		Sleep, 500


		;paste harddrive
		Clipboard := Harddrive
		Sleep, 100
		Send, ^v

		;paste computer
		Sleep, 100
		Send, {Tab}
		Sleep, 100
		Clipboard := Computer
		Sleep, 100
		Send, ^v

		Sleep, 100
		Send, {Tab}
		Sleep, 50
		Send, {Tab}
		Sleep, 50
		Send, {Tab}
		Sleep, 50
		Send, {Tab}
		Sleep, 50
		Send, {Tab}
		Sleep, 50

		; paste iSeries
		Sleep, 100
		SendInput, {Text}%iSeries%
		
		; paste CPU Chip number
		Sleep, 100
		Send, {Tab}
		Clipboard := CPU
		Sleep, 100
		Send, ^v

		; total ram
		Sleep, 100
		Send, {Tab}
		Sleep, 100
		SendInput, {Text}%TotalRam%

		; Number of Ram Sticks
		Sleep, 100
		Send, {Tab}
		Clipboard := NumRam
		Sleep, 100
		Send, ^v

		; Optical Drive
		Sleep, 100
		Send, {Tab}
		Sleep, 100

		if (ODrive = "Non")
		{	
			SendInput, {Text}None
		}
		else if (ODrive = "DVD")
		{
			SendInput, {Text}DVD x Read/Write
		}



		; OS
		Sleep, 100
		Send, {Tab}
		Sleep 100
		
		if (OS = "Windows 11")
		{
			SendInput, {Text}Win 11
		}
		else if (OS = "Windows 10")
		{
			SendInput, {Text}Win 10
		}
		else if (OS = "None")
		{
			SendInput, {Text}No OS
		}
		else if (OS = "Linux")
		{
			SendInput, {Text}Linux
		}


		Sleep, 100
		Send, {Tab}
		Sleep, 50
		Send, {Tab}

		;COA
		Sleep, 100
		Clipboard := COA
		Sleep, 100
		if ((OS != "Windows 11") and (OS != "Windows 10")) {
			Send, ^v
		}

		; submit
		Sleep, 100
		Send, {Tab}
		Sleep, 50
		Send, {Tab}
		Sleep, 50
		Send, {Tab}
		Sleep, 100


		Send, {Space}

		Sleep, 1000
		Send, ^l
		Sleep, 100
		Send, ^c
		URL := Clipboard
		Sleep, 200
	
		if (Clipboard = "http://173.183.250.6:5014/ComputersPages/Refurb%20Computer/RefurbishedComputerList.aspx") {
			Send, {F5}
		} else {
			Progress, Off
			MsgBox, "Something went wrong"
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


                ;copy other values
		Sleep, 300
		Send, ^2
		Sleep, 50
		Send, ^2
		Sleep, 50
		Send, ^2    ; i gotta make sure it switches 
		Sleep, 500

		Send, {Down}
		Sleep, 50
		Send, {Home}
		Sleep, 400
 
		
		; Update progress
            	remaining := loopCount - A_Index
            	Progress, % (A_Index/loopCount)*100, Loops remaining: %remaining%

                
            }

	
	    ; Close progress window when done
       	    Progress, Off


        }
        else
            MsgBox, Please enter 1-100
    }


    Sleep, 100
    Send, ^1
    Sleep, 50
    Send, ^1
    Sleep, 50
    Send, ^1    ; i gotta make sure it switches 

    Sleep, 500
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 50 
    Send, {Tab}
    Sleep, 50
    Send, {Tab}
    Sleep, 200
    Send, {Space}
    Sleep, 100
    Send, {Space}


    MsgBox, %  "Refurbished " loopCount " computers"
 
return










!o::
    InputBox, loopCount, Loop Counter, Enter number of loops (1-100):,, 300, 150
    if !ErrorLevel  ; User didn't cancel
    {
        loopCount := loopCount + 0  ; Convert to number
        if (loopCount >= 1 && loopCount <= 100)
        {

		; Show progress window (non-interactive)
		Progress, b w200, Running macro...`nLoops remaining: %loopCount%, Macro Progress, Please wait	


            Loop %loopCount%





            {
		
		
 		;copy computer barcode
		Sleep 200
                Send, ^c

		;switch tab
		Sleep, 100
    		Send, ^1
    		Sleep, 50
    		Send, ^1
    		Sleep, 50
   		Send, ^1    ; i gotta make sure it switches

		;paste computer barcode
		Sleep 200
		Send, ^v
		Sleep, 200
		Send, {Enter}

		; switch back
		Sleep, 100
    		Send, ^2
    		Sleep, 50
    		Send, ^2
    		Sleep, 50
   		Send, ^2    ; i gotta make sure it switches

		Sleep, 200
		Send, {Down}

		
		; Update progress
            	remaining := loopCount - A_Index
            	Progress, % (A_Index/loopCount)*100, Loops remaining: %remaining%

                
            }

	
	    ; Close progress window when done
       	    Progress, Off



        }
        else
            MsgBox, Please enter 1-100
    }



    MsgBox, %  "Added " loopCount " to order"
 
return