#Persistent
Toggle := false

F1::
    Toggle := !Toggle
    if (Toggle) {
        SetTimer, PressH, 100  ; Press 'h' every 100ms (adjust speed as needed)
    } else {
        SetTimer, PressH, Off
    }
return

PressH:
    Send, h
return