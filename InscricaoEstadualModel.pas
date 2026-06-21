{ ### TInscricaoEstadual - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit InscricaoEstadualModel;

interface

uses
  System.Classes;

type
  TInscricaoEstadual = class
  private
    Finscricao_estadual: string;
    Festado: string;
    Fativa: Boolean;
  public
    property const_inscricao_estadual: string read Finscricao_estadual write Finscricao_estadual;
    property estado: string read Festado write Festado;
    property ativa: Boolean read Fativa write Fativa;
  end;

implementation

end.
