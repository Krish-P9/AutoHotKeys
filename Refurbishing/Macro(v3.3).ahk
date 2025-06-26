#NoEnv
#SingleInstance Force
SetWorkingDir, %A_ScriptDir%
SendMode Input  ; Your preferred send mode




; =============================================
; SECTION 1: COPY ONTO DESKTOP AND AUTO STARTUP
; =============================================

; === STEP 1: COPY .EXE TO DESKTOP (IF NOT ALREADY THERE) ===
desktopExePath := A_Desktop "\" A_ScriptName  ; Full path to desktop copy
if !FileExist(desktopExePath) {
    FileCopy, %A_ScriptFullPath%, %desktopExePath%, 1  ; Overwrite if exists
    if ErrorLevel {
        MsgBox, Failed to copy to desktop! Check permissions.
        ExitApp
    }
}

; === STEP 2: ADD DESKTOP COPY TO STARTUP (SKIP IF ALREADY PRESENT) ===
if (A_Args[1] != "/skipstartup") {
    startupFolder := A_Startup
    shortcutPath := startupFolder "\" A_ScriptName ".lnk"

    if !FileExist(shortcutPath) {
        FileCreateShortcut, %desktopExePath%, %shortcutPath%, %A_Desktop%,, %A_ScriptName%, %desktopExePath%
        TrayTip, Startup Added, Desktop .exe will now run on startup., 3
    }
}


if not A_IsAdmin {
    Run *RunAs "%A_ScriptFullPath%"  ; Re-launch as admin
    ExitApp
}


; =============================================
; SECTION 2: HOTKEY SCRIPTS
; =============================================


!0::
    FileDelete, %A_Startup%\%A_ScriptName%.lnk
    TrayTip, Startup Removed, Script will NOT run on next boot., 3
    ExitApp ; Kill Switch

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
    SendInput, {Raw}Hardpassword2!
    Sleep 200
    Send, {Enter}
return


!s:: ; Opens powershell as admin
    Send #r     ;Opens run menu
    Sleep 200
    Send powershell.exe 
    Sleep 100
    Send ^+{Enter}  ;opens as admin
    Sleep 2000
    
    ; waits for mouse click before continuing with script
    KeyWait, LButton


    ; switches window
    Sleep 3000
    Send {Alt Down}{Tab}
    Sleep 100  
    Send {Alt Up}


    ; Selects first file
    Sleep 400
    Send, {Home} ; goes to top
    Sleep, 1000    ; delay 
    Send, {Space} ; opens first file
    Sleep, 1000
    Send, {Enter}
    Sleep, 4000    ; delay 
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	; Delay half second

    ;closes notepad
    Send {Alt Down}{F4}
    Sleep 100  
    Send {Alt Up}
    Sleep 300

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 200  
    Send {Alt Up}

    ; pastes and runs command
    Sleep, 1000    ; delay 
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}  ; runs the command
    Sleep, 1000    ; delay 

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 200  
    Send {Alt Up}


    ; copies command from next file
    Sleep, 1000    ; delay 
    Send, {Down} ; selects file 1 lower
    Send, {Enter} ; opens the file
    Sleep, 2000	; Delay 2 seconds
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 1000    ; delay 

    ;closes notepad
    Send {Alt Down}{F4}
    Sleep 100  
    Send {Alt Up}
    Sleep 300

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 200  
    Send {Alt Up}

        
    ; pastes and runs command
    Sleep, 1000    ; delay 
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}   ; runs the command
    Sleep, 1000    ; delay 

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 200  
    Send {Alt Up}
   
    ; copies command from next file
    Sleep, 1000    ; delay 
    Send, {Down} ; selects file 1 lower
    Send, {Enter} ; opens the file
    Sleep, 2000	;Delay 2 seconds
    Send, ^a     ; selects all
    Send, ^c	 ; Copies command
    Sleep, 500	;Delay half second

    ;closes notepad
    Send {Alt Down}{F4}
    Sleep 100  
    Send {Alt Up}
    Sleep 300

    ; switches window
    Send {Alt Down}{Tab}
    Sleep 200  
    Send {Alt Up}
 
    ; pastes last command
    Sleep, 1000    ; delay 
    Send, ^v     ; pastes command in powershell
    Sleep, 500	;Delay half second
    Send, {Enter}   ; runs the command

    MsgBox, Sysprep Scripts Complete, make sure to press Alt + e and then Alt + 0 to close and delete the script from the system. Check if the macro is completely erased by ensuring the icon is not on the desktop, or the system tray (bottom left, might have to press the up arrow). Also check the startup folder that opens when you press Alt + e, this folder should be empty. Once you checked all this then you are safe to sysprep.

   return



!u::
    ;for windows 11
    Send #r     ;Opens run menu
    Sleep 400
    Send Usoclient.exe StartInteractiveScan 
    Sleep 300
    Send {Enter}  ;opens as admin
    Sleep 500
    Run, ms-settings:windowsupdate
return


; =============================================
; SECTION 3: REMOVE FROM STARTUP AND DESKTOP
; =============================================

!e::
    ;MsgBox, Target path: %desktopExePath%  ; Debug: Show the path being deleted
    if FileExist(desktopExePath) {
	;MsgBox, Found file at: %desktopExePath%
        ; First attempt normal deletion
    if FileExist(desktopExePath) {
        FileDelete, %desktopExePath%
        
        ; If failed, try again with admin rights
        if ErrorLevel {
            RunWait, %ComSpec% /c del /F /Q "%desktopExePath%",, Hide
            if ErrorLevel {
                MsgBox, 4, Delete Failed, Couldn't delete file. Try as admin?
                IfMsgBox, Yes
                {
                    Run *RunAs %ComSpec% /c del /F /Q "%desktopExePath%",, Hide
                    if ErrorLevel
                        MsgBox, Still failed! File may be in use.
                }
            }
        }
        
        if !FileExist(desktopExePath)
            TrayTip, Success, Deleted desktop copy, 3
    }
    } else {
        MsgBox, File not found at: %desktopExePath%
    }


    ; delete file from startup folder
    FileDelete, %A_Startup%\%A_ScriptName%.lnk
    TrayTip, Startup Removed, Script will NOT run on next boot., 3

   
    ; opens startup folder
    Run, shell:startup

return

