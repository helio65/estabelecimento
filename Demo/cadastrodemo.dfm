object frmCadastroDemo: TfrmCadastroDemo
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Demonstra'#231#227'o da utiliza'#231#227'o da Classe TEstabelecimento'
  ClientHeight = 606
  ClientWidth = 490
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 7
    Top = 9
    Width = 27
    Height = 15
    Caption = 'CNPJ'
  end
  object btnGetDados: TSpeedButton
    Left = 8
    Top = 560
    Width = 385
    Height = 30
    Caption = 'Pegar Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnGetDadosClick
  end
  object edtCNPJ: TEdit
    Left = 8
    Top = 26
    Width = 145
    Height = 23
    TabOrder = 0
  end
  object btnFechar: TButton
    Left = 406
    Top = 563
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnFecharClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 55
    Width = 467
    Height = 495
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 2
  end
end
