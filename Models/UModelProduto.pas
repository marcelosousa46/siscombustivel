unit UModelProduto;

interface

type
  TModelProduto = class
  private
    FProduto: string;
    FValor: Currency;
    FId_Bomba: Integer;
    FId: Integer;
    FImposto: Double;
    { private declarations }
  public
    property Id: Integer read FId write FId;
    property Id_Bomba: Integer read FId_Bomba write FId_Bomba;
    property Produto: string read FProduto write FProduto;
    property Valor: Currency read FValor write FValor;
    property Imposto: Double read FImposto write FImposto;
    { public declarations }
  end;

implementation

end.
