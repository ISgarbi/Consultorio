unit LocalizarPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmLocalizarPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtTexto: TEdit;
    btnLocalizar: TBitBtn;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
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
  frmLocalizarPacientes: TfrmLocalizarPacientes;

implementation

uses Dados, Pacientes;

{$R *.dfm}

procedure TfrmLocalizarPacientes.btnLocalizarClick(Sender: TObject);
begin
  DataModule1.cdsPaciente.Active := False;
  DataModule1.cdsPaciente.Params[0].AsString := edtTexto.Text + '%';
  DataModule1.cdsPaciente.Active := True;
  btnOk.Enabled := not DataModule1.cdsPaciente.IsEmpty;

  if DataModule1.cdsPaciente.IsEmpty then
    StatusBar1.SimpleText := Format('Nenhum registro foi encontrado ' + 'com "%s"', [edtTexto.Text])
  else
    StatusBar1.SimpleText := Format('%d registros encontrados com ' + '"%s"', [DataModule1.cdsPaciente.RecordCount, edtTexto.Text]);
end;

procedure TfrmLocalizarPacientes.btnOkClick(Sender: TObject);
begin
  //frmPaciente.edtNome.SetFocus;
  Close;
end;

procedure TfrmLocalizarPacientes.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLocalizarPacientes.edtTextoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key in [#13]) then
    btnLocalizar.OnClick(Sender);
end;

procedure TfrmLocalizarPacientes.FormShow(Sender: TObject);
begin
  edtTexto.SetFocus;
end;

end.
