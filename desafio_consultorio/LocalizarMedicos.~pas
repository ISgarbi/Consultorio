unit LocalizarMedicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TfrmLocalizarMedicos = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    edtTexto: TEdit;
    btnLocalizar: TBitBtn;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    DBGrid1: TDBGrid;
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtTextoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarMedicos: TfrmLocalizarMedicos;

implementation

uses Dados, Medicos;

{$R *.dfm}

procedure TfrmLocalizarMedicos.btnLocalizarClick(Sender: TObject);
begin
  DataModule1.cdsMedicos.Active := False;
  DataModule1.cdsMedicos.Params[0].AsString := edtTexto.Text + '%';
  DataModule1.cdsMedicos.Active := True;
  btnOk.Enabled := not DataModule1.cdsMedicos.IsEmpty;

  if DataModule1.cdsMedicos.IsEmpty then
    StatusBar1.SimpleText := Format('Nenhum registro foi encontrado ' + 'com "%s"', [edtTexto.Text])
  else
    StatusBar1.SimpleText := Format('%d registros encontrados com ' + '"%s"', [DataModule1.cdsMedicos.RecordCount, edtTexto.Text]);
end;

procedure TfrmLocalizarMedicos.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLocalizarMedicos.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLocalizarMedicos.edtTextoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key in [#13]) then
    btnLocalizar.OnClick(Sender);
end;

procedure TfrmLocalizarMedicos.FormShow(Sender: TObject);
begin
  edtTexto.SetFocus;
end;

end.
