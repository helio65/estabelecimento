{ ### TEstabelecimento - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 26/05/2024
  ##$ Delphi utilizado: Versão 10.3.3
}

unit Estabelecimento;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, System.JSON,
  REST.Client, REST.Types, Rest.JSON, Vcl.Dialogs,
  Porte, NaturezaJuridica, Simples, AtividadePrincipal, Pais, Estado, Cidade,
  InscricaoEstadual;

type
  TEstabelecimento = class
  private
    Fcnpj: string;
    Fcnpj_raiz: string;
    Fcnpj_ordem: string;
    Fcnpj_digito_verificador: string;
    Ftipo: string;
    Fnome_fantasia: string;
    Fsituacao_cadastral: string;
    Fdata_situacao_cadastral: string;
    Fdata_inicio_atividade: string;
    Fnome_cidade_exterior: string;
    Ftipo_logradouro: string;
    Flogradouro: string;
    Fnumero: string;
    Fcomplemento: string;
    Fbairro: string;
    Fcep: string;
    Fddd1: string;
    Ftelefone1: string;
    Fddd2: string;
    Ftelefone2: string;
    Fddd_fax: string;
    Ffax: string;
    Femail: string;
    Fsituacao_especial: string;
    Fdata_situacao_especial: string;
    Fatualizado_em: string;
    Fatividade_principal: TAtividadePrincipal;
    Fpais: TPais;
    Festado: TEstado;
    Fcidade: TCidade;
    Fmotivo_situacao_cadastral: string;
    Finscricoes_estaduais: TArray<TInscricaoEstadual>;
  public
    constructor Create;
    destructor Destroy; override;
    property cnpj: string read Fcnpj write Fcnpj;
    property cnpj_raiz: string read Fcnpj_raiz write Fcnpj_raiz;
    property cnpj_ordem: string read Fcnpj_ordem write Fcnpj_ordem;
    property cnpj_digito_verificador: string read Fcnpj_digito_verificador write Fcnpj_digito_verificador;
    property tipo: string read Ftipo write Ftipo;
    property nome_fantasia: string read Fnome_fantasia write Fnome_fantasia;
    property situacao_cadastral: string read Fsituacao_cadastral write Fsituacao_cadastral;
    property data_situacao_cadastral: string read Fdata_situacao_cadastral write Fdata_situacao_cadastral;
    property data_inicio_atividade: string read Fdata_inicio_atividade write Fdata_inicio_atividade;
    property nome_cidade_exterior: string read Fnome_cidade_exterior write Fnome_cidade_exterior;
    property tipo_logradouro: string read Ftipo_logradouro write Ftipo_logradouro;
    property logradouro: string read Flogradouro write Flogradouro;
    property numero: string read Fnumero write Fnumero;
    property complemento: string read Fcomplemento write Fcomplemento;
    property bairro: string read Fbairro write Fbairro;
    property cep: string read Fcep write Fcep;
    property ddd1: string read Fddd1 write Fddd1;
    property telefone1: string read Ftelefone1 write Ftelefone1;
    property ddd2: string read Fddd2 write Fddd2;
    property telefone2: string read Ftelefone2 write Ftelefone2;
    property ddd_fax: string read Fddd_fax write Fddd_fax;
    property fax: string read Ffax write Ffax;
    property email: string read Femail write Femail;
    property situacao_especial: string read Fsituacao_especial write Fsituacao_especial;
    property data_situacao_especial: string read Fdata_situacao_especial write Fdata_situacao_especial;
    property atualizado_em: string read Fatualizado_em write Fatualizado_em;
    property atividade_principal: TAtividadePrincipal read Fatividade_principal write Fatividade_principal;
    property pais: TPais read Fpais write Fpais;
    property estado: TEstado read Festado write Festado;
    property cidade: TCidade read Fcidade write Fcidade;
    property motivo_situacao_cadastral: string read Fmotivo_situacao_cadastral write Fmotivo_situacao_cadastral;
    property inscricoes_estaduais: TArray<TInscricaoEstadual> read Finscricoes_estaduais write Finscricoes_estaduais;
  end;

implementation

constructor TEstabelecimento.Create;
begin
  Fatividade_principal := TAtividadePrincipal.Create;
  Fpais                := TPais.Create;
  Festado              := TEstado.Create;
  Fcidade              := TCidade.Create;
end;

destructor TEstabelecimento.Destroy;
var
  LAindex: Integer;
begin
  for LAindex := Low(Finscricoes_estaduais) to High(Finscricoes_estaduais) do
  begin
    if Assigned(Finscricoes_estaduais[LAindex]) then
      Finscricoes_estaduais[LAindex].Free;
  end;
  FreeAndNil(Fatividade_principal);
  FreeAndNil(Fpais);
  FreeAndNil(Festado);
  FreeAndNil(Fcidade);
  inherited;
end;

end.
