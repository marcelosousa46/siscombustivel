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
  UTanques in 'Views\UTanques.pas' {frmTanque},
  UControllerBomba in 'Controller\UControllerBomba.pas',
  UControllerProduto in 'Controller\UControllerProduto.pas',
  UControllerVendas in 'Controller\UControllerVendas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTanque, frmTanque);
  Application.Run;
end.
