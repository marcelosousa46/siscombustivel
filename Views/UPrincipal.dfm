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
  object MainMenu1: TMainMenu
    Left = 576
    Top = 64
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object anques1: TMenuItem
        Caption = '&Tanques'
        OnClick = anques1Click
      end
      object Bombas1: TMenuItem
        Caption = '&Bombas'
        OnClick = Bombas1Click
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        OnClick = Produtos1Click
      end
    end
    object Vendas1: TMenuItem
      Caption = '&Vendas'
      OnClick = Vendas1Click
    end
    object Configurao1: TMenuItem
      Caption = 'Confi&gura'#231#245'es'
      OnClick = Configurao1Click
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
end
