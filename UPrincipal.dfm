object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Gestion de Alumnos'
  ClientHeight = 280
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object contenedor: TNotebook
    Left = 0
    Top = 8
    Width = 505
    Height = 225
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'alta'
      object Shape1: TShape
        Left = 8
        Top = 16
        Width = 465
        Height = 185
        Brush.Color = clOlive
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 24
        Top = 32
        Width = 433
        Height = 153
        Brush.Color = clMedGray
        Shape = stRoundRect
      end
      object Label1: TLabel
        Left = 48
        Top = 45
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 168
        Top = 45
        Width = 42
        Height = 13
        Caption = 'Apellidos'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 48
        Top = 91
        Width = 29
        Height = 13
        Caption = 'Grupo'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 184
        Top = 91
        Width = 29
        Height = 13
        Caption = 'Cuota'
        FocusControl = DBEdit4
      end
      object DBEdit1: TDBEdit
        Left = 48
        Top = 64
        Width = 89
        Height = 21
        DataField = 'Nombre'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 168
        Top = 64
        Width = 257
        Height = 21
        DataField = 'Apellidos'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 48
        Top = 110
        Width = 121
        Height = 21
        DataField = 'Grupo'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 184
        Top = 110
        Width = 81
        Height = 21
        DataField = 'Cuota'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBCheckBox1: TDBCheckBox
        Left = 304
        Top = 112
        Width = 97
        Height = 17
        Caption = 'Pagado'
        DataField = 'Pagado'
        DataSource = DataSource1
        TabOrder = 4
      end
      object b1: TButton
        Left = 161
        Top = 152
        Width = 41
        Height = 25
        Caption = '<'
        TabOrder = 5
        OnClick = b1Click
      end
      object b2: TButton
        Left = 208
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        TabOrder = 6
        OnClick = b2Click
      end
      object b3: TButton
        Left = 289
        Top = 152
        Width = 40
        Height = 25
        Caption = '>'
        TabOrder = 7
        OnClick = b3Click
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'listado'
      object Label5: TLabel
        Left = 216
        Top = 16
        Width = 100
        Height = 13
        Caption = 'LISTADO COMPLETO'
      end
      object RadioGroup1: TRadioGroup
        Left = 9
        Top = 16
        Width = 185
        Height = 49
        Caption = 'Ordenar por'
        Columns = 3
        Items.Strings = (
          'Clave'
          'Apellido'
          'Grupo')
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 88
        Width = 473
        Height = 120
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 336
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Salir'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'principal'
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object MainMenu1: TMainMenu
    Left = 480
    Top = 24
    object Men1: TMenuItem
      Caption = 'Men'#250
      object Alta1: TMenuItem
        Caption = 'Alta'
        OnClick = Alta1Click
      end
      object Baja1: TMenuItem
        Caption = 'Baja'
        OnClick = Baja1Click
      end
      object Modificacion1: TMenuItem
        Caption = 'Modificacion'
        OnClick = Modificacion1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Salir1: TMenuItem
        Caption = 'Salir'
        OnClick = Salir1Click
      end
    end
    object Buscar1: TMenuItem
      Caption = 'Buscar'
      object AlumnosporApellidos1: TMenuItem
        Caption = 'Alumnos por Apellidos'
        OnClick = AlumnosporApellidos1Click
      end
      object Alumnosporgrupo1: TMenuItem
        Caption = 'Alumnos por grupo'
        OnClick = Alumnosporgrupo1Click
      end
      object ListadoAlumnos1: TMenuItem
        Caption = 'Listado Alumnos'
        OnClick = ListadoAlumnos1Click
      end
    end
    object Pago1: TMenuItem
      Caption = 'Pago'
      object PagoCuota1: TMenuItem
        Caption = 'Pago Cuota'
        OnClick = PagoCuota1Click
      end
      object VerPendientedePago1: TMenuItem
        Caption = 'Ver Pendiente de Pago'
        OnClick = VerPendientedePago1Click
      end
    end
    object Amigos1: TMenuItem
      Caption = 'Amigos'
      object Verrelaciondeamigos1: TMenuItem
        Caption = 'Ver relacion de amigos'
        OnClick = Verrelaciondeamigos1Click
      end
    end
    object Ayuda1: TMenuItem
      Caption = 'Ayuda'
      object Manual1: TMenuItem
        Caption = 'Manual'
        OnClick = Manual1Click
      end
      object Acercade1: TMenuItem
        Caption = 'A cerca de'
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.FDAlumno
    Left = 504
    Top = 144
  end
end
