VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   435
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2085
   LinkTopic       =   "Form1"
   ScaleHeight     =   435
   ScaleWidth      =   2085
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   0
      Width           =   1695
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   1680
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Created by James
' To contact add and/or email webmonster123@hotmail.com
' This program will check if the persons IP is allowed to use the program
' I put this in all programs that people must pay before they can use

Option Explicit
Private Sub Form_Load()
On Error Resume Next ' Ignores errors
Text1.Text = Winsock1.LocalIP ' This will show you your IP
If Text1.Text = "0.0.0.0.0" Then ' Change the 0.0.0.0.0 to the IP you want to beable to use this program
Form2.Show
Unload Me
Else ' If it is another IP than the one you put this will show
MsgBox "You must first buy this program before you can use it." & vbCrLf & vbCrLf & "Goto www.YOURSITE.com to buy it.", vbCritical, "PROGRAM NAME"
Unload Me ' Closes program
End If
End Sub
