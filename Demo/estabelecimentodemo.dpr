program estabelecimentodemo;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  cadastrodemo in 'cadastrodemo.pas' {frmCadastroDemo},
  Porte in '..\Porte.pas',
  NaturezaJuridica in '..\NaturezaJuridica.pas',
  Simples in '..\Simples.pas',
  AtividadePrincipal in '..\AtividadePrincipal.pas',
  Pais in '..\Pais.pas',
  Estado in '..\Estado.pas',
  Cidade in '..\Cidade.pas',
  InscricaoEstadual in '..\InscricaoEstadual.pas',
  Socio in '..\Socio.pas',
  Empresa in '..\Empresa.pas',
  QualificacaoResponsavel in '..\QualificacaoResponsavel.pas',
  Requisicao in '..\Requisicao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
//  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TfrmCadastroDemo, frmCadastroDemo);
  Application.Run;
end.
