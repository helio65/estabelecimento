program estabelecimentodemo;

uses
  Vcl.Forms,
  cadastrodemo in 'cadastrodemo.pas' {frmCadastroDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TfrmCadastroDemo, frmCadastroDemo);
  Application.Run;
end.
