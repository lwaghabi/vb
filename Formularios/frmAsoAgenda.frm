VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmAsoAgenda 
   Caption         =   "frmAsoAgenda"
   ClientHeight    =   9855
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   18645
   LinkTopic       =   "Form1"
   ScaleHeight     =   9855
   ScaleWidth      =   18645
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      Caption         =   "Tipo Process."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   13440
      TabIndex        =   17
      Top             =   960
      Width           =   2415
      Begin VB.OptionButton optStatusRealizado 
         Caption         =   "Status Realizado"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   2175
      End
      Begin VB.OptionButton optGeral 
         Caption         =   "Geral"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   5
         Top             =   1080
         Width           =   1815
      End
      Begin VB.OptionButton optNormal 
         Caption         =   "Normal"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   4
         Top             =   720
         Width           =   1815
      End
   End
   Begin MSFlexGridLib.MSFlexGrid grdAgenda 
      Height          =   6975
      Left            =   240
      TabIndex        =   16
      Top             =   2640
      Width           =   17895
      _ExtentX        =   31565
      _ExtentY        =   12303
      _Version        =   393216
      Cols            =   5
      FixedCols       =   0
      FormatString    =   $"frmAsoAgenda.frx":0000
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame Frame1 
      Caption         =   "Controles"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   15840
      TabIndex        =   15
      Top             =   840
      Width           =   2175
      Begin VB.CommandButton cmdSair 
         BackColor       =   &H0080FFFF&
         Caption         =   "Sair"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   1200
         Width           =   1935
      End
      Begin VB.CommandButton cmdExcluir 
         BackColor       =   &H000000FF&
         Caption         =   "Excluir"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton cmbSalvar 
         BackColor       =   &H0000FF00&
         Caption         =   "Salvar"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.TextBox txtHoje 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   15840
      TabIndex        =   14
      Text            =   "Text1"
      Top             =   360
      Width           =   2175
   End
   Begin MSComCtl2.DTPicker dtDataExame 
      Height          =   420
      Left            =   11520
      TabIndex        =   2
      Top             =   1560
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   741
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Format          =   247595009
      CurrentDate     =   44667
   End
   Begin VB.ComboBox cmbNomeExame 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   6120
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   1560
      Width           =   5415
   End
   Begin VB.ComboBox cmbPessoa 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   240
      Sorted          =   -1  'True
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   1560
      Width           =   5895
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Hoje"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   15960
      TabIndex        =   13
      Top             =   0
      Width           =   1815
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Data Exame"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   11520
      TabIndex        =   12
      Top             =   1200
      Width           =   1815
   End
   Begin VB.Label Label3 
      Caption         =   "Exame"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6120
      TabIndex        =   11
      Top             =   1200
      Width           =   3615
   End
   Begin VB.Label Label2 
      Caption         =   "Nome do Colaborador"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   10
      Top             =   1200
      Width           =   4455
   End
   Begin VB.Label Label1 
      Caption         =   "Agenda de Exames de Funcion�rios - ASO"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   9
      Top             =   240
      Width           =   7815
   End
End
Attribute VB_Name = "frmAsoAgenda"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim DataExame As Date
Dim DataExameInv As String
Dim DataProxExame As Date
Dim DataProxExameInv As String
Dim Dia As Integer
Dim Mes As Integer
Dim Ano As Integer
Dim IndLinha As Integer
Dim IndCol As Integer
Dim ColaboradorAnterior As String
Dim NomeExame As String
Dim IndExame As Integer
Dim Ind As Integer
Dim IndCmb As Integer
Dim Encontrei As Integer
Dim PessoaCmb(50) As String
Dim PrazoAvisoExame As Integer

Private Sub cmbPessoa_LostFocus()
NomeExame = cmbNomeExame

optNormal = True
optGeral = False

Call Rotina_AbrirBanco

asoa.Open "Select * from AsoAgenda where chPessoa = ('" & cmbPessoa & "')", db, 3, 3
If Not asoa.EOF Then
   Call CarregaGridAgenda
Else
   Call LimpaGrid
End If


End Sub

Private Sub cmbSalvar_Click()

Call Rotina_AbrirBanco

If asoa.State = 1 Then
   asoa.Close: Set asoa = Nothing
End If

If optGeral = True Then
   For Ind = 0 To IndExame - 1
      cmbNomeExame.ListIndex = Ind
      NomeExame = cmbNomeExame
      Call SalvarGeral
   Next
   
   Call LimpaGrid

   Call CarregaGridAgenda
      
   Exit Sub
