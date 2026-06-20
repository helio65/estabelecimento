{ ### TCidade - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 26/05/2024
  ##$ Delphi utilizado: Versão 10.3.3
}

unit Cidade;

interface

uses
  System.Classes;

type
  TCidade = class
  private
    Fid: Integer;
    Fnome: string;
    Fibge_id: Integer;
    Fsiafi_id: string;
  public
    property id: Integer read Fid write Fid;
    property nome: string read Fnome write Fnome;
    property ibge_id: Integer read Fibge_id write Fibge_id;
    property siafi_id: string read Fsiafi_id write Fsiafi_id;
  end;

implementation

end.
