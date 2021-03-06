object frmPaciente: TfrmPaciente
  Left = 485
  Top = 233
  Width = 493
  Height = 251
  Caption = 'Cadastro Paciente'
  Color = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 265
    Height = 29
    Caption = 'Cadastro de Pacientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 485
    Height = 142
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 32
      Height = 13
      Caption = 'NOME'
      FocusControl = edtNome
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 60
      Height = 13
      Caption = 'ENDERE'#199'O'
      FocusControl = edtEndereco
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 107
      Height = 13
      Caption = 'N'#218'MERO CONV'#202'NIO'
      FocusControl = edtNumeroConvenio
    end
    object btnLocalizar: TBitBtn
      Left = 400
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnLocalizarClick
    end
    object edtNome: TDBEdit
      Left = 8
      Top = 24
      Width = 385
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsPaciente
      MaxLength = 40
      TabOrder = 1
    end
    object edtEndereco: TDBEdit
      Left = 8
      Top = 64
      Width = 385
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = dsPaciente
      MaxLength = 40
      TabOrder = 2
    end
    object edtNumeroConvenio: TDBEdit
      Left = 8
      Top = 104
      Width = 134
      Height = 21
      DataField = 'NUMEROCONVENIO'
      DataSource = dsPaciente
      MaxLength = 6
      TabOrder = 3
      OnKeyPress = edtNumeroConvenioKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 179
    Width = 485
    Height = 41
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 1
    object btnIncluir: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnCancelar: TButton
      Left = 183
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object btnGravar: TButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnGravarClick
    end
    object btnFechar: TButton
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnFecharClick
    end
  end
  object dsPaciente: TDataSource
    DataSet = DataModule1.cdsPaciente
    Left = 352
    Top = 8
  end
end
