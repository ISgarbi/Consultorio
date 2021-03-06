object frmRelatorioConsulta: TfrmRelatorioConsulta
  Left = 249
  Top = 99
  Width = 925
  Height = 590
  Caption = 'Relat'#243'rio de Consultas'
  Color = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 8
    Top = 8
    Width = 267
    Height = 29
    Caption = 'Relat'#243'rio de Consultas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 48
    Width = 916
    Height = 217
    Caption = 'Filtros'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 79
      Width = 38
      Height = 14
      Caption = 'M'#201'DICO'
      FocusControl = edtMedico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 119
      Width = 72
      Height = 14
      Caption = 'CONSULT'#211'RIO'
      FocusControl = edtConsultorio
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 159
      Width = 47
      Height = 14
      Caption = 'PACIENTE'
      FocusControl = edtPaciente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 10
      Top = 18
      Width = 27
      Height = 14
      Caption = 'DATA'
      FocusControl = edtMedico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 253
      Top = 17
      Width = 30
      Height = 14
      Caption = 'HORA'
      FocusControl = edtMedico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 698
      Top = 15
      Width = 78
      Height = 14
      Caption = 'ESPECIALIDADE'
      FocusControl = edtMedico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edtMedico: TDBEdit
      Left = 8
      Top = 95
      Width = 524
      Height = 22
      Color = clScrollBar
      DataField = 'NOME'
      DataSource = dsMedicos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnLocalizarMedico: TBitBtn
      Left = 544
      Top = 92
      Width = 75
      Height = 25
      Caption = 'Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnLocalizarMedicoClick
    end
    object brnLimparMedico: TBitBtn
      Left = 630
      Top = 92
      Width = 75
      Height = 25
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = brnLimparMedicoClick
    end
    object brnLimparConsultorio: TBitBtn
      Left = 630
      Top = 132
      Width = 75
      Height = 25
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = brnLimparConsultorioClick
    end
    object btnLocalizarConsultorio: TBitBtn
      Left = 544
      Top = 133
      Width = 75
      Height = 25
      Caption = 'Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnLocalizarConsultorioClick
    end
    object btnLocalizarPaciente: TBitBtn
      Left = 544
      Top = 173
      Width = 75
      Height = 25
      Caption = 'Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnLocalizarPacienteClick
    end
    object brnLimparPaciente: TBitBtn
      Left = 630
      Top = 172
      Width = 75
      Height = 25
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = brnLimparPacienteClick
    end
    object edtPaciente: TDBEdit
      Left = 8
      Top = 176
      Width = 524
      Height = 22
      Color = clScrollBar
      DataField = 'NOME'
      DataSource = dsPaciente
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edtConsultorio: TDBEdit
      Left = 8
      Top = 136
      Width = 524
      Height = 22
      Color = clScrollBar
      DataField = 'NOME'
      DataSource = dsConsultorio
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Panel3: TPanel
      Left = 698
      Top = 34
      Width = 212
      Height = 37
      TabOrder = 9
      object cbEspecialidade: TComboBox
        Left = 32
        Top = 7
        Width = 173
        Height = 22
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 0
      end
      object ckEspecialidade: TCheckBox
        Left = 8
        Top = 9
        Width = 17
        Height = 17
        TabOrder = 1
        OnClick = ckEspecialidadeClick
      end
    end
    object Panel1: TPanel
      Left = 8
      Top = 35
      Width = 225
      Height = 38
      TabOrder = 10
      object dtpData: TDateTimePicker
        Left = 31
        Top = 10
        Width = 186
        Height = 22
        Date = 44518.797165694440000000
        Format = 'dd/MM/yyyy'
        Time = 44518.797165694440000000
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object ckData: TCheckBox
        Left = 8
        Top = 11
        Width = 17
        Height = 17
        TabOrder = 1
        OnClick = ckDataClick
      end
    end
    object Panel2: TPanel
      Left = 254
      Top = 34
      Width = 425
      Height = 38
      TabOrder = 11
      object ckHora: TCheckBox
        Left = 8
        Top = 13
        Width = 17
        Height = 17
        TabOrder = 0
        OnClick = ckHoraClick
      end
      object dtpHoraInicio: TDateTimePicker
        Left = 28
        Top = 10
        Width = 186
        Height = 22
        Date = 44518.801697673610000000
        Format = 'HH:mm'
        Time = 44518.801697673610000000
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Kind = dtkTime
        ParentFont = False
        TabOrder = 1
      end
      object dtpHoraFim: TDateTimePicker
        Left = 228
        Top = 10
        Width = 186
        Height = 22
        Date = 44518.801697673610000000
        Format = 'HH:mm'
        Time = 44518.801697673610000000
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Kind = dtkTime
        ParentFont = False
        TabOrder = 2
      end
    end
    object btnPesquisar: TBitBtn
      Left = 763
      Top = 120
      Width = 105
      Height = 34
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = btnPesquisarClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 275
    Width = 917
    Height = 283
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clWhite
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 5
      Top = 16
      Width = 905
      Height = 257
      DataSource = dsRelatorioConsulta
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA'
          Title.Caption = 'Hora'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPACIENTE'
          Title.Caption = 'Paciente'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEDICO'
          Title.Caption = 'M'#233'dico'
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMEROCONSULTORIO'
          Title.Caption = 'N'#250'mero Consult'#243'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECONSULTORIO'
          Title.Caption = 'Consult'#243'rio'
          Width = 141
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESPECIALIDADECONSULTA'
          Title.Caption = 'Especialidade'
          Width = 89
          Visible = True
        end>
    end
  end
  object dsMedicos: TDataSource
    DataSet = DataModule1.cdsMedicos
    Left = 840
    Top = 8
  end
  object dsRelatorioConsulta: TDataSource
    AutoEdit = False
    DataSet = DataModule1.cdsRelatorioConsulta
    Left = 880
    Top = 8
  end
  object dsEspecialidade: TDataSource
    DataSet = DataModule1.cdsEspecialidade
    Left = 800
    Top = 8
  end
  object dsPaciente: TDataSource
    DataSet = DataModule1.cdsPaciente
    Left = 760
    Top = 8
  end
  object dsConsultorio: TDataSource
    DataSet = DataModule1.cdsConsultorio
    Left = 728
    Top = 8
  end
end
