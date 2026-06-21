{ ### TRequisicao - classe para obtenção de dados de empresas a partir do número do CNPJ na API cnpj.ws
  ### Analista/Desenvolvedor: Hélio Oliveira
  ### 20/06/20264
  ##$ Delphi utilizado: Versão 12 update 3
}

unit Requisicao;

interface

uses
  System.Classes, System.JSON, System.SysUtils, REST.Client, REST.Types, Rest.JSON,
  EmpresaModel;

type
  TRequisicao = class
  private
    FRestClint    : TRESTClient;
    FRestRequest  : TRESTRequest;
    FRestResponse : TRESTResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function GetDadosEmpresa(Avalue : String) : TJSONObject;
  end;

implementation

constructor TRequisicao.Create;
begin
  FRestClint            := TRESTClient.Create(nil);
  FRestRequest          := TRESTRequest.Create(nil);
  FRestResponse         := TRESTResponse.Create(nil);
  FRestRequest.Response := FRestResponse;
  FRestRequest.Client   := FRestClint;
end;

destructor TRequisicao.Destroy;
begin
  FreeAndNil(FRestClint);
  FreeAndNil(FRestRequest);
  FreeAndNil(FRestResponse);
  inherited;
end;

function TRequisicao.GetDadosEmpresa(Avalue: String): TJSONObject;
var
  LEmpresa : TEmpresaModel;
begin
  FRestClint.BaseURL := 'https://publica.cnpj.ws/cnpj/'+Avalue.Replace('.', '').Replace('/', '').Replace('-', '');
  FRestRequest.Execute;
  if FRestResponse.StatusCode = 200 then
  begin
    try
      LEmpresa := TJson.JsonToObject<TEmpresaModel>(FRestResponse.JSONValue.ToString);
      Result   := TJson.ObjectToJsonObject(LEmpresa);
    finally
      FreeAndNil(LEmpresa);
    end;
  end;
end;

end.
