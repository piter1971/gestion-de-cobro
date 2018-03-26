program Project2;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form2},
  UModulo in 'UModulo.pas' {DataModule1: TDataModule},
  UApellidos in 'UApellidos.pas' {Form1},
  UGrupo in 'UGrupo.pas' {Form3},
  UCobro in 'UCobro.pas' {Form4},
  UMaestro in 'UMaestro.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
