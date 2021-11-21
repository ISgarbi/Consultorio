unit Pacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Mask, ExtCtrls, DB;

type
  TfrmPaciente = class(TForm)
    Panel1: TPanel;
    btnLocalizar: TBitBtn;
    Panel2: TPanel;
    btnIncluir: TButton;
    btnCancelar: TButton;
    btnGravar: TButton;
    btnFechar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TDBEdit;
    dsPaciente: TDataSource;
    Label3: TLabel;
    edtEndereco: TDBEdit;
    Label4: TLabel;
    edtNumeroConvenio: TDBEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure edtNumeroConvenioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaciente: TfrmPaciente;

implementation

uses Dados, LocalizarPacientes;

{$R *.dfm}

procedure TfrmPaciente.btnIncluirClick(Sender: TObject);
begin
  DataModule1.cdsPaciente.Open;
  DataModule1.cdsPaciente.Append;
  edtNome.SetFocus;
end;

procedure TfrmPaciente.btnGravarClick(Sender: TObject);
begin
  if trim(edtNome.Text) = '' then
    ShowMessage('Atenção: Favor preencher o nome.');

  if trim(edtEndereco.Text) = '' then
    ShowMessage('Atenção: Favor preencher o endereço.');

  if trim(edtNumeroConvenio.Text) = '' then
    ShowMessage('Atenção: Favor preencher o número do convênio.');

  if (dsPaciente.DataSet.State = dsBrowse) or (dsPaciente.DataSet.State = dsEdit)
  or (dsPaciente.DataSet.State = dsInsert) then
  Begin
    DataModule1.cdsPaciente.Post;
    DataModule1.cdsPaciente.ApplyUpdates(-1);
    DataModule1.cdsPaciente.Close;
  end
  else
    ShowMessage('Atenção: Favor executar uma operação.');
end;

procedure TfrmPaciente.btnExcluirClick(Sender: TObject);
begin
  if (dsPaciente.DataSet.State = dsEdit) then
  Begin
    DataModule1.cdsPaciente.Delete;
    DataModule1.cdsPaciente.ApplyUpdates(-1);
    DataModule1.cdsPaciente.Close;
  end
  else
    ShowMessage('Atenção: Favor localizar o registro a ser excluído.');
end;

procedure TfrmPaciente.btnCancelarClick(Sender: TObject);
begin
  if (dsPaciente.DataSet.State = dsBrowse) or (dsPaciente.DataSet.State = dsEdit)
  or (dsPaciente.DataSet.State = dsInsert) then
  Begin
    DataModule1.cdsPaciente.Cancel;
    DataModule1.cdsPaciente.ApplyUpdates(-1);
    DataModule1.cdsPaciente.Open;
    DataModule1.cdsPaciente.Close;
  end
  else
    ShowMessage('Atenção: Favor executar uma operação.');
end;

procedure TfrmPaciente.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPaciente.btnLocalizarClick(Sender: TObject);
begin
  frmLocalizarPacientes.showmodal;
end;

procedure TfrmPaciente.edtNumeroConvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['1','2','3','4','5','6','7','8','9','0',#8]) then
  key :=#0;
end;

end.
