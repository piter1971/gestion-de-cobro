unit UModulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI, frxClass, frxDBSet;

type
  TDataModule1 = class(TDataModule)
    miconexion: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDAlumno: TFDTable;
    FDAmigos: TFDTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDAlumnoClave: TFDAutoIncField;
    FDAlumnoNombre: TStringField;
    FDAlumnoApellidos: TStringField;
    FDAlumnoGrupo: TStringField;
    FDAlumnoCuota: TIntegerField;
    FDAlumnoPagado: TBooleanField;
    FDQuery1: TFDQuery;
    FDCPago: TFDQuery;
    dsPago: TDataSource;
    informe: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
