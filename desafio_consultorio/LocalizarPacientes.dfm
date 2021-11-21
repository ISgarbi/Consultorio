object frmLocalizarPacientes: TfrmLocalizarPacientes
  Left = 230
  Top = 184
  Width = 484
  Height = 263
  Caption = 'Localizar Pacientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -8
    Top = 0
    Width = 481
    Height = 210
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Procurar por:'
    end
    object edtTexto: TEdit
      Left = 82
      Top = 5
      Width = 287
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edtTextoKeyPress
    end
    object btnLocalizar: TBitBtn
      Left = 372
      Top = 3
      Width = 99
      Height = 25
      Caption = 'Localizar'
      TabOrder = 1
      OnClick = btnLocalizarClick
    end
    object btnOk: TBitBtn
      Left = 319
      Top = 176
      Width = 75
      Height = 25
      Caption = 'OK'
      Enabled = False
      TabOrder = 2
      OnClick = btnOkClick
    end
    object btnCancelar: TBitBtn
      Left = 399
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object DBGrid1: TDBGrid
      Left = 13
      Top = 38
      Width = 460
      Height = 129
      DataSource = frmPaciente.dsPaciente
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PACIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMEROCONVENIO'
          Title.Caption = 'N'#250'mero do conv'#234'nio'
          Width = 112
          Visible = True
        end>
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 210
    Width = 476
    Height = 22
    Panels = <
      item
        Width = 50
      end>
    SimplePanel = True
  end
end
