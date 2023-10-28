local app=DoApp.DoApp()
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[UI.InvokePropertyEnableSwitch?Type=kNoteHideNotehead&Value=false]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
