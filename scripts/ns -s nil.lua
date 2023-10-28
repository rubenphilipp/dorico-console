local app=DoApp.DoApp()
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kNoteHideStem&Value=string: "true"]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])