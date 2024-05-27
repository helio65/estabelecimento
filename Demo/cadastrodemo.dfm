object frmCadastroDemo: TfrmCadastroDemo
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Demonstra'#231#227'o da utiliza'#231#227'o da Classe TEstabelecimento'
  ClientHeight = 323
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
  object Label2: TLabel
    Left = 7
    Top = 55
    Width = 65
    Height = 15
    Caption = 'Raz'#227'o Social'
  end
  object Label3: TLabel
    Left = 300
    Top = 55
    Width = 95
    Height = 15
    Caption = 'Nome de Fantasia'
  end
  object Label4: TLabel
    Left = 8
    Top = 102
    Width = 96
    Height = 15
    Caption = 'In'#237'cio de atividade'
  end
  object Label5: TLabel
    Left = 144
    Top = 102
    Width = 99
    Height = 15
    Caption = 'Atividade Principal'
  end
  object Label6: TLabel
    Left = 272
    Top = 102
    Width = 94
    Height = 15
    Caption = 'Inscri'#231#227'o Estadual'
  end
  object Label7: TLabel
    Left = 8
    Top = 150
    Width = 21
    Height = 15
    Caption = 'CEP'
  end
  object Label8: TLabel
    Left = 96
    Top = 150
    Width = 62
    Height = 15
    Caption = 'Logradouro'
  end
  object Label9: TLabel
    Left = 392
    Top = 150
    Width = 44
    Height = 15
    Caption = 'N'#250'mero'
  end
  object Label10: TLabel
    Left = 8
    Top = 200
    Width = 31
    Height = 15
    Caption = 'Bairro'
  end
  object Label11: TLabel
    Left = 240
    Top = 200
    Width = 77
    Height = 15
    Caption = 'Complemento'
  end
  object btnGetDados: TSpeedButton
    Left = 8
    Top = 272
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
    Left = 7
    Top = 26
    Width = 145
    Height = 23
    NumbersOnly = True
    TabOrder = 0
  end
  object edtRazaoSocial: TEdit
    Left = 7
    Top = 72
    Width = 282
    Height = 23
    Enabled = False
    TabOrder = 1
  end
  object edtNomeFantasia: TEdit
    Left = 300
    Top = 72
    Width = 178
    Height = 23
    Enabled = False
    TabOrder = 2
  end
  object edtDtInicioAtividade: TEdit
    Left = 8
    Top = 119
    Width = 97
    Height = 23
    Enabled = False
    TabOrder = 3
  end
  object edtCodigoAtividadePrincipal: TEdit
    Left = 144
    Top = 119
    Width = 101
    Height = 23
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 4
  end
  object edtInscricaoEstadual: TEdit
    Left = 272
    Top = 119
    Width = 110
    Height = 23
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 5
  end
  object edtCEP: TEdit
    Left = 8
    Top = 167
    Width = 78
    Height = 23
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 6
  end
  object edtLogradouro: TEdit
    Left = 96
    Top = 167
    Width = 286
    Height = 23
    Enabled = False
    TabOrder = 7
  end
  object edtNumero: TEdit
    Left = 392
    Top = 167
    Width = 83
    Height = 23
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 8
  end
  object edtBairro: TEdit
    Left = 8
    Top = 217
    Width = 209
    Height = 23
    Enabled = False
    TabOrder = 9
  end
  object edtComplemento: TEdit
    Left = 240
    Top = 217
    Width = 191
    Height = 23
    Enabled = False
    TabOrder = 10
  end
  object btnFechar: TButton
    Left = 406
    Top = 275
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = btnFecharClick
  end
end
