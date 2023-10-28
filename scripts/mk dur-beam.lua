-- create-dur-beam.lua
-- 
-- CREATED
-- 2023-04-30
-- 
-- This script/macro creates a horizontal line between
-- two selected notes.
--
-- This can be used, e.g. to indicate the duration
-- of a note whose head does not imply a duration (e.for example
-- when using the behind the bridge sign on the stem).
--
-- USAGE:
-- 1) Create two neighboring notes
-- 2) Select both notes
-- 3) Run the macro
-- 4) Hide the head and the stem of the second note (optional)
--
-- NB: It is necessary that not options are filtered in
--     engrave mode (e.g. via search)

local app=DoApp.DoApp()
app:doCommand([[Window.ShowRightPanel?Set=true]])
app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kHorizontalLineStartNoteAttached&PaletteSectionID=kGenericLinesHorizontalLinePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kHorizontalLineEndNoteAttached&PaletteSectionID=kGenericLinesHorizontalLinePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[UI.InvokePaletteButton?PaletteIndicatorID=kGenericLinesPanel.linestyle.solidLine&PaletteSectionID=kGenericLinesHorizontalLinePanel&PropertyButton=false&SetOldValue=false&Set=true&UseLocalOverride=0]])
app:doCommand([[Window.ShowRightPanel?Set=false]])
app:doCommand([[Window.SwitchMode?WindowMode=kEngraveMode]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=10&ZoomLevelType=kPercent&ZoomPercent=316]])
--app:doCommand([[View.CentreSelection?Force=0]])
app:doCommand([[Window.ShowBottomPanel?Set=true]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=10&ZoomLevelType=kPercent&ZoomPercent=316]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineStartDX&Value=string: "0"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineStartDY&Value=string: "0"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineStartDX&Value=string: "-9/8"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineStartDY&Value=string: "1/4"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineEndDX&Value=string: "0"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineEndDY&Value=string: "0"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineEndDX&Value=string: "5/4"]])
app:doCommand([[UI.InvokePropertyChangeValue?Type=kHorizontalLineEndDY&Value=string: "1/4"]])
app:doCommand([[Window.ShowBottomPanel?Set=false]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=10&ZoomLevelType=kPercent&ZoomPercent=316]])
app:doCommand([[Window.SwitchMode?WindowMode=kWriteMode]])
--app:doCommand([[View.ZoomScoreLayoutView?ScoreLayoutViewID=10&ZoomLevelType=kPercent&ZoomPercent=316]])
--app:doCommand([[View.CentreSelection?Force=0]])
