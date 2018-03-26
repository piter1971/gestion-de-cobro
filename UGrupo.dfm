object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Listado por grupo'
  ClientHeight = 314
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Grupo:'
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'Ingles'
    OnChange = ComboBox1Change
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 48
    Width = 609
    Height = 233
    DataSource = DataModule1.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
