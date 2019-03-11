program Pr_fr_test;

uses
  Vcl.Forms,
  fr_test in 'fr_test.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
