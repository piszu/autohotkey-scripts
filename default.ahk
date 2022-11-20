#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^#m::Run, https://mail.google.com/mail/u/0/#inbox
^#c::Run, https://calendar.google.com/calendar/u/0/r?pli=1
^#b::Run, https://online.mbank.pl/pl/Login/dashboard
^#n::Run, https://www.notion.so/
^#s::Run, https://www.messenger.com/t/

SetCapsLockState, AlwaysOff
Capslock & s::Shutdown, 9

::jdg::jednoosobowa działalność gospodarcza

#Include C:\Users\Piszu\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\GoogleTranslate.ahk ; use path to your file if in different directory

F7::
	ClipSave := ClipboardAll
	Clipboard := ""
	Send, {Ctrl down}c{Ctrl up}
	ClipWait, 1
	if ErrorLevel
		return
	Clipboard := GoogleTranslate(Clipboard, "en", "pl")
	Send, {Ctrl down}v{Ctrl up}
	Sleep, 500
return
F8::
	ClipSave := ClipboardAll
	Clipboard := ""
	Send, {Ctrl down}c{Ctrl up}
	ClipWait, 1
	if ErrorLevel
		return
	Clipboard := GoogleTranslate(Clipboard, "pl", "en")
	Send, {Ctrl down}v{Ctrl up}
	Sleep, 500
return