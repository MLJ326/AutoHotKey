#Requires AutoHotkey v2.0
; Moves the mouse every NumofMinute minutes, Repeat amount of times
; From: https://github.com/MLJ326/AutoHotKey

NumofMinute := 1
Repeat := 60

loop Repeat {
		MouseMove 100, 0, 100, "R"
		MouseMove -100, 0, 100, "R"
		Sleep NumofMinute*60*1000
	}
