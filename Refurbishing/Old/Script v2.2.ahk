#NoEnv
SendMode Input


!0::ExitApp ; Kill Switch

!l::
    Send, acfs\KrishP    ; Types "acfs\KrishP"
    Sleep, 500	;Delay half second
    Send, {Tab}    ; Presses the Tab key
    Send, Password123      ; Types "Password123"
    Sleep, 500	;Delay half second
    Send, {Enter}  ; Presses Enter
return

!m::
    Send, MDOS\intern    ; Types "MDOS\intern"
    Sleep, 500	;Delay half second
    Send, {Tab}    ; Presses the Tab key
    Send, Password123      ; Types "Password123"
    Sleep, 500	;Delay half second
    Send, {Tab}
    Sleep 100
    Send {Space}
    Sleep 100
    Send {Tab}
    Send, {Enter}  ; Presses Enter
return

!w::
    Send, Hardpassword2!
    Sleep 200
    Send, {Enter}
return


!s::
    ; Opens powershell as admin
    Send #r     ;Opens run menu
    Sleep 200
    Send powershell.exe 
    Sleep 100
    Send ^+{Enter}  ;opens as admin

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}

    ; Selects first file
    Sleep 200
    Send, {Home} ; goes to top
    Sleep, 500    ; delay half second
    Send, {Space} ; opens first file
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	; Delay half second

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}


    ; pastes and runs command
    Sleep, 500	;Delay half second
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}; runs the command
    Sleep, 500	;Delay half second

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}

    ; copies command from next file
    Sleep, 500	;Delay half second
    Send, {Down} ; selects file 1 lower
    Send, {Enter} ; opens the file
    Sleep, 2000	; Delay 2 seconds
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	;Delay half second

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}
    
    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}
    
    ; pastes and runs command
    Sleep, 500	;Delay half second
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}; runs the command
    Sleep, 500	;Delay half second

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}
   
    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}

    ; copies command from next file
    Send, {Down} ; selects file 1 lower
    Send, {Enter} ; opens the file
    Sleep, 2000	;Delay 2 seconds
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	;Delay half second

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}
 
    ; switches window
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}

    ; pastes last command
    Sleep, 500	;Delay half second
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}; runs the command
return



!s::
    Send,
    Send, {Home} ; goes to top
    Sleep, 500    ; delay half second
    Send, {Space} ; opens first file
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	; Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Sleep, 500	;Delay half second
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}; runs the command
    Sleep, 500	;Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Sleep, 500	;Delay half second
    Send, {Down} ; selects file 1 lower
    Send, {Enter} ; opens the file
    Sleep, 2000	; Delay 2 seconds
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	;Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Sleep, 500	;Delay half second
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}; runs the command
    Sleep, 500	;Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Send, {Down} ; selects file 1 lower
    Send, {Enter} ; opens the file
    Sleep, 2000	;Delay 2 seconds
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	;Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Sleep, 500	;Delay half second
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}; runs the command
return



/* ;opens powershell with run
!s::
    Run *RunAs "powershell.exe"  ; *RunAs forces admin prompt
    Sleep, 1000	;Delay one second
    Send, !{Tab} ; switches back to file explorer
    Send, {Home} ; goes to top
    Send, {Space} ; opens first file
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	; Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Sleep, 500	;Delay half second
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}; runs the command
    Sleep, 500	;Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Sleep, 500	;Delay half second
    Send, {Down} ; selects file 1 lower
    Send, {Enter} ; opens the file
    Sleep, 2000	; Delay 2 seconds
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	;Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Sleep, 500	;Delay half second
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}; runs the command
    Sleep, 500	;Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Send, {Down} ; selects file 1 lower
    Send, {Enter} ; opens the file
    Sleep, 2000	;Delay 2 seconds
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	;Delay half second
    Send, !{Tab} ;
    Send, !{Tab} ; switches 2 apps
    Sleep, 500	;Delay half second
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}; runs the command
return
*/



!u::
    Run, ms-settings:windowsupdate
    Sleep, 7000 ;Delays 7 seconds
    Send, {Tab} ;
    Send, {Tab} ;
    Send, {Enter} checks for updates
return


/*
!u::
    Send, # ; windows key
    Sleep, 1000	;Delay one second
    Send, update; types update
    Sleep, 1000	;Delay one second
    Send, {Enter}; opens update settings
    Sleep, 5000	;Delay 5 seconds
    Send, {Enter}; checks for update
return
 */
