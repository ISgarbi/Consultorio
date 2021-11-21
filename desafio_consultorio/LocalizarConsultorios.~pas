unit LocalizarConsultorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmLocalizarConsultorios = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    edtTexto: TEdit;
    btnLocalizar: TBitBtn;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    DBGrid1: TDBGrid;
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtTextoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarConsultorios: TfrmLocalizarConsultorios;

implementation

uses Dados, Consultorios, Medicos;

{$R *.dfm}

procedure TfrmLocalizarConsultorios.btnLocalizarClick(Sender: TObject);
begin
  DataModule1.cdsConsultorio.Active := False;
  DataModule1.cdsConsultorio.Params[0].AsString := edtTexto.Text + '%';
  DataModule1.cdsConsultorio.Active := True;
  btnOk.Enabled := not DataModule1.cdsConsultorio.IsEmpty;

  if DataModule1.cdsConsultorio.IsEmpty then
    StatusBar1.SimpleText := Format('Nenhum registro foi encontrado ' + 'com "%s"', [edtTexto.Text])
  else
    StatusBar1.SimpleText := Format('%d registros encontrados com ' + '"%s"', [DataModule1.cdsConsultorio.RecordCount, edtTexto.Text]);
end;

procedure TfrmLocalizarConsultorios.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLocalizarConsultorios.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLocalizarConsultorios.FormShow(Sender: TObject);
begin
  edtTexto.SetFocus;
end;

procedure TfrmLocalizarConsultorios.edtTextoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key in [#13]) then
    btnLocalizar.OnClick(Sender);
end;

end.
