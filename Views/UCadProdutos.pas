unit UCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.StdCtrls,
  UControllerProduto, UModelProduto;

type
  TfrmCadProdutos = class(TfrmPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edID: TEdit;
    edProduto: TEdit;
    edIdBomba: TEdit;
    edImposto: TEdit;
    Label4: TLabel;
    edValor: TEdit;
    Label5: TLabel;
    qryTabelaID: TIntegerField;
    qryTabelaID_BOMBA: TIntegerField;
    qryTabelaPRODUTO: TStringField;
    qryTabelaVALOR: TBCDField;
    qryTabelaIMPOSTO: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;
  dao : TControllerProduto;
  produto : TModelProduto;

implementation

{$R *.dfm}

procedure TfrmCadProdutos.btExcluirClick(Sender: TObject);
begin
  inherited;
  produto.Id     := StrToInt(edID.Text);
  dao.Excluir(produto);
  qryTabela.Active := false;
  qryTabela.Active := true;
  LimparCampos(frmCadProdutos);

end;

procedure TfrmCadProdutos.btInserirClick(Sender: TObject);
begin
  inherited;
  if trim(edProduto.Text) = '' then
  begin
    ShowMessage('Campo descrição vazio');
  end
  else
  begin
    produto.Id       := dao.MaxCodigo;
    produto.Id_Bomba := StrToInt(edIdBomba.Text);
    produto.Produto  := edProduto.Text;
    produto.Imposto  := StrToFloat(edImposto.Text);
    produto.Valor    := StrToFloat(edValor.Text);
    dao.Inserir(produto);
    qryTabela.Active := false;
    qryTabela.Active := true;
    LimparCampos(frmCadProdutos);
  end;

end;

procedure TfrmCadProdutos.btSalvarClick(Sender: TObject);
begin
  inherited;
  produto.Id       := StrToInt(edID.Text);
  produto.Id_Bomba := StrToInt(edIdBomba.Text);
  produto.Produto  := edProduto.Text;
  produto.Valor    := StrToFloat(edValor.Text);
  produto.Imposto  := StrToFloat(edImposto.Text);
  dao.Salvar(produto);
  qryTabela.Active := false;
  qryTabela.Active := true;
  LimparCampos(frmCadProdutos);

end;

procedure TfrmCadProdutos.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  edID.Text       := IntToStr(qryTabelaID.AsInteger);
  edIdBomba.Text  := IntToStr(qryTabelaID_BOMBA.AsInteger);
  edProduto.Text  := qryTabelaPRODUTO.AsString;
  edImposto.Text  := FloatToStr(qryTabelaIMPOSTO.AsFloat);
  edValor.Text    := FloatToStr(qryTabelaVALOR.AsFloat);

end;

procedure TfrmCadProdutos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  edID.Text       := IntToStr(qryTabelaID.AsInteger);
  edIdBomba.Text  := IntToStr(qryTabelaID_BOMBA.AsInteger);
  edProduto.Text  := qryTabelaPRODUTO.AsString;
  edImposto.Text  := FloatToStr(qryTabelaIMPOSTO.AsFloat);
  edValor.Text    := FloatToStr(qryTabelaVALOR.AsFloat);

end;

procedure TfrmCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dao.Free;
  produto.Free;

end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  dao := TControllerProduto.Create;
  produto := TModelProduto.Create;
  qryTabela.Active := true;
end;

end.
