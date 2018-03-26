object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Amigos'
  ClientHeight = 306
  ClientWidth = 659
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
    Left = 16
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Clave'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 124
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Nombre'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 272
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 61
    Width = 42
    Height = 13
    Caption = 'Telefono'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 81
    Height = 21
    DataField = 'clave'
    DataSource = DsEsclavo
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 124
    Top = 24
    Width = 141
    Height = 21
    DataField = 'Nombre'
    DataSource = DsEsclavo
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 271
    Top = 24
    Width = 178
    Height = 21
    DataField = 'Codigo'
    DataSource = DsEsclavo
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 80
    Width = 129
    Height = 21
    DataField = 'Telefono'
    DataSource = DsEsclavo
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 128
    Width = 537
    Height = 144
    DataSource = DsMaestro
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDMaestro: TFDTable
    IndexFieldNames = 'Clave'
    MasterSource = DsEsclavo
    MasterFields = 'clave'
    Connection = DataModule1.miconexion
    UpdateOptions.UpdateTableName = 'alumno'
    TableName = 'alumno'
    Left = 592
    Top = 16
  end
  object FDEsclavo: TFDTable
    IndexFieldNames = 'Codigo'
    Connection = DataModule1.miconexion
    UpdateOptions.UpdateTableName = 'amigos'
    TableName = 'amigos'
    Left = 592
    Top = 72
  end
  object DsMaestro: TDataSource
    DataSet = FDMaestro
    Left = 600
    Top = 128
  end
  object DsEsclavo: TDataSource
    DataSet = FDEsclavo
    Left = 600
    Top = 184
  end
end