End If

DataExame = dtDataExame
NomeExame = cmbNomeExame

Dia = Day(DataExame)
Mes = Month(DataExame)
Ano = Year(DataExame)

DataExameInv = (Ano & "-" & Format$(Mes, "00") & "-" & Format$(Dia, "00"))

asoa.Open "Select * from AsoAgenda where chPessoa = ('" & cmbPessoa & "') and chDataExame = ('" & DataExameInv & "') and chNomeExame = ('" & NomeExame & "')", db, 3, 3
If asoa.EOF Then
   asoa.AddNew
Else
   If optStatusRealizado = True Then
      asoa!asoaDataFimProgramacao = Date
      asoa!asoaStatus = 1
      asoa.Update
      Call LimpaGrid
      Call CarregaGridAgenda
      Call FechaDB
      Exit Sub
   End If
End If


If asoe.State = 1 Then
   asoe.Close: Set asoe = Nothing
End If

asoe.Open "Select * from AsoExame where chNomeExame = ('" & NomeExame & "')", db, 3, 3
If asoe.EOF Then
   MsgBox ("Exame n�o encontrado. Erro grave. Avisar  ao analista respons�vel."), vbCritical
   Call FechaDB
   Exit Sub
End If

If asoe!exmTipoPrazo = 0 Then
   DataProxExameInv = DataExame + asoe!exmPrazoValidade
Else
   If asoe!exmTipoPrazo = 1 Then
      Mes = Mes + asoe!exmPrazoValidade
      If Mes > 12 Then
         Mes = Format$(Mes - 12, "00")
         Ano = Format$(Ano + 1, "00")
      End If
   Else
      Ano = Ano + asoe!exmPrazoValidade
   End If
  
   If Dia > 28 Then
      Call CriticaData
   End If
      
   DataProxExame = (Ano & "/" & Format$(Mes, "00") & "/" & Format$(Dia, "00"))
   
End If

asoa!chPessoa = cmbPessoa
asoa!chDataExame = dtDataExame
asoa!chNomeExame = cmbNomeExame
asoa!asoaDataProxExame = DataProxExame
asoa!asoaStatus = 0

asoa.Update

Call LimpaGrid

Call CarregaGridAgenda

End Sub

Private Sub cmdExcluir_Click()

Call Rotina_AbrirBanco

DataExame = dtDataExame

Dia = Day(DataExame)
Mes = Month(DataExame)
Ano = Year(DataExame)

DataExameInv = (Ano & "-" & Format$(Mes, "00") & "-" & Format$(Dia, "00"))

asoa.Open "Select * from AsoAgenda where chPessoa = ('" & cmbPessoa & "') and chDataExame = ('" & DataExameInv & "') and chNomeExame = ('" & cmbNomeExame & "')", db, 3, 3
If asoa.EOF Then
   MsgBox ("Exclus�o inv�lida. Registro n�o consta da lista."), vbCritical
   Call FechaDB
   Exit Sub
End If

asoa.Delete

'MsgBox ("Exclus�o efetuada com sucesso."), vbInformation

Call LimpaGrid

Call CarregaGridAgenda


Call FechaDB

End Sub

Private Sub cmdSair_Click()
Unload Me
End Sub

Private Sub Form_Load()

txtHoje = Date
dtDataExame = Date
ColaboradorAnterior = Empty

optStatusRealizado = False
optNormal = True
optGeral = False

cmbPessoa.Clear

Call Rotina_AbrirBanco

pes.Open "Select * from Pessoa where pesRazaoSocial > ('" & Empty & "') and pesTipoPessoa = ('" & 6 & "') and pesStatusPessoa = ('" & 0 & "')", db, 3, 3
If pes.EOF Then
   MsgBox ("Cadastro Pessoa sem funcion�rio cadastrado."), vbInformation
   Call FechaDB
   Exit Sub
End If

pes.MoveFirst

Ind = 0
IndCmb = 0

Encontrei = 0

Do While Encontrei = 0
   If PessoaCmb(Ind) = Empty Then
      Encontrei = 1
   Else
      PessoaCmb(Ind) = Empty
      Ind = Ind + 1
   End If
Loop

Encontrei = 0

