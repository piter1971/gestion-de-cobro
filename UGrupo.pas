unit UGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
uses
 UModulo;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
DataModule1.FDAlumno.IndexName:='iGrupo';
DataModule1.FDAlumno.SetRangeStart;
DataModule1.FDAlumno.FieldByName('Grupo').AsString:=Combobox1.Text;
DataModule1.FDAlumno.SetRangeEnd;
DataModule1.FDAlumno.FieldByName('Grupo').AsString:=Combobox1.Text+'zzz';
DataModule1.FDAlumno.ApplyRange;

end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.FDAlumno.CancelRange;
end;

end.
