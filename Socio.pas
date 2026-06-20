{ ### TSocio - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit Socio;

interface

uses
  System.Classes;

type
  TSocio = class
  private
    Fnome: string;
    Fqualificacao: string;
  public
    property nome: string read Fnome write Fnome;
    property qualificacao: string read Fqualificacao write Fqualificacao;
  end;

implementation

end.
