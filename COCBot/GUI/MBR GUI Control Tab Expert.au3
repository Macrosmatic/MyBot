; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Control
; Description ...: This file Includes all functions to current GUI
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: GkevinOD (2014)
; Modified ......: Hervidero (2015)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

Func sldTrainITDelay()
	$isldTrainITDelay = GUICtrlRead($sldTrainITDelay)
	GUICtrlSetData($lbltxtTrainITDelay, "delay " & $isldTrainITDelay & " ms.")
EndFunc   ;==>sldTrainITDelay

Func chkScreenshotType()
	If GUICtrlRead($chkScreenshotType) = $GUI_CHECKED Then
		$iScreenshotType = 1
	Else
		$iScreenshotType = 0
	EndIf
EndFunc   ;==>chkScreenshotType

Func chkScreenshotHideName()
	If GUICtrlRead($chkScreenshotHideName) = $GUI_CHECKED Then
		$ichkScreenshotHideName = 1
	Else
		$ichkScreenshotHideName = 0
	EndIf
EndFunc   ;==>chkScreenshotHideName

Func chkDeleteLogs()
	If GUICtrlRead($chkDeleteLogs) = $GUI_CHECKED Then
		GUICtrlSetState($txtDeleteLogsDays, $GUI_ENABLE)
	Else
		GUICtrlSetState($txtDeleteLogsDays, $GUI_DISABLE)
	EndIf
EndFunc   ;==>chkDeleteLogs

Func chkDeleteTemp()
	If GUICtrlRead($chkDeleteTemp) = $GUI_CHECKED Then
		GUICtrlSetState($txtDeleteTempDays, $GUI_ENABLE)
	Else
		GUICtrlSetState($txtDeleteTempDays, $GUI_DISABLE)
	EndIf
EndFunc   ;==>chkDeleteTemp

Func chkDeleteLoots()
	If GUICtrlRead($chkDeleteLoots) = $GUI_CHECKED Then
		GUICtrlSetState($txtDeleteLootsDays, $GUI_ENABLE)
	Else
		GUICtrlSetState($txtDeleteLootsDays, $GUI_DISABLE)
	EndIf
EndFunc   ;==>chkDeleteLoots

Func chkAutoStart()
	If GUICtrlRead($chkAutoStart) = $GUI_CHECKED Then
		GUICtrlSetState($txtAutostartDelay, $GUI_ENABLE)
	Else
		GUICtrlSetState($txtAutostartDelay, $GUI_DISABLE)
	EndIf
EndFunc   ;==>chkAutoStart

Func chkDisposeWindows()
	If GUICtrlRead($chkDisposeWindows) = $GUI_CHECKED Then
		GUICtrlSetState($cmbDisposeWindowsCond, $GUI_ENABLE)
	Else
		GUICtrlSetState($cmbDisposeWindowsCond, $GUI_DISABLE)
	EndIf
EndFunc   ;==>chkDisposeWindows

Func chkDonateHours()
	If GUICtrlRead($chkDonateHours) = $GUI_CHECKED Then
		For $i = $lbDonateHours1 To $lbDonateHoursPM
			GUICtrlSetState($i, $GUI_ENABLE)
		Next
	Else
		For $i = $lbDonateHours1 To $lbDonateHoursPM
			GUICtrlSetState($i, $GUI_DISABLE)
		Next
	EndIf
EndFunc   ;==>chkDonateHours

Func chkDonateHoursE1()
	If GUICtrlRead($chkDonateHoursE1) = $GUI_CHECKED And GUICtrlRead($chkDonateHours0) = $GUI_CHECKED Then
		For $i = $chkDonateHours0 To $chkDonateHours11
			GUICtrlSetState($i, $GUI_UNCHECKED)
		Next
	Else
		For $i = $chkDonateHours0 To $chkDonateHours11
			GUICtrlSetState($i, $GUI_CHECKED)
		Next
	EndIf
	Sleep(300)
	GUICtrlSetState($chkDonateHoursE1, $GUI_UNCHECKED)
EndFunc  ;==>chkDonateHoursE1

Func chkDonateHoursE2()
	If GUICtrlRead($chkDonateHoursE2) = $GUI_CHECKED And GUICtrlRead($chkDonateHours12) = $GUI_CHECKED Then
		For $i = $chkDonateHours12 To $chkDonateHours23
			GUICtrlSetState($i, $GUI_UNCHECKED)
		Next
	Else
		For $i = $chkDonateHours12 To $chkDonateHours23
			GUICtrlSetState($i, $GUI_CHECKED)
		Next
	EndIf
	Sleep(300)
	GUICtrlSetState($chkDonateHoursE2, $GUI_UNCHECKED)
EndFunc  ;==>chkDonateHoursE2

Func chkRequestCCHoursE1()
	If GUICtrlRead($chkRequestCCHoursE1) = $GUI_CHECKED And GUICtrlRead($chkRequestCCHours0) = $GUI_CHECKED Then
		For $i = $chkRequestCCHours0 To $chkRequestCCHours11
			GUICtrlSetState($i, $GUI_UNCHECKED)
		Next
	Else
		For $i = $chkRequestCCHours0 To $chkRequestCCHours11
			GUICtrlSetState($i, $GUI_CHECKED)
		Next
	EndIf
	Sleep(300)
	GUICtrlSetState($chkRequestCCHoursE1, $GUI_UNCHECKED)
EndFunc  ;==>chkRequestCCHoursE1

