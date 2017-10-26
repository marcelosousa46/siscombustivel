unit UModelVendas;

interface

uses Rtti, UAtributos;

type
  [TNomeTabela('Vendas')]
  TModelVendas = class
  private
    FDataMov: TDateTime;
    FId_Produto: Integer;
    FValor: Currency;
    FId: Integer;
    FImposto: Currency;
    { private declarations }
  public
    [TCampoPk]
    property ID: Integer read FId write FId;
    property Id_Produto: Integer read FId_Produto write FId_Produto;
    property Valor: Currency read FValor write FValor;
    property Imposto: Currency read FImposto write FImposto;
    property DataMov: TDateTime read FDataMov write FDataMov;
    { public declarations }

  end;

implementation

end.
