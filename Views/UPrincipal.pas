unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConexao, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Configurao1: TMenuItem;
    Sair1: TMenuItem;
    anques1: TMenuItem;
    Bombas1: TMenuItem;
    Produtos1: TMenuItem;
    Vendas1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure anques1Click(Sender: TObject);
    procedure Bombas1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  conexaoClass : TConexao;

implementation

{$R *.dfm}

uses UDM, UConfiguracoes, UModelBomba, UAtributos, UDAO, UControllerTanque,
  UModelTanque, UCadTanque, UCadBombas, UCadProdutos, UVendas;

procedure TfrmPrincipal.anques1Click(Sender: TObject);
begin
   frmCadTanque := TfrmCadTanque.Create(self);
   frmCadTanque.ShowModal;

end;

procedure TfrmPrincipal.Bombas1Click(Sender: TObject);
begin
   frmCadBombas := TfrmCadBombas.Create(self);
   frmCadBombas.ShowModal;

end;

procedure TfrmPrincipal.Configurao1Click(Sender: TObject);
begin
   frmConfiguracoes := TfrmConfiguracoes.Create(self);
   frmConfiguracoes.ShowModal;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
    conexaoClass := TConexao.Create(ExtractFilePath(Application.ExeName) + 'Config.ini', 'Conexao');
    conexaoClass.LeINI;
    conexaoClass.Conectar(dm.FDConnection1);
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
   frmCadProdutos := TfrmCadProdutos.Create(self);
   frmCadProdutos.ShowModal;

end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.Vendas1Click(Sender: TObject);
begin
   frmVendas := TfrmVendas.Create(self);
   frmVendas.ShowModal;

end;

end.
