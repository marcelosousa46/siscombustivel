program SisAbastecimento;

uses
  Vcl.Forms,
  UPrincipal in 'Views\UPrincipal.pas' {frmPrincipal},
  UModelTanque in 'Models\UModelTanque.pas',
  UModelBomba in 'Models\UModelBomba.pas',
  UModelProduto in 'Models\UModelProduto.pas',
  UModelVendas in 'Models\UModelVendas.pas',
  UConexao in 'Files\UConexao.pas',
  UDM in 'Files\UDM.pas' {DM: TDataModule},
  UConfiguracoes in 'Views\UConfiguracoes.pas' {frmConfiguracoes},
  UAtributos in 'Files\UAtributos.pas',
  UDAO in 'Files\UDAO.pas',
  UControllerTanque in 'Controller\UControllerTanque.pas',
  UPadrao in 'Views\UPadrao.pas' {frmPadrao},
  UControllerBomba in 'Controller\UControllerBomba.pas',
  UControllerProduto in 'Controller\UControllerProduto.pas',
  UControllerVendas in 'Controller\UControllerVendas.pas',
  UCadTanque in 'Views\UCadTanque.pas' {frmCadTanque},
  UHelperClasse in 'Files\UHelperClasse.pas',
  UCadBombas in 'Views\UCadBombas.pas' {frmCadBombas},
  UCadProdutos in 'Views\UCadProdutos.pas' {frmCadProdutos},
  UVendas in 'Views\UVendas.pas' {frmVendas},
  URelVendas in 'Files\URelVendas.pas' {frmRelVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadTanque, frmCadTanque);
  Application.CreateForm(TfrmCadBombas, frmCadBombas);
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.CreateForm(TfrmVendas, frmVendas);
  Application.CreateForm(TfrmRelVendas, frmRelVendas);
  Application.Run;
end.
