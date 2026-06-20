unit cadastrodemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  System.JSON, Empresa, Requisicao;

type
  TfrmCadastroDemo = class(TForm)
    Label1: TLabel;
    edtCNPJ: TEdit;
    btnGetDados: TSpeedButton;
    btnFechar: TButton;
    Memo1: TMemo;
    procedure btnFecharClick(Sender: TObject);
    procedure btnGetDadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroDemo: TfrmCadastroDemo;

implementation

{$R *.dfm}

procedure TfrmCadastroDemo.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCadastroDemo.btnGetDadosClick(Sender: TObject);
var
  LRequisicao : TRequisicao;
  LResult : TJSONObject;
begin
  if String(edtCNPJ.Text).IsEmpty then
    Exit;

  LRequisicao := TRequisicao.Create;
  LResult     := LRequisicao.GetDadosEmpresa(edtCNPJ.Text);
  try
    Memo1.Lines.Clear;
    Memo1.Lines.Add(LResult.Format(4));
  finally
    FreeAndNil(LRequisicao);
    FreeAndNil(LResult);
  end;
end;

end.
