unit UControllerProduto;

interface

uses
  UDAO, UModelProduto;

type

  TControllerProduto = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    constructor create;

    function Inserir(ATabela: TObject): Integer;
    function Salvar(ATabela: TObject): Integer;
    function Excluir(ATabela: TObject): Integer;
    function Buscar(ATabela: TModelProduto): TModelProduto;
    function MaxCodigo:integer;
    { public declarations }

  published
    { published declarations }
  end;
var
  oDao : TDAO;

implementation

uses
  System.SysUtils, Vcl.Dialogs, UModelTanque, FireDAC.Comp.Client, UDM;

{ TControllerBomba }

function TControllerProduto.Buscar(ATabela: TModelProduto): TModelProduto;
var
  Registros: Integer;
begin
  Registros := oDao.Buscar(ATabela);
  if not Registros>0 then
  begin
    ShowMessage('Registro não encontrado!');
  end;
  Result := ATabela;
end;

constructor TControllerProduto.create;
begin
  oDao := TDAO.Create;
end;

function TControllerProduto.Excluir(ATabela: TObject): Integer;
var
  registro: Integer;
begin
  oDao.StartTransaction;
  try
    registro := oDao.Excluir(ATabela);
    oDao.Commit;
    ShowMessage(Format('Registro(s) excluido(s): %d', [registro]));
  except
   on E: Exception do
      begin
        oDao.RollBack;
        ShowMessage('Ocorreu um problema ao executar operação: ' + e.Message);
      end;
  end;
end;

function TControllerProduto.Inserir(ATabela: TObject): Integer;
var
  registro: Integer;
begin
  oDao.StartTransaction;
  try
    registro := oDao.Inserir(ATabela);
    oDao.Commit;
    ShowMessage(Format('Registro(s) inserido(s): %d', [registro]));
  except
   on E: Exception do
      begin
        oDao.RollBack;
        ShowMessage('Ocorreu um problema ao executar operação: ' + e.Message);
      end;
  end;

end;

function TControllerProduto.MaxCodigo: integer;
var
  sql: TFDQuery;
begin
  sql := TFDQuery.Create(Dm);
  sql.Connection := dm.FDConnection1;
  sql.SQL.Add('select max(ID) from PRODUTO');
  try
    sql.Open;
    Result := sql.Fields[0].AsInteger + 1;
  except
   on E: Exception do
      begin
        oDao.RollBack;
        ShowMessage('Ocorreu um problema ao executar operação: ' + e.Message);
      end;

  end;
end;

function TControllerProduto.Salvar(ATabela: TObject): Integer;
var
  registro: Integer;
begin
  oDao.StartTransaction;
  try
    registro := oDao.Salvar(ATabela);
    oDao.Commit;
    ShowMessage(Format('Registro(s) salvo(s): %d', [registro]));
  except
   on E: Exception do
      begin
        oDao.RollBack;
        ShowMessage('Ocorreu um problema ao executar operação: ' + e.Message);
      end;
  end;

end;

end.
