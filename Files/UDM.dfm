object DM: TDM
  OldCreateOrder = False
  Height = 273
  Width = 340
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3051'
      'DriverID=FB')
    LoginPrompt = False
    BeforeConnect = FDConnection1BeforeConnect
    Left = 96
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 96
    Top = 104
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 96
    Top = 176
  end
  object Qry: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    Left = 192
    Top = 32
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 192
    Top = 104
  end
end
