local app=DoApp.DoApp()
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kNoteHideNotehead&Value=null: ]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
