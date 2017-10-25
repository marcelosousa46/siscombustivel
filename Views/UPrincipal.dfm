object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Controle de Abastecimento'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnConexao: TBitBtn
    Left = 480
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Conex'#227'o'
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 370
    Top = 112
    Width = 185
    Height = 89
    TabOrder = 1
  end
  object Button1: TButton
    Left = 370
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 504
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Left = 576
    Top = 64
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
    end
    object Configurao1: TMenuItem
      Caption = 'Confi&gura'#231#227'o'
      OnClick = Configurao1Click
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
end
