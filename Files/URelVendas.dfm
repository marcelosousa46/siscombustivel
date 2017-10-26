object frmRelVendas: TfrmRelVendas
  Left = 0
  Top = 0
  Caption = 'frmRelVendas'
  ClientHeight = 562
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -24
    Top = 64
    Width = 794
    Height = 1123
    DataSource = dsRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Vendas'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 53
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 20
        Top = 11
        Width = 121
        Height = 16
        Caption = 'Relat'#243'rio de Vendas'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 91
      Width = 718
      Height = 29
      BandType = btHeader
      object RLLabel3: TRLLabel
        Left = 113
        Top = 10
        Width = 46
        Height = 16
        Caption = 'Tanque'
      end
      object RLLabel4: TRLLabel
        Left = 228
        Top = 10
        Width = 45
        Height = 16
        Caption = 'Bomba'
      end
      object RLLabel5: TRLLabel
        Left = 647
        Top = 10
        Width = 34
        Height = 16
        Caption = 'Valor'
      end
      object RLLabel6: TRLLabel
        Left = 17
        Top = 10
        Width = 31
        Height = 16
        Caption = 'Data'
      end
    end
    object RLLabel1: TRLLabel
      Left = 744
      Top = 16
      Width = 4
      Height = 16
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 120
      Width = 718
      Height = 36
      DataFields = 'DATAMOV'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 23
        AlignToBottom = True
        object RLDBText1: TRLDBText
          Left = 113
          Top = 4
          Width = 57
          Height = 16
          DataField = 'TANQUE'
          DataSource = dsRel
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 228
          Top = 4
          Width = 52
          Height = 16
          DataField = 'BOMBA'
          DataSource = dsRel
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 610
          Top = 4
          Width = 71
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR'
          DataSource = dsRel
          DisplayMask = '##,##0.00'
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 17
          Top = 5
          Width = 68
          Height = 16
          DataField = 'DATAMOV'
          DataSource = dsRel
          Text = ''
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 156
      Width = 718
      Height = 20
      BandType = btFooter
      object RLDBResult1: TRLDBResult
        Left = 667
        Top = 0
        Width = 11
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR'
        DataSource = dsRel
        Info = riSum
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 524
        Top = -1
        Width = 42
        Height = 16
        Caption = 'Soma:'
      end
    end
  end
  object dsRel: TDataSource
    DataSet = qryRel
    Left = 328
    Top = 248
  end
  object qryRel: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select vendas.*,PRODUTO.PRODUTO, BOMBA.BOMBA, TANQUE.TANQUE from' +
        ' vendas'
      'inner join PRODUTO on (vendas.ID_PRODUTO = PRODUTO.ID)'
      'inner join BOMBA on (PRODUTO.ID_BOMBA = BOMBA.ID)'
      'inner join TANQUE on (BOMBA.ID_TANQUE = TANQUE.ID)'
      'order by VENDAS.DATAMOV')
    Left = 328
    Top = 296
    object qryRelID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRelID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryRelVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qryRelIMPOSTO: TBCDField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Precision = 18
      Size = 2
    end
    object qryRelDATAMOV: TSQLTimeStampField
      FieldName = 'DATAMOV'
      Origin = 'DATAMOV'
    end
    object qryRelPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryRelBOMBA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryRelTANQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
end
