#NoEnv
#SingleInstance Force
SetWorkingDir, %A_ScriptDir%
SendMode Input  ; Your preferred send mode


!q::
    Send {Alt Down}{F4}
    Sleep 100  
    Send {Alt Up}
