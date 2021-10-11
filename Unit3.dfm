object Form3: TForm3
  Left = 198
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Choisir un composant'
  ClientHeight = 222
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 564
    Height = 222
    Align = alClient
    Color = 4202496
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -27
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ItemHeight = 32
    ParentFont = False
    TabOrder = 0
    OnDblClick = ListBox1DblClick
    OnKeyDown = FormKeyDown
  end
  object Button1: TButton
    Left = 304
    Top = 56
    Width = 75
    Height = 25
    Caption = '0'
    TabOrder = 1
    Visible = False
  end
  object GLScene1: TGLScene
    Left = 24
    Top = 64
  end
end
