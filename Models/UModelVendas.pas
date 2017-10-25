unit UModelVendas;

interface

type
  TModelVendas = class
  private
    FDataMov: TDateTime;
    FId_Produto: Integer;
    FValor: Currency;
    FId: Integer;
    { private declarations }
  public
    property ID: Integer read FId write FId;
    property Id_Produto: Integer read FId_Produto write FId_Produto;
    property Valor: Currency read FValor write FValor;
    property DataMov: TDateTime read FDataMov write FDataMov;
    { public declarations }

  end;

implementation

end.
