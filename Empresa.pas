{ ### TEmpresa - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit Empresa;

interface

uses
  System.Classes, System.Generics.Collections, System.SysUtils, System.JSON, Rest.JSON,
  REST.Client, REST.Types, Porte, NaturezaJuridica, Simples, Socio, Estabelecimento,
  QualificacaoResponsavel;

type
  TEmpresa = class
  private
    Fcnpj_raiz: string;
    Frazao_social: string;
    Fcapital_social: string;
    Fresponsavel_federativo: string;
    Fatualizado_em: string;
    Fporte: TPorte;
    Fnatureza_juridica: TNaturezaJuridica;
    Fqualificacao_do_responsavel: TQualificacaoResponsavel;
    Fsimples: TSimples;
    Festabelecimento: TEstabelecimento;
    Fsocios: TArray<TSocio>;
  public
    constructor Create;
    destructor Destroy; override;
    property cnpj_raiz: string read Fcnpj_raiz write Fcnpj_raiz;
    property razao_social: string read Frazao_social write Frazao_social;
    property capital_social: string read Fcapital_social write Fcapital_social;
    property responsavel_federativo: string read Fresponsavel_federativo write Fresponsavel_federativo;
    property atualizado_em: string read Fatualizado_em write Fatualizado_em;
    property porte: TPorte read Fporte write Fporte;
    property natureza_juridica: TNaturezaJuridica read Fnatureza_juridica write Fnatureza_juridica;
    property qualificacao_do_responsavel: TQualificacaoResponsavel read Fqualificacao_do_responsavel write Fqualificacao_do_responsavel;
    property simples: TSimples read Fsimples write Fsimples;
    property estabelecimento: TEstabelecimento read Festabelecimento write Festabelecimento;
    property socios: TArray<TSocio> read Fsocios write Fsocios;
  end;

implementation

uses
  Vcl.Dialogs;

constructor TEmpresa.Create;
begin
  Fporte                       := TPorte.Create;
  Fnatureza_juridica           := TNaturezaJuridica.Create;
  Fqualificacao_do_responsavel := TQualificacaoResponsavel.Create;
  Fsimples                     := TSimples.Create;
  Festabelecimento             := TEstabelecimento.Create;
end;

destructor TEmpresa.Destroy;
var
  LAindex: Integer;
begin
  for LAindex := Low(Fsocios) to High(Fsocios) do
  begin
    if Assigned(Fsocios[LAindex]) then
      Fsocios[LAindex].Free;
  end;
  FreeAndNil(Fporte);
  FreeAndNil(Fnatureza_juridica);
  FreeAndNil(Fqualificacao_do_responsavel);
  FreeAndNil(Fsimples);
  FreeAndNil(Festabelecimento);
  inherited;
end;

end.
