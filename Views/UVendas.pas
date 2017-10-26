unit UVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.StdCtrls,
  UControllerVendas, UModelVendas, UControllerProduto, UModelProduto;

type
  TfrmVendas = class(TfrmPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edID: TEdit;
    edProduto: TEdit;
    edIdProduto: TEdit;
    edImposto: TEdit;
    edValor: TEdit;
    qryTabelaID: TIntegerField;
    qryTabelaID_PRODUTO: TIntegerField;
    qryTabelaVALOR: TBCDField;
    qryTabelaIMPOSTO: TBCDField;
    qryTabelaDATAMOV: TSQLTimeStampField;
    qryTabelaPRODUTO: TStringField;
    edData: TDateTimePicker;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edIdProdutoExit(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure edValorExit(Sender: TObject);
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
  frmVendas: TfrmVendas;
  dao : TControllerVendas;
  vendas : TModelVendas;
  oProduto : TControllerProduto;
  produto : TModelProduto;

implementation

{$R *.dfm}

procedure TfrmVendas.btExcluirClick(Sender: TObject);
begin
  inherited;
  vendas.Id     := StrToInt(edID.Text);
  dao.Excluir(vendas);
  qryTabela.Active := false;
  qryTabela.Active := true;
  LimparCampos(frmVendas);

end;

procedure TfrmVendas.btInserirClick(Sender: TObject);
begin
  inherited;
  if trim(edIdProduto.Text) = '' then
  begin
    ShowMessage('Campo Id produto vazio');
  end
  else
  begin
    vendas.Id         := dao.MaxCodigo;
    vendas.Id_Produto := StrToInt(edIdProduto.Text);
    vendas.Imposto    := StrToFloat(edImposto.Text);
    vendas.Valor      := StrToFloat(edValor.Text);
    vendas.DataMov    := edData.Date;
    dao.Inserir(vendas);
    qryTabela.Active := false;
    qryTabela.Active := true;
    LimparCampos(frmVendas);
  end;

end;

procedure TfrmVendas.btSalvarClick(Sender: TObject);
begin
  inherited;
  vendas.Id         := StrToInt(edID.Text);
  vendas.Id_Produto := StrToInt(edIdProduto.Text);
  vendas.Valor      := StrToFloat(edValor.Text);
  vendas.Imposto    := StrToFloat(edImposto.Text);
  dao.Salvar(vendas);
  qryTabela.Active := false;
  qryTabela.Active := true;
  LimparCampos(frmVendas);

end;

procedure TfrmVendas.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  edID.Text       := IntToStr(qryTabelaID.AsInteger);
  edIdProduto.Text:= IntToStr(qryTabelaID_PRODUTO.AsInteger);
  edProduto.Text  := qryTabelaPRODUTO.AsString;
  edImposto.Text  := FloatToStr(qryTabelaIMPOSTO.AsFloat);
  edValor.Text    := FloatToStr(qryTabelaVALOR.AsFloat);
  edData.DateTime := qryTabelaDATAMOV.AsDateTime;

end;

procedure TfrmVendas.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  edID.Text       := IntToStr(qryTabelaID.AsInteger);
  edIdProduto.Text:= IntToStr(qryTabelaID_PRODUTO.AsInteger);
  edProduto.Text  := qryTabelaPRODUTO.AsString;
  edImposto.Text  := FloatToStr(qryTabelaIMPOSTO.AsFloat);
  edValor.Text    := FloatToStr(qryTabelaVALOR.AsFloat);
  edData.DateTime := qryTabelaDATAMOV.AsDateTime;

end;

procedure TfrmVendas.edIdProdutoExit(Sender: TObject);
var
  imposto: Double;
  Id: Integer;
begin
  inherited;
  if trim(edIdProduto.Text) <> '' then
  begin
    produto.Id := StrToInt(edIdProduto.Text);
    produto := oProduto.Buscar(produto);
    edProduto.Text := produto.Produto;
    edValor.Text   := FloatToStr(produto.Valor);
    imposto        := produto.Valor * produto.Imposto / 100;
    edImposto.Text := FloatToStr(imposto);
  end;

end;

procedure TfrmVendas.edValorExit(Sender: TObject);
var
  imposto: Double;
begin
  inherited;
  imposto        := StrToFloat(edValor.Text) * produto.Imposto / 100;
  edImposto.Text := FloatToStr(imposto);

end;

procedure TfrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dao.Free;
  vendas.Free;
  //
  oProduto.Free;
  produto.Free;

end;

procedure TfrmVendas.FormCreate(Sender: TObject);
begin
  inherited;
  dao := TControllerVendas.Create;
  vendas := TModelVendas.Create;
  //
  oProduto := TControllerProduto.Create;
  produto  := TModelProduto.Create;
  qryTabela.Active := true;
  edData.Date := Date;

end;

end.
