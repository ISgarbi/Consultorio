unit Consultorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrmConsultorios = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    btnLocalizar: TBitBtn;
    Panel2: TPanel;
    btnIncluir: TButton;
    btnCancelar: TButton;
    btnGravar: TButton;
    btnFechar: TButton;
    Label2: TLabel;
    edtNome: TDBEdit;
    dsConsultorios: TDataSource;
    Label3: TLabel;
    edtNumero: TDBEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure edtNumeroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultorios: TfrmConsultorios;

implementation

uses Dados, LocalizarConsultorios;

{$R *.dfm}

procedure TfrmConsultorios.btnIncluirClick(Sender: TObject);
begin
  DataModule1.cdsConsultorio.Open;
  DataModule1.cdsConsultorio.Append;
  edtNome.SetFocus;
end;

procedure TfrmConsultorios.btnGravarClick(Sender: TObject);
begin
  if trim(edtNome.Text) = '' then
    ShowMessage('Atenção: Favor preencher o nome.');

  if trim(edtNumero.Text) = '' then
    ShowMessage('Atenção: Favor preencher o número.');

  if (dsConsultorios.DataSet.State = dsBrowse) or (dsConsultorios.DataSet.State = dsEdit)
  or (dsConsultorios.DataSet.State = dsInsert) then
  Begin
    DataModule1.cdsConsultorio.Post;
    DataModule1.cdsConsultorio.ApplyUpdates(-1);
    DataModule1.cdsConsultorio.Close;
  end
  else
    ShowMessage('Atenção: Favor executar uma operação.');
end;

procedure TfrmConsultorios.btnExcluirClick(Sender: TObject);
begin
  if (dsConsultorios.DataSet.State = dsEdit) then
  Begin
    DataModule1.cdsConsultorio.Delete;
    DataModule1.cdsConsultorio.ApplyUpdates(-1);
    DataModule1.cdsConsultorio.Close;
  end
  else
    ShowMessage('Atenção: Favor localizar o registro a ser excluído.');
end;

procedure TfrmConsultorios.btnCancelarClick(Sender: TObject);
begin
  if (dsConsultorios.DataSet.State = dsBrowse) or (dsConsultorios.DataSet.State = dsEdit)
  or (dsConsultorios.DataSet.State = dsInsert) then
  Begin
    DataModule1.cdsConsultorio.Cancel;
    DataModule1.cdsConsultorio.ApplyUpdates(-1);
    DataModule1.cdsConsultorio.Open;
    DataModule1.cdsConsultorio.Close;
  end
  else
    ShowMessage('Atenção: Favor executar uma operação.');
end;

procedure TfrmConsultorios.btnFecharClick(Sender: TObject);
begin
  Close
end;

procedure TfrmConsultorios.btnLocalizarClick(Sender: TObject);
begin
  frmLocalizarConsultorios.showmodal;
end;

procedure TfrmConsultorios.edtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['1','2','3','4','5','6','7','8','9','0',#8]) then
  key :=#0;
end;

end.
