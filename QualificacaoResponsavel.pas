{ ### TQualificacaoResponsavel - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit QualificacaoResponsavel;

interface

uses
  System.Classes;

type
  TQualificacaoResponsavel = class
  private
    Fid: string;
    Fdescricao: string;
  public
    property id: string read Fid write Fid;
    property descricao: string read Fdescricao write Fdescricao;
  end;

implementation

end.
