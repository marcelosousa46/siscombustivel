unit UPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, FireDAC.Stan.Async, FireDAC.DApt, UHelperClasse;

type
  TfrmPadrao = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    btInserir: TToolButton;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    btSalvar: TToolButton;
    ToolButton3: TToolButton;
    btExcluir: TToolButton;
    ToolButton5: TToolButton;
    btFechar: TToolButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    dsTabela: TDataSource;
    qryTabela: TFDQuery;
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmPadrao.btFecharClick(Sender: TObject);
begin
  close;
end;

end.
