unit Medicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB;

type
  TfrmMedicos = class(TForm)
    Label1: TLabel;
    dsMedicos: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    edtNome: TDBEdit;
    edtCrm: TDBEdit;
    Label3: TLabel;
    edtIdade: TDBEdit;
    Label4: TLabel;
    Panel2: TPanel;
    btnIncluir: TButton;
    btnCancelar: TButton;
    btnGravar: TButton;
    btnFechar: TButton;
    btnLocalizar: TBitBtn;
    Label5: TLabel;
    dsEspecialidade: TDataSource;
    cbEspecialidade: TDBComboBox;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCrmKeyPress(Sender: TObject; var Key: Char);
    procedure edtIdadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMedicos: TfrmMedicos;

implementation

uses Dados, LocalizarMedicos;

{$R *.dfm}

procedure TfrmMedicos.btnIncluirClick(Sender: TObject);
begin
  DataModule1.cdsEspecialidade.Open;
  DataModule1.cdsMedicos.Open;
  DataModule1.cdsMedicos.Append;
  edtNome.SetFocus;
end;

procedure TfrmMedicos.btnGravarClick(Sender: TObject);
begin
  if trim(edtNome.Text) = '' then
    ShowMessage('Atenção: Favor preencher o nome.');

  if trim(edtCrm.Text) = '' then
    ShowMessage('Atenção: Favor preencher o CRM.');

  if trim(edtIdade.Text) = '' then
    ShowMessage('Atenção: Favor preencher a idade.');

  if trim(cbEspecialidade.Text) = '' then
    ShowMessage('Atenção: Favor preencher a especialidade.');

  if (dsMedicos.DataSet.State = dsBrowse) or (dsMedicos.DataSet.State = dsEdit)
  or (dsMedicos.DataSet.State = dsInsert) then
  Begin
    DataModule1.cdsMedicos.Post;
    DataModule1.cdsMedicos.ApplyUpdates(-1);
    DataModule1.cdsMedicos.Close;
  end
  else
    ShowMessage('Atenção: Favor executar uma operação.');
end;

procedure TfrmMedicos.btnExcluirClick(Sender: TObject);
begin
  if (dsMedicos.DataSet.State = dsEdit) then
  Begin
    DataModule1.cdsMedicos.Delete;
    DataModule1.cdsMedicos.ApplyUpdates(-1);
    DataModule1.cdsMedicos.Close;
  end
  else
    ShowMessage('Atenção: Favor localizar o registro a ser excluído.');
end;

procedure TfrmMedicos.btnCancelarClick(Sender: TObject);
begin
  if (dsMedicos.DataSet.State = dsBrowse) or (dsMedicos.DataSet.State = dsEdit)
  or (dsMedicos.DataSet.State = dsInsert) then
  Begin
    DataModule1.cdsMedicos.Cancel;
    DataModule1.cdsMedicos.ApplyUpdates(-1);
    DataModule1.cdsMedicos.Open;
    DataModule1.cdsMedicos.Close;
  end
  else
    ShowMessage('Atenção: Favor executar uma operação.');
end;

procedure TfrmMedicos.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMedicos.btnLocalizarClick(Sender: TObject);
begin
  frmLocalizarMedicos.showmodal;
end;

procedure TfrmMedicos.FormShow(Sender: TObject);
begin
  DataModule1.cdsEspecialidade.Open;
  DataModule1.cdsEspecialidade.first;
  while not DataModule1.cdsEspecialidade.Eof do
  begin
    cbEspecialidade.Items.add(DataModule1.cdsEspecialidadeDESCRIACAO.AsString);
    DataModule1.cdsEspecialidade.next;
  end;
  DataModule1.cdsEspecialidade.Close
end;

procedure TfrmMedicos.edtCrmKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['1','2','3','4','5','6','7','8','9','0',#8]) then
  key :=#0;
end;

procedure TfrmMedicos.edtIdadeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['1','2','3','4','5','6','7','8','9','0',#8]) then
  key :=#0;
end;

end.
