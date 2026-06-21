{ ### TEmpresa - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit EmpresaModel;

interface

uses
  System.Classes, System.Generics.Collections, System.SysUtils, System.JSON, Rest.JSON,
  REST.Client, REST.Types, PorteModel, NaturezaJuridicaModel, SimplesModel, SocioModel,
  EstabelecimentoModel, QualificacaoResponsavelModel;

type
  TEmpresaModel = class
  private
    Fcnpj_raiz: string;
    Frazao_social: string;
    Fcapital_social: string;
    Fresponsavel_federativo: string;
    Fatualizado_em: string;
    Fporte: TPorteModel;
    Fnatureza_juridica: TNaturezaJuridicaModel;
    Fqualificacao_do_responsavel: TQualificacaoResponsavelModel;
    Fsimples: TSimplesModel;
    Festabelecimento: TEstabelecimentoModel;
    Fsocios: TArray<TSocioModel>;
  public
    constructor Create;
    destructor Destroy; override;
    property cnpj_raiz: string read Fcnpj_raiz write Fcnpj_raiz;
    property razao_social: string read Frazao_social write Frazao_social;
    property capital_social: string read Fcapital_social write Fcapital_social;
    property responsavel_federativo: string read Fresponsavel_federativo write Fresponsavel_federativo;
    property atualizado_em: string read Fatualizado_em write Fatualizado_em;
    property porte: TPorteModel read Fporte write Fporte;
    property natureza_juridica: TNaturezaJuridicaModel read Fnatureza_juridica write Fnatureza_juridica;
    property qualificacao_do_responsavel: TQualificacaoResponsavelModel read Fqualificacao_do_responsavel write Fqualificacao_do_responsavel;
    property simples: TSimplesModel read Fsimples write Fsimples;
    property estabelecimento: TEstabelecimentoModel read Festabelecimento write Festabelecimento;
    property socios: TArray<TSocioModel> read Fsocios write Fsocios;
  end;

implementation

uses
  Vcl.Dialogs;

constructor TEmpresaModel.Create;
begin
  Fporte                       := TPorteModel.Create;
  Fnatureza_juridica           := TNaturezaJuridicaModel.Create;
  Fqualificacao_do_responsavel := TQualificacaoResponsavelModel.Create;
  Fsimples                     := TSimplesModel.Create;
  Festabelecimento             := TEstabelecimentoModel.Create;
end;

destructor TEmpresaModel.Destroy;
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
