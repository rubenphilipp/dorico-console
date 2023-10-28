local app=DoApp.DoApp()
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[UI.InvokePropertyEnableSwitch?Type=kNoteHideStem&Value=false]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
