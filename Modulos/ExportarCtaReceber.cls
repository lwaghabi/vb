VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ExportarCtaReceber"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public Sub ExportarCtaReceber()
        Dim CaminhoNew As String
                
        CaminhoNew = "C:\Meus Documentos\SISTEMA SHB" & "\docPadrao\"
        
        Dim oApp As Excel.Application
        Dim oWB As Excel.Workbook
        Dim i As Integer
        Dim Ex As Object
        Set Ex = CreateObject("Excel.Application")

        i = 3
         On Error GoTo Erro
            'Create an Excel instance.
50          Set oApp = New Excel.Application

            'Open the desired workbook

60          If Dir(CaminhoNew & "ModelCtaReceberNew.xlsx", vbArchive) = "" Then
70             MsgBox "N�o foi poss�vel gerar o documento porque" & vbCrLf & _
               "O arquivo padr�o n�o foi localizado!", vbCritical
80             Exit Sub
90          End If
            
100         Set oWB = oApp.Workbooks.Open(FileName:=CaminhoNew & "ModelCtaReceberNew.xlsx")
            
            'Do any modifications to the workbook.
            Rotina_AbrirBanco
            rs.Open "SELECT * FROM ContasReceber", db, 2, 4
            Do Until rs.EOF
               oApp.Cells(i, 1) = rs(0)
               oApp.Cells(i, 2) = rs(1)
               oApp.Cells(i, 3) = rs(2)
               oApp.Cells(i, 4) = rs(3)
               oApp.Cells(i, 5) = rs(4)
               oApp.Cells(i, 6) = "' " & rs(5)
               oApp.Cells(i, 7) = rs(6)
               oApp.Cells(i, 8) = rs(7)
               oApp.Cells(i, 9) = rs(8)
               oApp.Cells(i, 10) = rs(9)
               oApp.Cells(i, 11) = rs(10)
               oApp.Cells(i, 12) = rs(11)

               
               
               rs.MoveNext
               i = i + 1
            Loop
110
          FechaDB

490       oWB.SaveAs FileName:=CaminhoNew & "NovaCtaReceber.xlsx"

510       oWB.Close SaveChanges:=False
520       Set oWB = Nothing
530       oApp.Quit
540       Set oApp = Nothing

400       Ex.Workbooks.Open (CaminhoNew & "NovaCtaReceber.xlsx")
410       Ex.Visible = True

Exit Sub
Erro:
MsgBox "Ocorreu o seguinte erro:" + vbNewLine & _
        Err.Description + vbNewLine & "Na linha: " & Erl
End Sub


