unit UControllerVendas;

interface

uses
  UDAO;

type

  TControllerVendas = class
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
    { public declarations }

  published
    { published declarations }
  end;
var
  oDao : TDAO;

implementation

uses
  System.SysUtils, Vcl.Dialogs, UModelTanque;

{ TControllerBomba }

function TControllerVendas.Buscar(ATabela: TObject): Integer;
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

constructor TControllerVendas.create;
begin
  oDao := TDAO.Create;
end;

function TControllerVendas.Excluir(ATabela: TObject): Integer;
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

function TControllerVendas.Inserir(ATabela: TObject): Integer;
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

function TControllerVendas.Salvar(ATabela: TObject): Integer;
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
