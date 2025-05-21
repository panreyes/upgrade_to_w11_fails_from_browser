#RequireAdmin
Global $iso_path = "c:\w11iso"

If(Not FileExists($iso_path & "\setup.exe")) Then
	MsgBox(16, "Error", "Please decompress a W11 ISO in C:\w11iso")
	Exit
EndIF

If(MsgBox(4,0,"Auto upgrade from W10 to W11. Continue?") <> 6) Then
	Exit
EndIf

Run($iso_path & "\setup.exe /auto upgrade /eula accept /DynamicUpdate disable", $iso_path)
Sleep(5000)
If(Not ProcessExists("SetupPrep.exe")) Then
	MsgBox(16, "Error", "Process failed! Try again by running " & @ScriptName & " from Windows Explorer instead of from the browser.")
EndIf