Do While Not pes.EOF
   
   For IndCmb = 0 To Ind
       If pes!pesRazaoSocial = PessoaCmb(IndCmb) Then
          Encontrei = 1
          IndCmb = Ind
       Else
          If PessoaCmb(IndCmb) = Empty Then
             PessoaCmb(IndCmb) = pes!pesRazaoSocial
             Encontrei = 0
             IndCmb = Ind
          End If
       End If
   Next
   If Encontrei = 1 Then
      Encontrei = 0
   Else
      cmbPessoa.AddItem pes!pesRazaoSocial
      Ind = Ind + 1
   End If

   pes.MoveNext
   
Loop

cmbNomeExame.Clear


asoe.Open "Select * from AsoExame", db, 3, 3
If asoe.EOF Then
   MsgBox ("Cadastro Exames vazio."), vbInformation
   Call FechaDB
   Exit Sub
End If

IndExame = 0

asoe.MoveFirst

Do While Not asoe.EOF
   cmbNomeExame.AddItem asoe!chNomeExame
   asoe.MoveNext
   IndExame = IndExame + 1
Loop

cmbNomeExame.ListIndex = 0
cmbPessoa.ListIndex = 0

Call FechaDB

End Sub

Public Sub CarregaGridAgenda()

Call LimpaGrid

Call Rotina_AbrirBanco

asoa.Open "Select * from AsoAgenda where chPessoa = ('" & cmbPessoa & "') and asoaStatus = ('" & 0 & "')", db, 3, 3
If asoa.EOF Then
   Call FechaDB
   Exit Sub
End If

asoa.MoveFirst

IndLinha = 1
IndCol = 0
ColaboradorAnterior = Empty

grdAgenda.Col = 2
grdAgenda.Row = IndLinha
grdAgenda.CellBackColor = Empty
grdAgenda.Col = 4
grdAgenda.Row = IndLinha
grdAgenda.CellBackColor = Empty


Do While Not asoa.EOF

   If asoe.State = 1 Then
      asoe.Close: Set asoe = Nothing
   End If

   asoe.Open "Select * from AsoExame where chNomeExame = ('" & asoa!chNomeExame & "')", db, 3, 3
   If asoe.EOF Then
      MsgBox ("Exame n�o encontrado. Erro grave. Avisar  ao analista respons�vel."), vbCritical
      Call FechaDB
      Exit Sub
   End If

   grdAgenda.Rows = IndLinha + 1
   If Not asoa!chPessoa = ColaboradorAnterior Then
      grdAgenda.TextMatrix(IndLinha, 1) = asoa!chPessoa
      ColaboradorAnterior = asoa!chPessoa
   Else
      grdAgenda.TextMatrix(IndLinha, 1) = Empty
   End If
   
   grdAgenda.TextMatrix(IndLinha, 0) = asoa!chPessoa
   grdAgenda.TextMatrix(IndLinha, 2) = asoa!chNomeExame
   grdAgenda.TextMatrix(IndLinha, 3) = asoa!chDataExame
   grdAgenda.TextMatrix(IndLinha, 4) = asoa!asoaDataProxExame
   
   If asoe!exmUnidTempo = 0 Then
      PrazoAvisoExame = asoe!exmPrazoAviso
   Else
      PrazoAvisoExame = 30 * asoe!exmPrazoAviso
   End If
   
   If Not asoa!asoaDataProxExame > Date + PrazoAvisoExame Then
      grdAgenda.Col = 2
      grdAgenda.Row = IndLinha
      grdAgenda.CellBackColor = vbYellow
      grdAgenda.Col = 4
      grdAgenda.Row = IndLinha
      grdAgenda.CellBackColor = vbYellow
   End If
   
   
   asoa.MoveNext
   
   IndLinha = IndLinha + 1
   
Loop

If asoe.State = 1 Then
   asoe.Close: Set asoe = Nothing
End If

asoe.Open "Select * from AsoExame", db, 3, 3
If asoe.EOF Then
   MsgBox ("Tabela de Exames vazia."), vbCritical
   Call FechaDB
   Exit Sub
End If

asoe.MoveFirst

Do While Not asoe.EOF
   If asoa.State = 1 Then
      asoa.Close: Set asoa = Nothing
   End If
   asoa.Open "Select * from AsoAgenda where chPessoa = ('" & cmbPessoa & "') and chNomeExame = ('" & asoe!chNomeExame & "') and AsoaStatus = ('" & 0 & "')", db, 3, 3
   If asoa.EOF Then
      IndLinha = IndLinha + 1
      grdAgenda.Rows = IndLinha + 1
      grdAgenda.TextMatrix(IndLinha, 0) = "N/I"
      grdAgenda.Col = 1
      grdAgenda.Row = IndLinha
      grdAgenda.CellBackColor = vbRed
      grdAgenda.TextMatrix(IndLinha, 1) = "Exame n�o Realizado. VERIFICAR."
      grdAgenda.TextMatrix(IndLinha, 2) = asoe!chNomeExame
      grdAgenda.TextMatrix(IndLinha, 3) = Empty
      grdAgenda.TextMatrix(IndLinha, 4) = Empty
   End If
      
   asoe.MoveNext
   
