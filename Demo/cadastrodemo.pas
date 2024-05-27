unit cadastrodemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Estabelecimento;

type
  TfrmCadastroDemo = class(TForm)
    Label1: TLabel;
    edtCNPJ: TEdit;
    Label2: TLabel;
    edtRazaoSocial: TEdit;
    Label3: TLabel;
    edtNomeFantasia: TEdit;
    Label4: TLabel;
    edtDtInicioAtividade: TEdit;
    Label5: TLabel;
    edtCodigoAtividadePrincipal: TEdit;
    Label6: TLabel;
    edtInscricaoEstadual: TEdit;
    Label7: TLabel;
    edtCEP: TEdit;
    Label8: TLabel;
    edtLogradouro: TEdit;
    Label9: TLabel;
    edtNumero: TEdit;
    Label10: TLabel;
    edtBairro: TEdit;
    Label11: TLabel;
    edtComplemento: TEdit;
    btnGetDados: TSpeedButton;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnGetDadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroDemo: TfrmCadastroDemo;

implementation

{$R *.dfm}

procedure TfrmCadastroDemo.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCadastroDemo.btnGetDadosClick(Sender: TObject);
var
  Estab : TEstabelecimento;
begin
  if String(edtCNPJ.Text).IsEmpty then
    Exit;

  Estab := TEstabelecimento.Create;
  Estab.GetDadosEstabelecimento(edtCNPJ.Text);
  try
    edtCNPJ.Enabled := False;
    edtRazaoSocial.Text              := Estab.Razao_Social;
    edtNomeFantasia.Text             := Estab.Nome_Fantasia;
    edtDtInicioAtividade.Text        := DateToStr(Estab.Inicio_Atividade);
    edtCodigoAtividadePrincipal.Text := IntToStr(Estab.Atividade_Principal);
    edtInscricaoEstadual.Text        := Estab.Inscricao_Estadual;
    edtCEP.Text                      := Estab.CEP;
    edtLogradouro.Text               := Estab.Logradouro;
    edtNumero.Text                   := IntToStr(Estab.Numero);
    edtBairro.Text                   := Estab.Bairro;
    edtComplemento.Text              := Estab.Complemento;
  finally
    FreeAndNil(Estab);
  end;
end;

end.
