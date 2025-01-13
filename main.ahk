#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force

Gui, +AlwaysOnTop +Disabled -SysMenu +Owner  ; +Owner avoids a taskbar button.
Gui, Show, NA, _  ; NA = Shows the window without activating it.
Gui, Show, % "x" 0 "y" 1004 "w"A_ScreenWidth "h" 7

Loop {
	if WinActive("ahk_class SUMATRA_PDF_FRAME")
		Gui, Show, NA
	else
		Gui, Hide
		
	Sleep, 100
}
	
NumLock:: WinSet, Alwaysontop, Toggle, A

^!+n::
	WinGetClass, class_output, A
	MsgBox, %class_output%

*Home::ExitApp
*End::ExitApp
