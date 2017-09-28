 
'Reg
'Add
'Sub
'Comp
'Dec
'Div
'Inc
'Mod
'Mul
'Mux2x
'Shl
'Shr

    


Sub Generate_DCPL_LAT()
    Dim myWorksheet As Worksheet, sh As Worksheet
    Dim i As Long, j As Long, k As Long, r As Long, c As Long
    i = 2
    j = 7 'G
    r = 1 ' start with the first row
    c = 1 ' start with the first col
    ActiveWorkbook.Sheets.Add After:=Worksheets(Sheets.Count)
    Set myWorksheet = ActiveSheet
    ActiveSheet.Name = "DCPL_LAT"
    
    For k = 1 To Sheets.Count - 1
        If c Mod 6 = 0 Then
            r = r + 1
            c = 1 ' reset column
        End If
        c = c + 1
        Cells(r, c).Value = Sheets(k).Cells(i, j).Value
        MsgBox (Sheets(k).Name)
    Next k
End Sub
