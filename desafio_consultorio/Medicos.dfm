object frmMedicos: TfrmMedicos
  Left = 352
  Top = 208
  Width = 495
  Height = 265
  Caption = 'Cadastro de M'#233'dicos'
  Color = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 249
    Height = 29
    Caption = 'Cadastro de M'#233'dicos'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 487
    Height = 155
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clWhite
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
      Width = 24
      Height = 13
      Caption = 'CRM'
      FocusControl = edtCrm
    end
    object Label4: TLabel
      Left = 8
      Top = 92
      Width = 33
      Height = 13
      Caption = 'IDADE'
      FocusControl = edtIdade
    end
    object Label5: TLabel
      Left = 153
      Top = 49
      Width = 84
      Height = 13
      Caption = 'ESPECIALIDADE'
    end
    object edtNome: TDBEdit
      Left = 8
      Top = 24
      Width = 385
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsMedicos
      MaxLength = 40
      TabOrder = 0
    end
    object edtCrm: TDBEdit
      Left = 8
      Top = 64
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CRM'
      DataSource = dsMedicos
      MaxLength = 6
      TabOrder = 1
      OnKeyPress = edtCrmKeyPress
    end
    object edtIdade: TDBEdit
      Left = 8
      Top = 108
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IDADE'
      DataSource = dsMedicos
      MaxLength = 3
      TabOrder = 2
      OnKeyPress = edtIdadeKeyPress
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
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnLocalizarClick
    end
    object cbEspecialidade: TDBComboBox
      Left = 152
      Top = 64
      Width = 193
      Height = 21
      DataField = 'ESPECIALIDADE'
      DataSource = dsMedicos
      ItemHeight = 13
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 192
    Width = 487
    Height = 42
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clWhite
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
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnCancelar: TButton
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
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
      Font.Name = 'Arial'
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
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnFecharClick
    end
  end
  object dsMedicos: TDataSource
    DataSet = DataModule1.cdsMedicos
    Left = 448
    Top = 8
  end
  object dsEspecialidade: TDataSource
    DataSet = DataModule1.dsEspecialidade
    Left = 408
    Top = 8
  end
end
