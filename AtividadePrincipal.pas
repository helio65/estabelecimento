{ ### TAtividadePrincipal - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit AtividadePrincipal;

interface

uses
  System.Classes;

type
  TAtividadePrincipal = class
  private
    Fid: string;
    Fsecao: string;
    Fdivisao: string;
    Fgrupo: string;
    Fclasse: string;
    Fsubclasse: string;
    Fdescricao: string;
  public
    property id: string read Fid write Fid;
    property secao: string read Fsecao write Fsecao;
    property divisao: string read Fdivisao write Fdivisao;
    property grupo: string read Fgrupo write Fgrupo;
    property classe: string read Fclasse write Fclasse;
    property subclasse: string read Fsubclasse write Fsubclasse;
    property descricao: string read Fdescricao write Fdescricao;
  end;

implementation

end.
