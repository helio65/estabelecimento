{ ### TSimples - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit Simples;

interface

uses
  System.Classes;

type
  TSimples = class
  private
    Fmei: string;
    Fsimples: string;
    Fdata_opcao_mei: string;
    Fdata_exclusao_mei: string;
    Fdata_opcao_simples: string;
    Fdata_exclusao_simples: string;
    Fatualizado_em: string;
  public
    property mei: string read Fmei write Fmei;
    property simples: string read Fsimples write Fsimples;
    property data_opcao_mei: string read Fdata_opcao_mei write Fdata_opcao_mei;
    property data_exclusao_mei: string read Fdata_exclusao_mei write Fdata_exclusao_mei;
    property data_opcao_simples: string read Fdata_opcao_simples write Fdata_opcao_simples;
    property data_exclusao_simples: string read Fdata_exclusao_simples write Fdata_exclusao_simples;
    property atualizado_em: string read Fatualizado_em write Fatualizado_em;
  end;

implementation

end.
