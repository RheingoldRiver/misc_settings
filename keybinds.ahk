SetTitleMatchMode, RegEx
PgDn::End
End::PgDn
Pause::Send,{Insert}
^!c::Run, Calc.exe
^!n::Run, S:\System\blacknotepad.exe
^!a::Run, mspaint.exe
^!l::Run, explore S:\
^!+l::Run, explore D:\
^!+p::Run, control
^!m::Run, explore D:\Media
^!+d:: Send, https://discord.gg/6SNQ4c6
Hotstring("EndChars","`t")
::apiserver::https://discord.gg/m3SCJhs
::rmwct::git{+}git://github.com/RheingoldRiver/river_mwclient
return
^!+x::
	IfWinActive ahk_class MozillaWindowClass
	{
		Send, ^+V
		return
	}
	IfWinNotExist ahk_class MozillaWindowClass
		return
	ControlSend,ahk_parent, ^+V
	return
#a: ; source: https://superuser.com/questions/1125149/how-to-clear-all-windows-10-action-center-notifications-with-keyboard
	Send #a
	Sleep, 500
	if WinActive("ahk_exe Shellexperiencehost.exe")
	{
		Send +{Tab}+{Tab} {Space} {Esc}
	}
	return
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
#IfWinActive Wiki .* Mozilla Firefox
^s::Send !+s
^e::Send !+e
^p::Send !+p
^q::Send !+u
!+c::Send !+1 ; for view page values hotkey
#IfWinActive Firefox
!]::Send ^{PgDn}
![::Send ^{PgUp}
^k::Send ^l; search is always a typo for focus url bar
^1::
	IfWinActive ahk_class MozillaWindowClass
	ControlSend,ahk_parent, {Ctrl down}{Shift down}2{Shift up}{Ctrl up}
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
#IfWinActive AutoWikiBrowser
^X::^I
#IfWinActive .*ST.*
!]::Send ^{PgDn}
![::Send ^{PgUp}
#IfWinActive .*PyCharm.*
!]::Send ^{PgDn}
![::Send ^{PgUp}
#IfWinActive
