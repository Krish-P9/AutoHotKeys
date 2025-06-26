#NoEnv
SendMode Input

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
    Send, {Enter}  ; Presses Enter
return



!s::
    Send, !{Tab} ; switches back to file explorer
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


/* ;opens powershell
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
    Sleep, 5000 ;Delays 5 seconds
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
