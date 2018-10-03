SetTitleMatchMode 2
PgDn::End
End::PgDn
^!c::Run, Calc.exe
^!n::Run, Notepad.exe
^!a::Run, mspaint.exe
^!l::Run, explore S:\
^!+l::Run, explore D:\
^!m::Run, explore D:\Media
^!+d::
    oCB := ClipboardAll
    ClipBoard :=
    FileRead, Clipboard, S:\System\Documents\DiscordURL.txt	
    ClipWait
    Send ^v
    Clipboard := oCB
    Reload
return
^!+x::RunWait % "C:\Windows\nircmd.exe" . " muteappvolume firefox.exe 2"
#IfWinActive Discord
^+q:: Send, <^v>
#IfWinActive Wiki - Mozilla Firefox
^s::Send !+s
^e::Send !+e
^p::Send !+p
^q::Send !+u
!+c::Send !+1 ; for view page values hotkey
^!+I:: ; edit interwiki data in firefox
    Send ^l^c
    x = %Clipboard%
    while x <> "https://google.com/"{
        Send editiw{enter}
        Sleep,5000
        Send ^l^c
        x = %Clipboard%
    }
return
^`::
    oCB := ClipboardAll
    ClipBoard := "	"
    Send ^v
    Clipboard := oCB
    oCB =
    Reload
return
#IfWinActive Firefox
!]::Send ^{PgDn}
![::Send ^{PgUp}
LWin::LButton
^d::return
+^Q::Return
#IfWinActive Replace
+!Q::Send {^}\s*(.*)$\r\n.*$\r\n\s*\d{,}?\d* (KB|byt).*${Tab}$1{Tab}a
#IfWinActive Notepad++
^l::Send !LL{Up}{Enter}
^p::Send !LN{up}{Up}{Enter}
^j::Send !LJ{down}{Enter}
!]::Send ^{PgDn}
![::Send ^{PgUp}
#IfWinActive Replace Special
^Z::return
#IfWinActive
