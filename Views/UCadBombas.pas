unit UCadBombas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.StdCtrls,
  UControllerBomba, UModelBomba;

type
  TfrmCadBombas = class(TfrmPadrao)
    Label1: TLabel;
    Label2: TLabel;
    edID: TEdit;
    edBomba: TEdit;
    edIdTanque: TEdit;
    Label3: TLabel;
    qryTabelaID: TIntegerField;
    qryTabelaID_TANQUE: TIntegerField;
    qryTabelaBOMBA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btInserirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBombas: TfrmCadBombas;
  dao : TControllerBomba;
  bomba : TModelBomba;

implementation

{$R *.dfm}

procedure TfrmCadBombas.btExcluirClick(Sender: TObject);
begin
  inherited;
  bomba.Id     := StrToInt(edID.Text);
  dao.Excluir(bomba);
  qryTabela.Active := false;
  qryTabela.Active := true;
  LimparCampos(frmCadBombas);

end;

procedure TfrmCadBombas.btInserirClick(Sender: TObject);
begin
  inherited;
  if trim(edBomba.Text) = '' then
  begin
    ShowMessage('Campo descrição vazio');
  end
  else
  begin
    bomba.Id        := dao.MaxCodigo;
    bomba.Id_Tanque := StrToInt(edIdTanque.Text);
    bomba.Bomba     := edBomba.Text;
    dao.Inserir(bomba);
    qryTabela.Active := false;
    qryTabela.Active := true;
    LimparCampos(frmCadBombas);
  end;
end;

procedure TfrmCadBombas.btSalvarClick(Sender: TObject);
begin
  inherited;
  bomba.Id        := StrToInt(edID.Text);
  bomba.Id_Tanque := StrToInt(edIdTanque.Text);
  bomba.bomba     := edBomba.Text;
  dao.Salvar(bomba);
  qryTabela.Active := false;
  qryTabela.Active := true;
  LimparCampos(frmCadBombas);

end;

procedure TfrmCadBombas.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  edID.Text       := IntToStr(qryTabelaID.AsInteger);
  edIdTanque.Text := IntToStr(qryTabelaID_TANQUE.AsInteger);
  edBomba.Text    := qryTabelaBOMBA.AsString;

end;

procedure TfrmCadBombas.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  edID.Text       := IntToStr(qryTabelaID.AsInteger);
  edIdTanque.Text := IntToStr(qryTabelaID_TANQUE.AsInteger);
  edBomba.Text    := qryTabelaBOMBA.AsString;

end;

procedure TfrmCadBombas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dao.Free;
  bomba.Free;

end;

procedure TfrmCadBombas.FormCreate(Sender: TObject);
begin
  inherited;
  dao := TControllerBomba.Create;
  bomba := TModelBomba.Create;
  qryTabela.Active := true;
end;

end.
