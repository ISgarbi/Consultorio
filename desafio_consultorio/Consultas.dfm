object frmConsulta: TfrmConsulta
  Left = 404
  Top = 163
  Width = 641
  Height = 375
  Caption = 'Consultas'
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
  object Label7: TLabel
    Left = 8
    Top = 8
    Width = 265
    Height = 29
    Caption = 'Cadastro de Consultas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 48
    Width = 633
    Height = 260
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clWhite
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 152
      Width = 78
      Height = 13
      Caption = 'CONSULT'#211'RIO'
      FocusControl = edtConsultorio
    end
    object Label3: TLabel
      Left = 16
      Top = 205
      Width = 53
      Height = 13
      Caption = 'PACIENTE'
      FocusControl = edtPaciente
    end
    object Label4: TLabel
      Left = 16
      Top = 61
      Width = 84
      Height = 13
      Caption = 'ESPECIALIDADE'
    end
    object Label1: TLabel
      Left = 16
      Top = 101
      Width = 42
      Height = 13
      Caption = 'M'#201'DICO'
      FocusControl = edtMedico
    end
    object Label5: TLabel
      Left = 16
      Top = 12
      Width = 29
      Height = 13
      Caption = 'DATA'
    end
    object Label6: TLabel
      Left = 224
      Top = 12
      Width = 31
      Height = 13
      Caption = 'HORA'
    end
    object edtConsultorio: TDBEdit
      Left = 16
      Top = 168
      Width = 524
      Height = 21
      Color = clScrollBar
      DataField = 'NOME'
      DataSource = dsConsultorio
      Enabled = False
      TabOrder = 0
    end
    object edtPaciente: TDBEdit
      Left = 16
      Top = 221
      Width = 524
      Height = 21
      Color = clScrollBar
      DataField = 'NOME'
      DataSource = dsPaciente
      Enabled = False
      TabOrder = 1
    end
    object dtpData: TDateTimePicker
      Left = 16
      Top = 29
      Width = 186
      Height = 21
      Date = 44518.797165694440000000
      Format = 'dd.MM.yyyy'
      Time = 44518.797165694440000000
      TabOrder = 2
    end
    object dtpHora: TDateTimePicker
      Left = 224
      Top = 29
      Width = 186
      Height = 21
      Date = 44518.801697673610000000
      Format = 'HH:mm'
      Time = 44518.801697673610000000
      Kind = dtkTime
      TabOrder = 3
    end
    object cbEspecialidade: TComboBox
      Left = 16
      Top = 77
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
    end
    object btnLocalizarMedico: TBitBtn
      Left = 543
      Top = 114
      Width = 75
      Height = 25
      Caption = 'Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnLocalizarMedicoClick
    end
    object btnLocalizarConsultorio: TBitBtn
      Left = 543
      Top = 165
      Width = 75
      Height = 25
      Caption = 'Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnLocalizarConsultorioClick
    end
    object btnLocalizarPaciente: TBitBtn
      Left = 543
      Top = 218
      Width = 75
      Height = 25
      Caption = 'Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnLocalizarPacienteClick
    end
    object edtMedico: TDBEdit
      Left = 16
      Top = 117
      Width = 524
      Height = 21
      Color = clScrollBar
      DataField = 'NOME'
      DataSource = dsMedicos
      Enabled = False
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 305
    Width = 633
    Height = 39
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clWhite
    TabOrder = 1
    object btnGravar: TBitBtn
      Left = 451
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnGravarClick
    end
    object btnFechar: TBitBtn
      Left = 542
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnFecharClick
    end
  end
  object dsConsultorio: TDataSource
    DataSet = DataModule1.cdsConsultorio
    Left = 567
    Top = 8
  end
  object dsPaciente: TDataSource
    DataSet = DataModule1.cdsPaciente
    Left = 599
    Top = 8
  end
  object dsEspecialidade: TDataSource
    DataSet = DataModule1.cdsEspecialidade
    Left = 688
    Top = 8
  end
  object dsConsulta: TDataSource
    DataSet = DataModule1.cdsConsultas
    Left = 728
    Top = 8
  end
  object dsMedicos: TDataSource
    DataSet = DataModule1.cdsMedicos
    Left = 760
    Top = 8
  end
  object dsRelatorioConsulta: TDataSource
    AutoEdit = False
    DataSet = DataModule1.cdsRelatorioConsulta
    Left = 792
    Top = 8
  end
end
