object frmPadrao: TfrmPadrao
  Left = 0
  Top = 0
  Caption = 'Cadastro de Tanques'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 561
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 778
      Height = 31
      ButtonHeight = 30
      ButtonWidth = 60
      Caption = 'ToolBar1'
      Images = ImageList1
      TabOrder = 0
      object btInserir: TToolButton
        Left = 0
        Top = 0
        Hint = 'Inserir novo registro'
        Caption = '&Novo'
        ImageIndex = 0
      end
      object ToolButton1: TToolButton
        Left = 60
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object btSalvar: TToolButton
        Left = 68
        Top = 0
        Hint = 'Salvar altera'#231#245'es no registro'
        Caption = 'btSalvar'
        ImageIndex = 1
      end
      object ToolButton3: TToolButton
        Left = 128
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object btExcluir: TToolButton
        Left = 136
        Top = 0
        Hint = 'Excluir registro'
        Caption = 'btExcluir'
        ImageIndex = 2
      end
      object ToolButton5: TToolButton
        Left = 196
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object btFechar: TToolButton
        Left = 204
        Top = 0
        Hint = 'Sair do cadastro '
        Caption = 'btFechar'
        ImageIndex = 3
        OnClick = btFecharClick
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 32
      Width = 778
      Height = 233
      Align = alTop
      Color = clWindow
      ParentBackground = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 1
      Top = 265
      Width = 778
      Height = 291
      Align = alClient
      Color = clWindow
      ParentBackground = False
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 776
        Height = 289
        Align = alClient
        DataSource = dsTabela
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object ImageList1: TImageList
    Left = 672
    Top = 80
    Bitmap = {
      494C010104000800240010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A74B4C00A36E6F00CED0
      CF00D0CDCC00C5C5C500A76E6E00A44E4E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A6666006933340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000035C0700035C070000000000000000000000
      000000000000000000000000000000000000BD766F00C8616000A9727200AB58
      5800E2D4D200FAF7F600B8737200B7515100B35A5B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6CE
      9700FAE2B100F8D7A300F4CA9200EFB07300EFAF6F00F3C08600F4C58B00EFAF
      7200EEAC6D000000000000000000000000000000000000000000000000009A66
      66009A666600B0666700C6666700B36667006933340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000025C0400058E0D00058F0D00035C0700000000000000
      000000000000000000000000000000000000BD766F00C65F5F00B17A7A009224
      2400BBA6A500FFFFFF00BC797700B6505000B35A5B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFC
      D400FEF7CE00F8D7A300F3C99100F4B17500F0AD6E00FFCC9F00FFD9AD00FBE5
      B600F3C1870000000000000000000000000000000000000000009A666600AF68
      6900C0696A00CE686900CD676800B3666700693334009A6666009A6666009A66
      66009A6666009A6666009A666600000000000000000000000000000000000000
      00000000000000000000025C0400058E0D00058F0D00035C0700000000000000
      000000000000000000000000000000000000BD767000CB616200C7656600C876
      7600C16C6C00D0797900C763630006740C000C8316000C9718000A9015000677
      0C0000000000000000000000000000000000000000000000000000000000FFFF
      D900FEF7CE00F7D7A400FFCE9C00319928003C9C2D000079000000780000D3E5
      B400FFFFE000EEAC6D00000000000000000000000000000000009A666600D872
      7300D7717200D56F7000D46E6F00B6696A006933340033CB670033CB670033CB
      670033CB6700F9C5C6009A666600000000000000000000000000000000000000
      00000000000000000000025C0500058E0D00058F0D00035C0700000000000000
      000000000000000000000000000000000000BC746E00BC686600CE8D8C00D59C
      9B00D69A9900D1929300D59F9D00D0717100B0555600098412000E9E1900098A
      130005700A000000000000000000000000000000000000000000EEAB6C00F4CA
      9200FEF2C600F7DAA600FFCB970001800200007B0000048103000D890B0033A0
      2E00FBFCE000EEAC6D00000000000000000000000000000000009A666600DB75
      7600DA747500D8727300D7717200B86B6B006933340033CB670033CB670033CB
      670033CB6700F9C5C6009A666600000000000000000000000000000000000000
      00000000000000000000035D05000A96160007921100035C0700000000000000
      000000000000000000000000000000000000B86C6500F6F1EF00F7F5F500F2ED
      EC00F2EDEC00F1ECEB00F7F7F600C86E6E00AE515200B7818300B781830011AA
      20000C9D1900B7818300B7818300B78183000000000000000000EEAD6F00EEAD
      6F00EEAA6B00EFAF6F00F8BD860002810300007800006DBD6A00FBFEFA007DC5
      79004A9A2F00EEAA6B00EEAC6D000000000000000000000000009A666600E27C
      7D00E17B7C00DF797A00DE787900BB6E6F006933340033CB670033CB670033CB
      670033CB6700F9C5C6009A666600000000000000000000000000035C0700035C
      0700035C0700035C0700035D05000E9D1D000B981700035D0500035C0700035C
      0700035C0700035C07000000000000000000B86C6500F3ECEA00E4E3E300D9D6
      D600D9D6D600D7D4D300E1E4E300C96F6F00AE515200F6DFBC00F5DBB40019A9
      2B0012AA2200F0CF9800F0CF9800B78183000000000000000000F2B57A00F2B6
      7E00F2B57B00F0B17600F4AD720045A7410045A9420067B76000E7F3E200FFFF
      FF00B1CC9500EEAA6B00EEAC6D000000000000000000000000009A666600E57F
      8000E47E7F00E27C7D00E17B7C00BD7070006933340033CB670033CB670033CB
      670033CB6700F9C5C6009A6666000000000000000000035C0700FFFFFF0033CC
      5A002DC7520025BD440020B63B0018A72C0014A326000D9C1B000A971600058F
      0D00058F0D00058F0D00035C070000000000B86C6500F3ECEC00E7E5E400DCDA
      D900DCDAD900DAD7D600E5E6E500CA706F00AE51520005720A0005720A0030BB
      4D002EC24B0006770C0005720A00B781830000000000F2B27800FBCBA100FBC9
      9E00FAC99C00F8C59800FFC6980062B65B00FFFFFF00A3D59E000D880C00007B
      0000429D3000F0B07300F0B073000000000000000000000000009A666600EC86
      8700EB858600F2B9BA00FFFFFF00C073740069333400C7F0BC0079DD900060D6
      810060D68100F9C5C6009A6666000000000000000000035C0700FFFFFF0037CF
      620033CA5A002AC04B0025BA43001CAF350018AA2F0011A022000F9C1D000892
      1200068E0E00058E0D00035C070000000000B86C6500F5EEEE00F8F5F500F2ED
      EC00F2EDEC00F2EBEA00F8F7F500C9706F00AE52520021AE350034AF510044CE
      690039C75A0021AE350021AE3500B781830000000000F4C08B00FED8B200FCD3
      AB00FCD0A900FCD0A900FFCEA60021921A0066BA6300FFFFFF0083C67E00007B
      0000379C2C00F4B57D00F4B57D000000000000000000000000009A666600EF89
      8A00EE888900F5BBBC00FFFFFF00C275750069333400FFFFDD00FFFFDD00FFFF
      DD00E2F8CC00F9C5C6009A666600000000000000000000000000035C0700035C
      0700035C0700035C0700035D050028BD480024BA4100035D0500035C0700035C
      0700035C0700035C070000000000000000000000000000000000000000000000
      0000000000000000000000000000BA8E8500FFFFFD00FAEFE300006B02005EE8
      91005AE58B0008750E00F0D4A900B781830000000000FEE7BF00FEEDC500FEE9
      C000FEE7BF00FEE5BD00FEE3BB00FBE9CB0039A0310000760000007B00000A87
      090026972100FCC99A00FCC99A000000000000000000000000009A666600F690
      9100F58F9000F38D8E00F28C8D00C578780069333400FFFFDD00FFFFDD00FFFF
      DD00FFFFDD00F9C5C6009A666600000000000000000000000000000000000000
      00000000000000000000035C07002DC653002AC24D00035C0700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CB9A8200FFFFFF00FBF3EC00FAEFE2003FBF
      62004FD47900F4DBBA00F2D8B200B781830000000000FFF7CF00FFF7CF00FFF2
      CA00FFF2C900FFEFC700FFEEC600FFEDCA00E9E9C200138B110009860800CADE
      B1007EBF6C00FFD7AB00FFD7AB000000000000000000000000009A666600F993
      9400F8929300F6909100F58F9000C77A7A0069333400FFFFDD00FFFFDD00FFFF
      DD00FFFFDD00F9C5C6009A666600000000000000000000000000000000000000
      00000000000000000000035C07003AD3670036D06000035C0700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCA88700FFFFFF00FFFEFD00FEF9F400FAEF
      E200F9EBD900F6E2C800F7E1C200B781830000000000FFFFD900FFFBD300FFFB
      D300FFFBD300FFFBD300FFFBD300FFFCD400FFFED500FFFFDC00FFFFD900FFFC
      D400FFF8D000FEF3C900FEF3C9000000000000000000000000009A666600FF99
      9A00FE989900FD979800FC969700CA7D7D0069333400FFFFDD00FFFFDD00FFFF
      DD00FFFFDD00F9C5C6009A666600000000000000000000000000000000000000
      00000000000000000000035C07003FD96F003DD86B00035C0700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCA88700FFFFFF00FFFFFF00FFFEFD00FBF3
      EB00FAEEE200FCEFD900E6D9C400B781830000000000FFFFD900FFFBD300FFFB
      D300FFFBD300FFFCD400FFFED500FFFFD900FCF2C600F4C48100F4C48100FBE6
      B600FFF6CC00FFFED500FFFED5000000000000000000000000009A666600FF99
      9A00FF999A00FF999A00FE989900CC7F7F0069333400FFFFDD00FFFFDD00FFFF
      DD00FFFFDD00F9C5C6009A666600000000000000000000000000000000000000
      00000000000000000000035C0700FFFFFF00FFFFFF00035C0700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3B18E00FFFFFF00FFFFFF00FFFFFF00FFFE
      FC00FFFEF900B8857A00E8B27000C587680000000000F0BA7F00F6CE9700F4C6
      8F00F3C28A00EFB27400EEA96500EDA05800EDA15500EDA15400EDA35900F3B5
      7900F8BD8600FBC48C00F7BF86000000000000000000000000009A666600C079
      7A00DF898A00FF999A00FF999A00CD80800069333400FFFFDD00FFFFDD00FFFF
      DD00FFFFDD00F9C5C6009A666600000000000000000000000000000000000000
      0000000000000000000000000000035C0700035C070000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDBD9200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B8857A00FAC57700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDA35500EEA76200F8BC
      8300FAC08900FABF8700FABF8700000000000000000000000000000000009A66
      66009A666600C67C7D00F2939400CD808000693334009A6666009A6666009A66
      66009A6666009A6666009A666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDBD9200DCA88700DCA88700DCA88700DCA8
      8700DCA88700B8857A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAC08800FAC08800FAC08800000000000000000000000000000000000000
      00000000000000000000000000009A6666006933340000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF80FFFFFFFE7FFE7F007FE007E07F
      FC3F007FE007C001FC3F000FE003C001FC3F0007C003C001FC3F0000C001C001
      C0030000C001C001800100008001C001800100008001C001C003FE008001C001
      FC3FFE008001C001FC3FFE008001C001FC3FFE008001C001FC3FFE008001C001
      FE7FFE01FF81E001FFFFFE03FFF1FE7F00000000000000000000000000000000
      000000000000}
  end
  object dsTabela: TDataSource
    DataSet = qryTabela
    Left = 609
    Top = 144
  end
  object qryTabela: TFDQuery
    Connection = DM.FDConnection1
    Left = 609
    Top = 88
  end
end