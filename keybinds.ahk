SetTitleMatchMode 2
PgDn::End
End::PgDn
Pause::Send,{Insert}
^!c::Run, Calc.exe
^!n::Run, Notepad.exe
^!a::Run, mspaint.exe
^!l::Run, explore S:\
^!+l::Run, explore D:\
^!+p::Run, control
^!m::Run, explore D:\Media
!]::Send ^{PgDn}
![::Send ^{PgUp}
^!+d:: Send, https://discord.gg/6SNQ4c6
return
^!+x::RunWait % "C:\Windows\nircmd.exe" . " muteappvolume firefox.exe 2"
#IfWinActive Discord
^+q:: Send, <^v>
^!+f::
Loop, Parse, Clipboard, `n, `r
{
	Send, %A_LoopField%
	Send, {Enter}
	Sleep, 500
}
return
#IfWinActive Wiki - Mozilla Firefox
^s::Send !+s
^e::Send !+e
^p::Send !+p
^q::Send !+u
!+c::Send !+1 ; for view page values hotkey
^`::
    oCB := ClipboardAll
    ClipBoard := "	"
    Send ^v
    Clipboard := oCB
    oCB =
    Reload
return
#IfWinActive Firefox
LWin::LButton
^d::return
+^Q::Return
#IfWinActive Notepad++
^l::Send !LL{Up}{Enter}
^p::Send !LN{up}{Up}{Enter}
^j::Send !LJ{down}{Enter}
!]::Send ^{PgDn}
![::Send ^{PgUp}
#IfWinActive Replace Special
^Z::return
#IfWinActive Excel
+Space::return
#IfWinActive
