object frmLocalizarMedicos: TfrmLocalizarMedicos
  Left = 250
  Top = 172
  Width = 485
  Height = 266
  Caption = 'Localizar M'#233'dicos'
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
    Width = 485
    Height = 213
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
      DataSource = frmMedicos.dsMedicos
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_MEDICO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 214
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRM'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDADE'
          Title.Caption = 'Idade'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESPECIALIDADE'
          Title.Caption = 'Especialidade'
          Width = 94
          Visible = True
        end>
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 213
    Width = 477
    Height = 22
    Panels = <
      item
        Width = 50
      end>
    SimplePanel = True
  end
end
