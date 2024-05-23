#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=AutoItv11.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

ShellExecute(@ScriptDir&"\Ninite.exe")

While 1
	WinSetTrans ( "Preparing", "", 0 )
	WinSetTrans ( "Ninite", "", 0 )
	$text = WinGetText("Ninite", "")
	If StringInStr($text, "Finished.",1) Then
		ExitLoop
	EndIf
	Sleep(500)
WEnd

Sleep(1000)
ControlClick("Ninite", "", "[ID:2]")

