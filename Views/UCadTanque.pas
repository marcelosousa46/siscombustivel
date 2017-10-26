unit UCadTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, UControllerTanque, UModelTanque;

type
  TfrmCadTanque = class(TfrmPadrao)
    qryTabelaID: TIntegerField;
    qryTabelaTANQUE: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    edID: TEdit;
    edTanque: TEdit;
    procedure btInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTanque: TfrmCadTanque;
  dao : TControllerTanque;
  tanque : TModelTanque;

implementation

{$R *.dfm}

procedure TfrmCadTanque.btExcluirClick(Sender: TObject);
begin
  inherited;
  tanque.Id     := StrToInt(edID.Text);
  dao.Excluir(tanque);
  qryTabela.Active := false;
  qryTabela.Active := true;
  LimparCampos(frmCadTanque);

end;

procedure TfrmCadTanque.btInserirClick(Sender: TObject);
begin
  inherited;
  if trim(edTanque.Text) = '' then
  begin
    ShowMessage('Campo descrição vazio');

  end
  else
  begin
    tanque.Id     := dao.MaxCodigo;
    tanque.Tanque := edTanque.Text;
    dao.Inserir(tanque);
    qryTabela.Active := false;
    qryTabela.Active := true;
    LimparCampos(frmCadTanque);
  end;
end;

procedure TfrmCadTanque.btSalvarClick(Sender: TObject);
begin
  inherited;
  tanque.Id     := StrToInt(edID.Text);
  tanque.Tanque := edTanque.Text;
  dao.Salvar(tanque);
  qryTabela.Active := false;
  qryTabela.Active := true;
  LimparCampos(frmCadTanque);

end;

procedure TfrmCadTanque.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  edID.Text := IntToStr(qryTabelaID.AsInteger);
  edTanque.Text := qryTabelaTANQUE.AsString;
end;

procedure TfrmCadTanque.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  edID.Text := IntToStr(qryTabelaID.AsInteger);
  edTanque.Text := qryTabelaTANQUE.AsString;
end;

procedure TfrmCadTanque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dao.Free;
  tanque.Free;
end;

procedure TfrmCadTanque.FormCreate(Sender: TObject);
begin
  inherited;
  dao := TControllerTanque.Create;
  tanque := TModelTanque.Create;
  qryTabela.Active := true;
end;

end.
