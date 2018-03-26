unit UApellidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
 UModulo;

procedure TForm1.Edit1Change(Sender: TObject);
var
 cad:String;
begin
  cad:='Apellidos like '+QuotedStr('%');
  DataModule1.FDAlumno.Filtered:=false;
  DataModule1.FDAlumno.Filter:='Apellidos like '+QuotedStr(edit1.Text+'%');
  if DataModule1.FDAlumno.Filter<>cad then
    DataModule1.FDAlumno.Filtered:=true;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DataModule1.FDAlumno.Filtered:=true;
end;

end.
