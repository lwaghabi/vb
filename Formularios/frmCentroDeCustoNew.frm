VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmCentroDeCustoNew 
   Caption         =   "frmCentroDeCustoNew"
   ClientHeight    =   6165
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   12390
   LinkTopic       =   "Form1"
   ScaleHeight     =   6165
   ScaleWidth      =   12390
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdAnalitico 
      BackColor       =   &H0000FF00&
      Caption         =   "Impress�o Anal�tico"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   10320
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   3240
      Width           =   1935
   End
   Begin VB.CommandButton cmdImprimir 
      BackColor       =   &H00FFFF00&
      Caption         =   "Impress�o Consolidado"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   10320
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   4080
      Width           =   1935
   End
   Begin VB.CommandButton cmdSair 
      BackColor       =   &H000000FF&
      Caption         =   "Sair"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   10320
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   4920
      Width           =   1935
   End
   Begin VB.TextBox txtTotal 
      Alignment       =   1  'Right Justify
      BeginProperty DataFormat 
         Type            =   1
         Format          =   """R$"" #.##0,00"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1046
         SubFormatType   =   2
      EndProperty
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6960
      TabIndex        =   6
      Text            =   "txtTotal"
      Top             =   5040
      Width           =   2655
   End
   Begin MSFlexGridLib.MSFlexGrid gridCentroDeCusto 
      Height          =   3375
      Left            =   720
      TabIndex        =   4
      Top             =   1440
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   5953
      _Version        =   393216
      Cols            =   3
      FixedCols       =   0
      BackColor       =   16777152
      BackColorFixed  =   12648447
      BackColorBkg    =   16777152
      FormatString    =   "|Centro de Custo                                                     |Valor Pago                  "
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.TextBox dtHoje 
      Alignment       =   2  'Center
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
      Left            =   9960
      TabIndex        =   3
      Text            =   "dtHoje"
      Top             =   600
      Width           =   1935
   End
   Begin VB.Label Label 
      Caption         =   "Total"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   6000
      TabIndex        =   5
      Top             =   5160
      Width           =   975
   End
   Begin VB.Label Label 
      Alignment       =   2  'Center
      Caption         =   "HOJE"
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
      Index           =   1
      Left            =   9960
      TabIndex        =   2
      Top             =   120
      Width           =   1815
   End
   Begin VB.Label Label 
      Caption         =   "DESPESAS PAGAS POR CENTRO DE CUSTO"
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
      Index           =   0
      Left            =   240
      TabIndex        =   1
      Top             =   120
      Width           =   6735
   End
End
Attribute VB_Name = "frmCentroDeCustoNew"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim tabValor(15) As Currency
Dim tabDesc(15) As String
Dim Status As Integer
Dim IndSalvo As Integer
Dim PessoaAnterior As String
Dim PesAnter As String
Dim NotaFiscalAnterior As String
Dim NotaAnter As String
Dim Encontrei As Byte
Dim Indice As Integer
Dim TotalCentroDeCusto As Currency
Dim Relatorio As String
Dim DataInicioInvertida As String
Dim DataFinalInvertida As String
Dim DataHoje As Date
Dim Sql As String
Dim rel As Object
Dim R1 As String
Dim R2 As String

Private Sub cmdAnalitico_Click()
    Call GeraDataInicioDataFim
   
   Relatorio = "drCustoAnalitico"
   R1 = "drCentroDeCusto"
   R2 = "drCustoAnalitico"
   Call Rotina_AbrirBanco
   
   gge.Open "Select * from GeradorGeral WHERE chAlfaNumerica = ('" & R1 & "') or chAlfaNumerica = ('" & R2 & "')", db, 3, 3
   If Not gge.EOF Then
      gge.MoveFirst
      Do While Not gge.EOF
         gge.Delete
         gge.MoveNext
      Loop
   End If
   
   gdet.Open "Select * from GeradorGeralDetalhe where ChaveAlfa1 = ('" & R1 & "') or ChaveAlfa1 = ('" & R2 & "')", db, 3, 3
   If Not gdet.EOF Then
      gdet.MoveFirst
      Do While Not gdet.EOF
         gdet.Delete
         gdet.MoveNext
      Loop
   End If
   
If gge.State = 1 Then
   gge.Close: Set gge = Nothing
End If
If gdet.State = 1 Then
   gdet.Close: Set gdet = Nothing
End If

   db.BeginTrans
   gge.Open "Select * from GeradorGeral where chAlfaNumerica = ('" & Relatorio & " ')", db, 3, 3
   If gge.EOF Then
      gge.AddNew
   End If

   gge!chAlfaNumerica = "drCustoAnalitico"
   gge!ggeDataHoje = Date
   gge!ggeDataIni = DataInicioInvertida
   gge!ggeDataFim = DataFinalInvertida
   gge.Update
   
   db.CommitTrans
   
   gridCentroDeCusto.Rows = IndSalvo + 1

   For Indice = 1 To IndSalvo
      If tabDesc(Indice) = Empty Then
         Indice = 15
      Else
         If gdet.State = 1 Then
           gdet.Close: Set gdet = Nothing
         End If
         gdet.Open "Select * from GeradorGeralDetalhe where ChaveAlfa1 = ('" & Relatorio & "') and ChaveAlfa2 = ('" & gridCentroDeCusto.TextMatrix(Indice, 1) & "')", db, 3, 3
         If gdet.EOF Then
            gdet.AddNew
         End If
         gdet!ChaveAlfa1 = Relatorio
         gdet!chTipoDoRelatorio = Indice
         gdet!ChaveAlfa2 = gridCentroDeCusto.TextMatrix(Indice, 1)
         gdet!ChaveValor1 = gridCentroDeCusto.TextMatrix(Indice, 2)
         gdet.Update
      End If
   Next

   Set rel = drCustoAnalitico
   Sql = "Select gge.ggeDataHoje, gge.ggeDataIni, gge.ggeDataFim, gdet.ChaveAlfa2, "
   Sql = Sql & " gdet.chTipoDoRelatorio, nfd.chCodProduto, nfd.chProdutoFabrica, nfd.nfdValorParcela, nfd.chPessoa, "
   Sql = Sql & " nfd.chProdutoFabrica, ctp.chNotaFiscal, ctp.ctpDataPagamento, ctp.ctpStatus "
   Sql = Sql & " From GeradorGeral gge, GeradorGeralDetalhe gdet, NotaFiscalDetProd nfd, Contas_A_Pagar ctp "
   Sql = Sql & "WHERE gge.chAlfaNumerica = ('" & Relatorio & "') and gdet.ChaveAlfa1 = ('" & Relatorio & "') "
   Sql = Sql & " AND nfd.chProdutoFabrica = gdet.ChaveAlfa2 and nfd.chPessoa = ctp.chPessoa AND nfd.chNotaFiscalEntrada = ctp.chNotaFiscal AND ctp.ctpStatus = 1 "
   Sql = Sql & " ORDER BY gdet.chTipoDoRelatorio, ctp.ctpDataPagamento, nfd.chPessoa"

AbrirRelatorio Sql, rel
Call FechaDB


End Sub

Private Sub cmdImprimir_Click()

   Call GeraDataInicioDataFim
   
   Relatorio = "drCentroDeCusto"
   Call Rotina_AbrirBanco
   
   db.BeginTrans
   
   db.Execute ("DELETE FROM GeradorGeral WHERE chAlfaNumerica = 'drCustoAnalitico'")
  
   db.Execute ("DELETE FROM GeradorGeralDetalhe WHERE ChaveAlfa1 = 'drCustoAnalitico'")
   
   gge.Open "Select * from GeradorGeral where chAlfaNumerica = ('" & Relatorio & " ')", db, 3, 3
   If gge.EOF Then
      gge.AddNew
   End If

   gge!chAlfaNumerica = "drCentroDeCusto"
   gge!ggeDataHoje = Date
   gge!ggeDataIni = DataInicioInvertida
   gge!ggeDataFim = DataFinalInvertida
   gge.Update
   
   db.CommitTrans
   
   gridCentroDeCusto.Rows = IndSalvo + 1

   For Indice = 1 To IndSalvo
      If tabDesc(Indice) = Empty Then
         Indice = 15
      Else
         If gdet.State = 1 Then
           gdet.Close: Set gdet = Nothing
         End If
         gdet.Open "Select * from GeradorGeralDetalhe where ChaveAlfa1 = ('" & Relatorio & "') and ChaveAlfa2 = ('" & gridCentroDeCusto.TextMatrix(Indice, 1) & "')", db, 3, 3
         If gdet.EOF Then
            gdet.AddNew
         End If
         gdet!ChaveAlfa1 = Relatorio
         gdet!chTipoDoRelatorio = Indice
         gdet!ChaveAlfa2 = gridCentroDeCusto.TextMatrix(Indice, 1)
         gdet!ChaveValor1 = gridCentroDeCusto.TextMatrix(Indice, 2)
         gdet.Update
      End If
   Next

   Set rel = drCentroDeCusto
   Sql = "Select gge.ggeDataHoje, gge.ggeDataIni, gge.ggeDataFim, gdet.ChaveAlfa2, gdet.ChaveValor1 "
   Sql = Sql & " From GeradorGeral gge, GeradorGeralDetalhe gdet "
   Sql = Sql & "WHERE gge.chAlfaNumerica = ('" & Relatorio & "') and gdet.ChaveAlfa1 = ('" & Relatorio & "') "

AbrirRelatorio Sql, rel
Call FechaDB


End Sub

Private Sub cmdSair_Click()
Unload Me
End Sub

Private Sub Form_Load()

For Indice = 1 To 15
    tabValor(Indice) = 0
    tabDesc(Indice) = Empty
Next
    
Status = 1

dtHoje = Date

Call Rotina_AbrirBanco
TotalCentroDeCusto = 0
dnfe.Open "Select * from NotaFiscalDetProd", db, 3, 3
If dnfe.EOF Then
   MsgBox ("Detalhe Produto vazio."), vbInformation
   Exit Sub
End If

dnfe.MoveFirst

Do While Not dnfe.EOF

   If Not (PessoaAnterior = dnfe!chPessoa And NotaFiscalAnterior = dnfe!chNotaFiscalEntrada) Then
    
      If ctp.State = 1 Then
         ctp.Close: Set ctp = Nothing
      End If
        
      ctp.Open "Select * from Contas_A_Pagar where chPessoa = ('" & dnfe!chPessoa & "') and chNotaFiscal = ('" & dnfe!chNotaFiscalEntrada & "') and ctpStatus = ('" & Status & "')", db, 3, 3
      If Not ctp.EOF Then
         PessoaAnterior = dnfe!chPessoa
         NotaFiscalAnterior = dnfe!chNotaFiscalEntrada
         Encontrei = 1
      Else
         If Not (PesAnter = dnfe!chPessoa And NotaAnter = dnfe!chNotaFiscalEntrada) Then
            PesAnter = dnfe!chPessoa
            NotaAnter = dnfe!chNotaFiscalEntrada
         Else
            PessoaAnterior = dnfe!chPessoa
            NotaFiscalAnterior = dnfe!chNotaFiscalEntrada
         End If
         Encontrei = 0
         
      End If
   End If
      
   If Encontrei = 1 Then
      For Indice = 1 To 15
          If tabDesc(Indice) = Empty Then
             tabDesc(Indice) = dnfe!chProdutoFabrica
             tabValor(Indice) = dnfe!nfdValorParcela
             IndSalvo = Indice
             Indice = 15
          Else
             If dnfe!chProdutoFabrica = tabDesc(Indice) Then
                tabValor(Indice) = tabValor(Indice) + dnfe!nfdValorParcela
                Indice = 15
             End If
          End If
      Next
   End If

   
   dnfe.MoveNext

Loop
   
If IndSalvo = 0 Then
   MsgBox ("Sem despesas pagas at� o momento."), vbInformation
   Exit Sub
Else
    gridCentroDeCusto.Rows = IndSalvo + 1
    
    For Indice = 1 To 15
        If tabDesc(Indice) = Empty Then
           Indice = 15
        Else
           gridCentroDeCusto.TextMatrix(Indice, 0) = tabValor(Indice)
           gridCentroDeCusto.TextMatrix(Indice, 1) = tabDesc(Indice)
           gridCentroDeCusto.TextMatrix(Indice, 2) = Format$(tabValor(Indice), "#,##0.00")
           TotalCentroDeCusto = TotalCentroDeCusto + tabValor(Indice)
        End If
    Next
    
    gridCentroDeCusto.Col = 0
    gridCentroDeCusto.ColSel = 0
         
    gridCentroDeCusto.Row = 1
    gridCentroDeCusto.RowSel = IndSalvo
            
    If IndSalvo > 1 Then
       gridCentroDeCusto.Sort = 2
    End If
    
    gridCentroDeCusto.Col = 0
    gridCentroDeCusto.ColSel = 0
    gridCentroDeCusto.Row = 0
    gridCentroDeCusto.RowSel = 0
    
    txtTotal = Format$(TotalCentroDeCusto, "#,##0.00")
    
       
    Call Limpagerador
End If

Call Rotina_AbrirBanco

usu.Open "Select * from Usuario where chNome = ('" & glbUsuario & "')", db, 3, 3
If usu.EOF Then
   MsgBox ("Erro no acesso a Usuario."), vbCritical
   Exit Sub
End If
   
If usu!usuRelAnalitico = 1 Then
   cmdAnalitico.Enabled = True
Else
   cmdAnalitico.Enabled = False
End If

'cmdSair.SetFocus

End Sub

Public Sub GeraDataInicioDataFim()
Dim MesProximo As Integer

Mes = Format$(Month(Date), "00")
ano = Year(Date)
Dia = Format$(1, "00")

DataInicioInvertida = Format$(ano & "-" & Mes & "-" & Dia, "yyyy-mm-dd")

MesProximo = Format$(Mes, "00")
DataHoje = Date
Do While Mes = MesProximo
   DataHoje = DataHoje + 1
   MesProximo = Format$(Month(DataHoje), "00")
Loop
DataHoje = DataHoje - 1
DataFinalInvertida = Format$(DataHoje, "yyyy-mm-dd")

End Sub

Public Sub Limpagerador()

Call Rotina_AbrirBanco
Relatorio = "drCentroDeCusto"
gge.Open "Select * from GeradorGeral where chAlfaNumerica = ('" & Relatorio & " ')", db, 3, 3
   If Not gge.EOF Then
      gge.Delete
   End If

gdet.Open "Select * from GeradorGeralDetalhe where cHAVEaLFA1 = ('" & Relatorio & "')", db, 3, 3
 If gdet.EOF Then
    Exit Sub
 End If
Do While Not gdet.EOF
   gdet.Delete
   gdet.MoveNext
Loop

Call FechaDB

End Sub
