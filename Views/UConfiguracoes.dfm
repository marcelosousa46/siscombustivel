object frmConfiguracoes: TfrmConfiguracoes
  Left = 0
  Top = 0
  Caption = 'Configura'#231#245'es do Sistemas'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 601
    Height = 177
    Caption = ' Banco de Dados '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 30
      Width = 76
      Height = 13
      Caption = 'Banco de dados'
    end
    object SpeedButton1: TSpeedButton
      Left = 294
      Top = 48
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 16
      Top = 77
      Width = 40
      Height = 13
      Caption = 'Servidor'
    end
    object Label3: TLabel
      Left = 294
      Top = 77
      Width = 26
      Height = 13
      Caption = 'Porta'
    end
    object Label4: TLabel
      Left = 16
      Top = 119
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object Label5: TLabel
      Left = 294
      Top = 119
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object edtBancoDados: TEdit
      Left = 16
      Top = 48
      Width = 273
      Height = 21
      TabOrder = 0
    end
    object edtServidor: TEdit
      Left = 16
      Top = 93
      Width = 273
      Height = 21
      TabOrder = 1
    end
    object edtPorta: TEdit
      Left = 294
      Top = 93
      Width = 155
      Height = 21
      TabOrder = 2
    end
    object edtUsuario: TEdit
      Left = 16
      Top = 134
      Width = 273
      Height = 21
      TabOrder = 3
    end
    object edtSenha: TEdit
      Left = 294
      Top = 134
      Width = 155
      Height = 21
      TabOrder = 4
    end
    object btnGravar: TBitBtn
      Left = 472
      Top = 132
      Width = 126
      Height = 25
      Caption = 'Salvar Configura'#231#245'es'
      TabOrder = 5
      OnClick = btnGravarClick
    end
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Left = 440
    Top = 48
  end
end
