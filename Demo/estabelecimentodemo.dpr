program estabelecimentodemo;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  cadastrodemo in 'cadastrodemo.pas' {frmCadastroDemo},
  PorteModel in '..\PorteModel.pas',
  NaturezaJuridicaModel in '..\NaturezaJuridicaModel.pas',
  SimplesModel in '..\SimplesModel.pas',
  AtividadePrincipalModel in '..\AtividadePrincipalModel.pas',
  PaisModel in '..\PaisModel.pas',
  EstadoModel in '..\EstadoModel.pas',
  CidadeModel in '..\CidadeModel.pas',
  InscricaoEstadualModel in '..\InscricaoEstadualModel.pas',
  SocioModel in '..\SocioModel.pas',
  EmpresaModel in '..\EmpresaModel.pas',
  QualificacaoResponsavelModel in '..\QualificacaoResponsavelModel.pas',
  Requisicao in '..\Requisicao.pas',
  EstabelecimentoModel in '..\EstabelecimentoModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
//  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TfrmCadastroDemo, frmCadastroDemo);
  Application.Run;
end.
