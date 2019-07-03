object Form1: TForm1
  Left = 282
  Top = 157
  Caption = 'File Hi Lo swaper'
  ClientHeight = 160
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 73
    Height = 13
    Caption = '&Open binary file'
    FocusControl = Edit1
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 64
    Height = 13
    Caption = '&New filename'
    FocusControl = Edit2
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 545
    Height = 21
    ReadOnly = True
    TabOrder = 0
    Text = 'Edit1'
    OnClick = Button1Click
  end
  object Button1: TButton
    Left = 555
    Top = 32
    Width = 38
    Height = 20
    Caption = '...'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 112
    Width = 97
    Height = 25
    Caption = '&Swap Hi-Lo bytes'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 80
    Width = 545
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
  end
  object Button3: TButton
    Left = 496
    Top = 112
    Width = 97
    Height = 25
    Caption = '&Exit'
    TabOrder = 4
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    Left = 392
    Top = 112
  end
end