Loop

End Sub
Public Sub LimpaGrid()

   grdAgenda.Rows = 2

   grdAgenda.TextMatrix(1, 0) = Empty
   grdAgenda.TextMatrix(1, 1) = Empty
   grdAgenda.TextMatrix(1, 2) = Empty
   grdAgenda.TextMatrix(1, 3) = Empty
   grdAgenda.TextMatrix(1, 4) = Empty
 End Sub
 
Private Sub grdAgenda_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

IndLinha = grdAgenda.Row
IndCol = grdAgenda.Col


If grdAgenda.TextMatrix(IndLinha, 3) = Empty Then
   MsgBox ("Para exames n�o efetuados programar sem clicar no grid."), vbInformation
   Call FechaDB
   Exit Sub
End If

If IndLinha > grdAgenda.RowSel Then
   MsgBox ("Clicar somente em Linha com conte�do."), vbCritical
   cmdSair.SetFocus
   Exit Sub
End If

If grdAgenda.TextMatrix(IndLinha, 2) = Empty Then
   MsgBox ("Clicar somente em Linha com conte�do."), vbCritical
   cmdSair.SetFocus
   Exit Sub
End If

cmbPessoa = grdAgenda.TextMatrix(IndLinha, 0)
cmbNomeExame = grdAgenda.TextMatrix(IndLinha, 2)
dtDataExame = grdAgenda.TextMatrix(IndLinha, 3)

End Sub


Public Sub SalvarGeral()

DataExame = dtDataExame

Dia = Day(DataExame)
Mes = Month(DataExame)
Ano = Year(DataExame)

DataExameInv = (Ano & "-" & Format$(Mes, "00") & "-" & Format$(Dia, "00"))

If asoa.State = 1 Then
   asoa.Close: Set asoa = Nothing
End If

asoa.Open "Select * from AsoAgenda where chPessoa = ('" & cmbPessoa & "') and chDataExame = ('" & DataExameInv & "') and chNomeExame = ('" & NomeExame & "')", db, 3, 3
If asoa.EOF Then
   asoa.AddNew
End If


If asoe.State = 1 Then
   asoe.Close: Set asoe = Nothing
End If

asoe.Open "Select * from AsoExame where chNomeExame = ('" & NomeExame & "')", db, 3, 3
If asoe.EOF Then
   MsgBox ("Exame n�o encontrado. Erro grave. Avisar  ao analista respons�vel."), vbCritical
   Call FechaDB
   Exit Sub
End If

If asoe!exmTipoPrazo = 0 Then
   DataProxExame = DataExame + asoe!exmPrazoValidade
Else
   If asoe!exmTipoPrazo = 1 Then
      Mes = Mes + asoe!exmPrazoValidade
      If Mes > 12 Then
         Mes = Format$(Mes - 12, "00")
         Ano = Format$(Ano + 1, "00")
      'Else
      '   DataProxExame = "00:00:0000"
      End If
   Else
      Ano = Ano + asoe!exmPrazoValidade
   End If
   
   If Dia > 28 Then
      Call CriticaData
   End If
   
   DataProxExame = (Format$(Dia, "00") & "/" & (Format$(Mes, "00") & "/" & Ano))
   
End If

asoa!chPessoa = cmbPessoa
asoa!chDataExame = dtDataExame
asoa!chNomeExame = cmbNomeExame
asoa!asoaDataProxExame = DataProxExame
asoa!asoaStatus = 0

asoa.Update

End Sub

Public Sub CriticaData()

If Not Mes = 2 Then
   If Dia = 31 Then
      If Mes = 4 Or Mes = 6 Or Mes = 9 Or Mes = 11 Then
         Dia = Dia - 1
      End If
   End If
Else
   If Dia > 28 Then
      Mes = Mes + 1
      Dia = 1
      DataProxExame = (Format$(Dia, "00") & "/" & Format$(Mes, "00") & "/" & Ano)
      DataProxExame = DataProxExame - 1
      Dia = Day(DataProxExame)
      Mes = Month(DataProxExame)
   End If
End If

End Sub
