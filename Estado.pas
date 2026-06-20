{ ### TEstado - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit Estado;

interface

uses
  System.Classes;

type
  TEstado = class
  private
    Fid: Integer;
    Fnome: string;
    Fsigla: string;
    Fibge_id: Integer;
  public
    property id: Integer read Fid write Fid;
    property nome: string read Fnome write Fnome;
    property sigla: string read Fsigla write Fsigla;
    property ibge_id: Integer read Fibge_id write Fibge_id;
  end;

implementation

end.
