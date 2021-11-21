object frmMenu: TfrmMenu
  Left = 237
  Top = 200
  Width = 924
  Height = 480
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 426
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = clBtnHighlight
    TabOrder = 0
    object Label1: TLabel
      Left = 152
      Top = 96
      Width = 564
      Height = 32
      Caption = 'Desafio Delphi - Logus Retail - Consult'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 361
      Top = 148
      Width = 149
      Height = 32
      Caption = 'Ivan Sgarbi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object MainMenu1: TMainMenu
    Left = 872
    Top = 8
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Mdicos1: TMenuItem
        Caption = 'M'#233'dicos'
        OnClick = Mdicos1Click
      end
      object Consultrios1: TMenuItem
        Caption = 'Consult'#243'rios'
        OnClick = Consultrios1Click
      end
      object Paciente1: TMenuItem
        Caption = 'Pacientes'
        OnClick = Paciente1Click
      end
    end
    object Co1: TMenuItem
      Caption = 'Consultas'
      object Cadastrar1: TMenuItem
        Caption = 'Cadastrar'
        OnClick = Cadastrar1Click
      end
      object Pesquisar1: TMenuItem
        Caption = 'Relat'#243'rio'
        OnClick = Pesquisar1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
