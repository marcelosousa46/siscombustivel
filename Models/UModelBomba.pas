unit UModelBomba;

interface

uses Rtti, UAtributos;

type
  [TNomeTabela('Bomba')]
  TModelBomba = class
  private
    FBomba: string;
    FId: Integer;
    FId_Tanque: Integer;
    { private declarations }
  public
    [TCampoPk]
    property Id: Integer read FId write FId;
    property Id_Tanque: Integer read FId_Tanque write FId_Tanque;
    property Bomba: string read FBomba write FBomba;
    { public declarations }
  end;

implementation

end.
