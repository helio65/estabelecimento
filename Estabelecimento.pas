unit Estabelecimento;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, System.JSON,
  REST.Client, REST.Types;

type
  TEstabelecimento = class
  private
    FLogradouro: String;
    FInicio_Atividade: TDateTime;
    FCNPJ: String;
    FBairro: String;
    FRazao_Social: String;
    FInscricao_Estadual: String;
    FCEP: String;
    FNumero: Integer;
    FNatureza_Juridica: Integer;
    FNome_Fantasia: String;
    FAtividade_Principal: Integer;
    FComplemento: String;
    FRestClint    : TRESTClient;
    FRestRequest  : TRESTRequest;
    FRestResponse : TRESTResponse;
    procedure SetAtividade_Principal(const Value: Integer);
    procedure SetBairro(const Value: String);
    procedure SetCEP(const Value: String);
    procedure SetCNPJ(const Value: String);
    procedure SetComplemento(const Value: String);
    procedure SetInicio_Atividade(const Value: TDateTime);
    procedure SetInscricao_Estadual(const Value: String);
    procedure SetLogradouro(const Value: String);
    procedure SetNatureza_Juridica(const Value: Integer);
    procedure SetNome_Fantasia(const Value: String);
    procedure SetNumero(const Value: Integer);
    procedure SetRazao_Social(const Value: String);
  public
    function GetDadosEstabelecimento(ACnpj: String): TEstabelecimento;
    property CNPJ : String read FCNPJ write SetCNPJ;
    property Natureza_Juridica : Integer read FNatureza_Juridica write SetNatureza_Juridica;
    property Razao_Social : String read FRazao_Social write SetRazao_Social;
    property Nome_Fantasia : String read FNome_Fantasia write SetNome_Fantasia;
    property Logradouro : String read FLogradouro write SetLogradouro;
    property Numero : Integer read FNumero write SetNumero;
    property Complemento : String read FComplemento write SetComplemento;
    property Bairro : String read FBairro write SetBairro;
    property CEP : String read FCEP write SetCEP;
    property Atividade_Principal : Integer read FAtividade_Principal write SetAtividade_Principal;
    property Inicio_Atividade : TDateTime read FInicio_Atividade write SetInicio_Atividade;
    property Inscricao_Estadual : String read FInscricao_Estadual write SetInscricao_Estadual;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TEstabelecimento }

constructor TEstabelecimento.Create;
begin
  Self.FRestClint            := TRESTClient.Create(nil);
  Self.FRestRequest          := TRESTRequest.Create(nil);
  Self.FRestResponse         := TRESTResponse.Create(nil);
  Self.FRestRequest.Response := Self.FRestResponse;
  Self.FRestRequest.Client   := Self.FRestClint;
end;

destructor TEstabelecimento.Destroy;
begin
  FreeAndNil(Self.FRestClint);
  FreeAndNil(Self.FRestRequest);
  FreeAndNil(Self.FRestResponse);
  inherited;
end;

function TEstabelecimento.GetDadosEstabelecimento(ACnpj: String): TEstabelecimento;
var
  LJSONGeral,
  LJSONEstabelecimento,
  LJSONAtividadePrincipal,
  LJSONNaturezaJuridica : TJsonObject;
  LJSONInscricaoEstadual : TJSONArray;
  LDtInicioAtividade : String;
begin
  Self.FRestClint.BaseURL := 'https://publica.cnpj.ws/cnpj/'+ACnpj.Replace('.', '').Replace('/', '').Replace('-', '');
  Result                  := nil;
  try
    FRestRequest.Execute;
    if FRestResponse.StatusCode = 200 then
    begin
      try
        LJSONGeral               := TJSONObject(FRestResponse.JSONValue);
        LJSONNaturezaJuridica    := TJSONObject(LJSONGeral.GetValue('natureza_juridica'));
        LJSONEstabelecimento     := TJSONObject(LJSONGeral.GetValue('estabelecimento'));
        LJSONAtividadePrincipal  := TJSONObject(LJSONEstabelecimento.GetValue('atividade_principal'));
        LJSONInscricaoEstadual   := TJSONArray(LJSONEstabelecimento.GetValue('inscricoes_estaduais'));

        Self.Natureza_Juridica   := StrToIntDef(LJSONNaturezaJuridica.GetValue('id').Value, 0);
        Self.Razao_Social        := LJSONGeral.GetValue('razao_social').Value;
        Self.Nome_Fantasia       := LJSONEstabelecimento.GetValue('nome_fantasia').Value;

        LDtInicioAtividade       := Copy(LJSONEstabelecimento.GetValue('data_inicio_atividade').Value, 9, 2) + '/' +
                                    Copy(LJSONEstabelecimento.GetValue('data_inicio_atividade').Value, 6, 2) + '/' +
                                    Copy(LJSONEstabelecimento.GetValue('data_inicio_atividade').Value, 1, 4) ;

        Self.Inicio_Atividade    := StrToDate(LDtInicioAtividade);
        if LJSONEstabelecimento.GetValue('tipo_logradouro').Value.Trim <> 'null' then
          Self.Logradouro          := LJSONEstabelecimento.GetValue('tipo_logradouro').Value;
        Self.Logradouro          := Self.Logradouro + ' ' + LJSONEstabelecimento.GetValue('logradouro').Value;
        Self.Numero              := StrToIntDef(LJSONEstabelecimento.GetValue('numero').Value, 0);
        if (LJSONEstabelecimento.GetValue('complemento').Value.Trim <> 'null') and (not String(LJSONEstabelecimento.GetValue('complemento').Value).IsEmpty) then
          Self.Complemento         := LJSONEstabelecimento.GetValue('complemento').Value;
        Self.Bairro              := LJSONEstabelecimento.GetValue('bairro').Value;
        Self.CEP                 := LJSONEstabelecimento.GetValue('cep').Value;
        Self.Atividade_Principal := StrToIntDef(LJSONAtividadePrincipal.GetValue('id').Value, 0);
        Self.Inscricao_Estadual  := LJSONInscricaoEstadual.Items[0].FindValue('inscricao_estadual').Value;
        Result := Self;
      finally

      end;
    end;
  finally

  end;
end;

procedure TEstabelecimento.SetAtividade_Principal(const Value: Integer);
begin
  FAtividade_Principal := Value;
end;

procedure TEstabelecimento.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TEstabelecimento.SetCEP(const Value: String);
begin
  FCEP := Value;
end;

procedure TEstabelecimento.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TEstabelecimento.SetComplemento(const Value: String);
begin
  FComplemento := Value;
end;

procedure TEstabelecimento.SetInicio_Atividade(const Value: TDateTime);
begin
  FInicio_Atividade := Value;
end;

procedure TEstabelecimento.SetInscricao_Estadual(const Value: String);
begin
  FInscricao_Estadual := Value;
end;

procedure TEstabelecimento.SetLogradouro(const Value: String);
begin
  FLogradouro := Value;
end;

procedure TEstabelecimento.SetNatureza_Juridica(const Value: Integer);
begin
  FNatureza_Juridica := Value;
end;

procedure TEstabelecimento.SetNome_Fantasia(const Value: String);
begin
  FNome_Fantasia := Value;
end;

procedure TEstabelecimento.SetNumero(const Value: Integer);
begin
  FNumero := Value;
end;

procedure TEstabelecimento.SetRazao_Social(const Value: String);
begin
  FRazao_Social := Value;
end;

end.
