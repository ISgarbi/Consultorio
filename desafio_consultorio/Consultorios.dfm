object frmConsultorios: TfrmConsultorios
  Left = 398
  Top = 259
  Width = 493
  Height = 211
  Caption = 'frmConsultorios'
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
    Width = 297
    Height = 29
    Caption = 'Cadastro de Consult'#243'rios'
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
    Height = 100
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clWindow
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
      Width = 48
      Height = 13
      Caption = 'NUMERO'
      FocusControl = edtNumero
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
      TabOrder = 0
      OnClick = btnLocalizarClick
    end
    object edtNome: TDBEdit
      Left = 8
      Top = 24
      Width = 386
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsConsultorios
      MaxLength = 40
      TabOrder = 1
    end
    object edtNumero: TDBEdit
      Left = 8
      Top = 64
      Width = 134
      Height = 21
      DataField = 'NUMERO'
      DataSource = dsConsultorios
      MaxLength = 6
      TabOrder = 2
      OnKeyPress = edtNumeroKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 485
    Height = 43
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
      Font.Color = clBlack
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
      Font.Color = clBlack
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
      Font.Color = clBlack
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
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnFecharClick
    end
  end
  object dsConsultorios: TDataSource
    DataSet = DataModule1.cdsConsultorio
    Left = 448
    Top = 8
  end
end
