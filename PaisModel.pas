{ ### TPais - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit PaisModel;

interface

uses
  System.Classes;

type
  TPaisModel = class
  private
    Fid: string;
    Fiso2: string;
    Fiso3: string;
    Fnome: string;
    Fcomex_id: string;
  public
    property id: string read Fid write Fid;
    property iso2: string read Fiso2 write Fiso2;
    property iso3: string read Fiso3 write Fiso3;
    property nome: string read Fnome write Fnome;
    property comex_id: string read Fcomex_id write Fcomex_id;
  end;

implementation

end.
