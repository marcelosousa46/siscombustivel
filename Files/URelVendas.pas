unit URelVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, RLReport,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRelVendas = class(TForm)
    RLReport1: TRLReport;
    dsRel: TDataSource;
    qryRel: TFDQuery;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    qryRelID: TIntegerField;
    qryRelID_PRODUTO: TIntegerField;
    qryRelVALOR: TBCDField;
    qryRelIMPOSTO: TBCDField;
    qryRelDATAMOV: TSQLTimeStampField;
    qryRelPRODUTO: TStringField;
    qryRelBOMBA: TStringField;
    qryRelTANQUE: TStringField;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel7: TRLLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendas: TfrmRelVendas;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmRelVendas.FormCreate(Sender: TObject);
begin
  qryRel.Active := false;
  qryRel.Active := true;
end;

end.
