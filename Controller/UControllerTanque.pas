unit UControllerTanque;

interface

uses
  UDAO;

type

  TControllerTanque = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    constructor create;

    function Inserir(ATabela: TObject): Integer;
    function Salvar(ATabela: TObject): Integer;
    function Excluir(ATabela: TObject): Integer;
    function Buscar(ATabela: TObject): Integer;
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

{ TControllerTanque }

function TControllerTanque.Buscar(ATabela: TObject): Integer;
var
  ATab: TmodelTanque;
  Registros: Integer;
begin
  ATab := TmodelTanque.Create;
  try
    ATab.Id := 2;
    Registros := oDao.Buscar(ATab);
    if Registros>0 then
    begin
      ShowMessage(Format('Registro encontrado: %d', [Registros]));
    end
    else
    ShowMessage('Registro não encontrado!');
  finally
    ATab.Free;
  end;
end;

constructor TControllerTanque.create;
begin
  oDao := TDAO.Create;
end;

function TControllerTanque.Excluir(ATabela: TObject): Integer;
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

function TControllerTanque.Inserir(ATabela: TObject): Integer;
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

function TControllerTanque.MaxCodigo: integer;
var
  sql: TFDQuery;
begin
  sql := TFDQuery.Create(Dm);
  sql.Connection := dm.FDConnection1;
  sql.SQL.Add('select max(ID) from TANQUE');
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

function TControllerTanque.Salvar(ATabela: TObject): Integer;
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
