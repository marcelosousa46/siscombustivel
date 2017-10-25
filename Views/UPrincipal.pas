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
    btnConexao: TBitBtn;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
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
  UModelTanque;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  ATab: TModelBomba;
begin
  ATab := TModelBomba.Create;
  try
    Memo1.Clear;
    Memo1.Lines.Add(PegaPks(ATab)[0]);
  finally
    ATab.Free;
  end;end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
var
  dao : TControllerTanque;
  tanque : TModelTanque;
begin
  dao := TControllerTanque.Create;
  tanque := TModelTanque.Create;

  tanque.Id := 2;
  tanque.Tanque := 'TANQUE 3';

//  dao.Excluir(bomba);
//  dao.Inserir(tanque);
//  dao.Salvar(tanque);
  dao.Buscar(tanque);

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
    if not dm.FDConnection1.Connected then
    begin
        dm.FDConnection1.Connected := True;
        btnConexao.Font.Color      := clRed;
        btnConexao.Caption         := 'Desconectar';
    end
    else
    begin
        dm.FDConnection1.Connected := false;
        btnConexao.Font.Color      := clGreen;
        btnConexao.Caption         := 'Conectar';
    end;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

end.