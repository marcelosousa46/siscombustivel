unit UHelperClasse;

interface

uses
  Vcl.Forms;
type

  THelperClasse = class helper for TForm
  private
    { private declarations }
  public
     procedure LimparCampos(formulario:TForm);
    { public declarations }
  end;
implementation

uses
  Vcl.StdCtrls;
{ THelperClasse }

procedure THelperClasse.LimparCampos(formulario:TForm);
var
  i : Integer;
  Ctrl : TObject;
begin
  for i := 0 To formulario.ComponentCount - 1 do
  begin
    if formulario.Components[i] is TCustomEdit then
    (formulario.Components[i] as TCustomEdit).Clear;
  end;
end;

end.
