-- create-salt.lua
-- This script/macro creates a line element
-- with saltando stems and formats it correclty.
-- USAGE:
-- 1) Create two neighbouring and beamed eighth notes
-- 2) Select the first note
-- 3) Run the macro
--
-- NB: This script currently only works with stems
--     up.
-- 2023-04-13
-- NB2: It is necessary, that no options are filtered in engrave
--      mode (e.g. via search)

local app=DoApp.DoApp()
app:doCommand([[EventEdit.NavigateRight]])
--app:doCommand([[File.AutoSave]])
--app:doCommand([[Script.RunScript?ScriptPath=/Users/rubenphilipp/Library/Application Support/Steinberg/Dorico 4/Script Plug-ins/note-stem-hide.lua]])
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kNoteHideStem&Value=string: "true"]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=2&ZoomLevelType=kPercent&ZoomPercent=193]])
app:doCommand([[View.CentreSelection?Force=0]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=2&ZoomLevelType=kPercent&ZoomPercent=193]])
app:doCommand([[View.CentreSelection?Force=0]])
--app:doCommand([[Script.RunScript?ScriptPath=/Users/rubenphilipp/Library/Application Support/Steinberg/Dorico 4/Script Plug-ins/note-head-hide.lua]])
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kNoteHideNotehead&Value=null: ]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=2&ZoomLevelType=kPercent&ZoomPercent=193]])
app:doCommand([[View.CentreSelection?Force=0]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=2&ZoomLevelType=kPercent&ZoomPercent=193]])
app:doCommand([[View.CentreSelection?Force=0]])
app:doCommand([[EventEdit.NavigateLeftExtend]])
app:doCommand([[Window.ShowRightPanel?Set=true]])
-- change line start and end to note head
app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kHorizontalLineStartNoteAttached&PaletteSectionID=kGenericLinesHorizontalLinePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kHorizontalLineEndNoteAttached&PaletteSectionID=kGenericLinesHorizontalLinePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kGenericLinesPanel.linestyle.user.7&PaletteSectionID=kGenericLinesHorizontalLinePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[Window.ShowRightPanel?Set=false]])
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=2&ZoomLevelType=kPercent&ZoomPercent=193]])
app:doCommand([[View.CentreSelection?Force=0]])

app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineStartDX&Value=string: "0"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineStartDY&Value=string: "0"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineStartDX&Value=string: "-1/8"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineStartDY&Value=string: "17/8"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineEndDX&Value=string: "0"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineEndDY&Value=string: "0"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineEndDX&Value=string: "13/8"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineEndDY&Value=string: "33/16"]])

app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=2&ZoomLevelType=kPercent&ZoomPercent=193]])
app:doCommand([[View.CentreSelection?Force=0]])
