object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Formulario de Cobro'
  ClientHeight = 201
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 8
    Width = 315
    Height = 42
    Caption = 'Gestion de cobros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 72
    Width = 83
    Height = 13
    Caption = 'Persona a pagar:'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 177
    Top = 64
    Width = 256
    Height = 21
    KeyField = 'Clave'
    ListField = 'Apellidos;Nombre'
    ListSource = DataModule1.dsPago
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 128
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 248
    Top = 128
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
