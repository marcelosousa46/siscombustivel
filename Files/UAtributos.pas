unit UAtributos;

interface

uses
  Rtti;

type
  TResultArray = array of string;

  TCamposAnoni = record
    NomeTabela: string;
    Sep: string;
    PKs: TResultArray;
    TipoRtti: TRttiType;
  end;

  TFuncReflexao = reference to function(ACampos: TCamposAnoni): Integer;

  TNomeTabela = class(TCustomAttribute)
  private
    FNomeTabela: string;
  public
    constructor Create(ANomeTabela: string);
    property NomeTabela: string read FNomeTabela write FNomeTabela;
  end;

  TCampos = class(TCustomAttribute)
  public
    function IsPk: Boolean; virtual;
  end;

  TCampoPk = class(TCampos)
  public
    function IsPk: Boolean; override;
  end;

  //Reflection para os comandos Sql
  function ReflexaoSQL(ATabela: TObject; AnoniComando: TFuncReflexao): Integer;

  function PegaNomeTab(ATabela : TObject): string;
  function PegaPks(ATabela : TObject): TResultArray;


implementation

function ReflexaoSQL(ATabela: TObject; AnoniComando: TFuncReflexao): Integer;
var
  ACampos: TCamposAnoni;
  Contexto  : TRttiContext;
begin
  ACampos.NomeTabela := PegaNomeTab(ATabela);

  ACampos.PKs   := PegaPks(ATabela);

  Contexto  := TRttiContext.Create;
  try
    ACampos.TipoRtti := Contexto.GetType( ATabela.ClassType );

    //executamos os comandos Sql através deste método anônimo
    ACampos.Sep := '';
    Result := AnoniComando(ACampos);

  finally
    Contexto.free;
  end;
end;

function PegaNomeTab(ATabela : TObject): string;
var
  Contexto  : TRttiContext;
  TipoRtti : TRttiType;
  AtribRtti : TCustomAttribute;
begin
  Contexto := TRttiContext.Create;
  TipoRtti := Contexto.GetType(ATabela.ClassType);
  try
    for AtribRtti in TipoRtti.GetAttributes do
      if AtribRtti Is TNomeTabela then
        begin
          Result := (AtribRtti as TNomeTabela).NomeTabela;
          Break;
        end;
  finally
    Contexto.Free;
  end;
end;

function PegaPks(ATabela : TObject): TResultArray;
var
  Contexto  : TRttiContext;
  TipoRtti  : TRttiType;
  PropRtti  : TRttiProperty;
  AtribRtti : TCustomAttribute;
  i: Integer;
begin
  Contexto := TRttiContext.Create;
  try
    TipoRtti := Contexto.GetType(ATabela.ClassType);
    i:=0;
    for PropRtti in TipoRtti.GetProperties do
      for AtribRtti in PropRtti.GetAttributes do
        if AtribRtti Is TCampos then
          if (AtribRtti as TCampos).isPk then
          begin
            SetLength(Result, i+1);
            Result[i] := PropRtti.Name;
            inc(i);
          end;
  finally
    Contexto.Free;
  end;
end;

{ TCampos }

function TCampos.IsPk: Boolean;
begin
  Result := False;
end;

{ TCampoPk }

function TCampoPk.IsPk: Boolean;
begin
  Result := True;
end;

{ TNomeTabela }

constructor TNomeTabela.Create(ANomeTabela: string);
begin
  FNomeTabela := ANomeTabela;
end;

end.