Func chkRequestCCHoursE2()
	If GUICtrlRead($chkRequestCCHoursE2) = $GUI_CHECKED And GUICtrlRead($chkRequestCCHours12) = $GUI_CHECKED Then
		For $i = $chkRequestCCHours12 To $chkRequestCCHours23
			GUICtrlSetState($i, $GUI_UNCHECKED)
		Next
	Else
		For $i = $chkRequestCCHours12 To $chkRequestCCHours23
			GUICtrlSetState($i, $GUI_CHECKED)
		Next
	EndIf
	Sleep(300)
	GUICtrlSetState($chkRequestCCHoursE2, $GUI_UNCHECKED)
EndFunc  ;==>chkRequestCCHoursE2

Func chkDropCCHoursE1()
	If GUICtrlRead($chkDropCCHoursE1) = $GUI_CHECKED And GUICtrlRead($chkDropCCHours0) = $GUI_CHECKED Then
		For $i = $chkDropCCHours0 To $chkDropCCHours11
			GUICtrlSetState($i, $GUI_UNCHECKED)
		Next
	Else
		For $i = $chkDropCCHours0 To $chkDropCCHours11
			GUICtrlSetState($i, $GUI_CHECKED)
		Next
	EndIf
	Sleep(300)
	GUICtrlSetState($chkDropCCHoursE1, $GUI_UNCHECKED)
EndFunc  ;==>chkDropCCHoursE1

Func chkDropCCHoursE2()
	If GUICtrlRead($chkDropCCHoursE2) = $GUI_CHECKED And GUICtrlRead($chkDropCCHours12) = $GUI_CHECKED Then
		For $i = $chkDropCCHours12 To $chkDropCCHours23
			GUICtrlSetState($i, $GUI_UNCHECKED)
		Next
	Else
		For $i = $chkDropCCHours12 To $chkDropCCHours23
			GUICtrlSetState($i, $GUI_CHECKED)
		Next
	EndIf
	Sleep(300)
	GUICtrlSetState($chkDropCCHoursE2, $GUI_UNCHECKED)
EndFunc  ;==>chkDropCCHoursE1

Func chkRequestCCHours()
	If GUICtrlRead($chkRequestCCHours) = $GUI_CHECKED Then
		For $i = $lbRequestCCHours1 To $lbRequestCCHoursPM
			GUICtrlSetState($i, $GUI_ENABLE)
		Next
	Else
		For $i = $lbRequestCCHours1 To $lbRequestCCHoursPM
			GUICtrlSetState($i, $GUI_DISABLE)
		Next
	EndIf
EndFunc   ;==>chkRequestCCHours

Func chkDropCCHours()
	If GUICtrlRead($chkDropCCHours) = $GUI_CHECKED Then
		For $i = $lbDropCCHours1 To $lbDropCCHoursPM
			GUICtrlSetState($i, $GUI_ENABLE)
		Next
	Else
		For $i = $lbDropCCHours1 To $lbDropCCHoursPM
			GUICtrlSetState($i, $GUI_DISABLE)
		Next
	EndIf
 EndFunc   ;==>chkDropCCHours

 Func chkBoostBarracksHours()
	If GUICtrlRead($chkBoostBarracksHours) = $GUI_CHECKED Then
		For $i = $lbBoostBarracksHours1 To $lbBoostBarracksHoursPM
			GUICtrlSetState($i, $GUI_ENABLE)
		Next
	Else
		For $i = $lbBoostBarracksHours1 To $lbBoostBarracksHoursPM
			GUICtrlSetState($i, $GUI_DISABLE)
		Next
	EndIf
EndFunc   ;==>chkDonateHours

Func chkBoostBarracksHoursE1()
	If GUICtrlRead($chkBoostBarracksHoursE1) = $GUI_CHECKED And GUICtrlRead($chkBoostBarracksHours0) = $GUI_CHECKED Then
		For $i = $chkBoostBarracksHours0 To $chkBoostBarracksHours11
			GUICtrlSetState($i, $GUI_UNCHECKED)
		Next
	Else
		For $i = $chkBoostBarracksHours0 To $chkBoostBarracksHours11
			GUICtrlSetState($i, $GUI_CHECKED)
		Next
	EndIf
	Sleep(300)
	GUICtrlSetState($chkBoostBarracksHoursE1, $GUI_UNCHECKED)
EndFunc  ;==>chkDonateHoursE1

Func chkBoostBarracksHoursE2()
	If GUICtrlRead($chkBoostBarracksHoursE2) = $GUI_CHECKED And GUICtrlRead($chkBoostBarracksHours12) = $GUI_CHECKED Then
		For $i = $chkBoostBarracksHours12 To $chkBoostBarracksHours23
			GUICtrlSetState($i, $GUI_UNCHECKED)
		Next
	Else
		For $i = $chkBoostBarracksHours12 To $chkBoostBarracksHours23
			GUICtrlSetState($i, $GUI_CHECKED)
		Next
	EndIf
	Sleep(300)
	GUICtrlSetState($chkBoostBarracksHoursE2, $GUI_UNCHECKED)
EndFunc  ;==>chkDonateHoursE2

Func chkTotalCampForced()
	If GUICtrlRead($chkTotalCampForced) = $GUI_CHECKED Then
		GUICtrlSetState($txtTotalCampForced, $GUI_ENABLE)
	Else
		GUICtrlSetState($txtTotalCampForced, $GUI_DISABLE)
	EndIf
EndFunc   ;==>chkTotalCampForced

Func chkDebugSetlog()
		If GUICtrlRead($chkDebugSetlog) = $GUI_CHECKED Then
		$DebugSetlog = 1
	Else
		$DebugSetlog = 0
	EndIf
EndFunc   ;==>chkDebugOcr

Func chkDebugOcr()
		If GUICtrlRead($chkDebugOcr) = $GUI_CHECKED Then
		$DebugOcr = 1
	Else
		$DebugOcr = 0
	EndIf
EndFunc   ;==>chkDebugOcr