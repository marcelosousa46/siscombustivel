unit UConfiguracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.Buttons, Vcl.StdCtrls,
  UConexao;

type
  TfrmConfiguracoes = class(TForm)
    GroupBox1: TGroupBox;
    edtBancoDados: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    edtServidor: TEdit;
    Label2: TLabel;
    edtPorta: TEdit;
    Label3: TLabel;
    edtUsuario: TEdit;
    Label4: TLabel;
    edtSenha: TEdit;
    Label5: TLabel;
    OpenTextFileDialog1: TOpenTextFileDialog;
    btnGravar: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;
   conexaoClass : TConexao;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmConfiguracoes.btnGravarClick(Sender: TObject);
begin
  conexaoClass := TConexao.Create(ExtractFilePath(Application.ExeName) + 'Config.ini', 'Conexao');

  conexaoClass.GravaINI(edtUsuario.Text, edtSenha.Text, edtServidor.Text, edtBancoDados.Text, StrToInt(edtPorta.Text));
  MessageDlg('Gravado com sucesso!', mtConfirmation, [mbOK],0);
  close;
end;


procedure TfrmConfiguracoes.SpeedButton1Click(Sender: TObject);
begin
  if OpenTextFileDialog1.Execute then
  begin
      edtBancoDados.Text := OpenTextFileDialog1.FileName;
  end;
end;

end.
