unit RelatorioConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, Buttons, DB, Grids, DBGrids,
  ExtCtrls;

type
  TfrmRelatorioConsulta = class(TForm)
    dsMedicos: TDataSource;
    dsRelatorioConsulta: TDataSource;
    dsEspecialidade: TDataSource;
    dsPaciente: TDataSource;
    dsConsultorio: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtMedico: TDBEdit;
    btnLocalizarMedico: TBitBtn;
    brnLimparMedico: TBitBtn;
    brnLimparConsultorio: TBitBtn;
    btnLocalizarConsultorio: TBitBtn;
    btnLocalizarPaciente: TBitBtn;
    brnLimparPaciente: TBitBtn;
    edtPaciente: TDBEdit;
    edtConsultorio: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    cbEspecialidade: TComboBox;
    ckEspecialidade: TCheckBox;
    Panel1: TPanel;
    dtpData: TDateTimePicker;
    ckData: TCheckBox;
    Panel2: TPanel;
    ckHora: TCheckBox;
    dtpHoraInicio: TDateTimePicker;
    dtpHoraFim: TDateTimePicker;
    btnPesquisar: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    procedure btnLocalizarMedicoClick(Sender: TObject);
    procedure btnLocalizarConsultorioClick(Sender: TObject);
    procedure btnLocalizarPacienteClick(Sender: TObject);
    procedure ckDataClick(Sender: TObject);
    procedure ckHoraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ckEspecialidadeClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure brnLimparMedicoClick(Sender: TObject);
    procedure brnLimparConsultorioClick(Sender: TObject);
    procedure brnLimparPacienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioConsulta: TfrmRelatorioConsulta;

implementation

uses LocalizarMedicos, LocalizarConsultorios, LocalizarPacientes, Dados;

{$R *.dfm}

procedure TfrmRelatorioConsulta.btnLocalizarMedicoClick(Sender: TObject);
begin
  frmLocalizarMedicos.showmodal;
end;

procedure TfrmRelatorioConsulta.btnLocalizarConsultorioClick(
  Sender: TObject);
begin
  frmLocalizarConsultorios.showmodal;
end;

procedure TfrmRelatorioConsulta.btnLocalizarPacienteClick(Sender: TObject);
begin
  frmLocalizarPacientes.showmodal;
end;

procedure TfrmRelatorioConsulta.ckDataClick(Sender: TObject);
begin
  if ckData.Checked = true then
    dtpData.Enabled := true
  else
    dtpData.Enabled := false;
end;

procedure TfrmRelatorioConsulta.ckHoraClick(Sender: TObject);
begin
  if ckHora.Checked = true then
  begin
    dtpHoraInicio.Enabled := true;
    dtpHoraFim.Enabled := true;
  end
  else
  begin
    dtpHoraInicio.Enabled := false;
    dtpHoraFim.Enabled := false;
  end
end;

procedure TfrmRelatorioConsulta.FormShow(Sender: TObject);
begin
  DataModule1.cdsEspecialidade.Open;
  DataModule1.cdsEspecialidade.first;
  while not DataModule1.cdsEspecialidade.Eof do
  begin
    cbEspecialidade.Items.add(DataModule1.cdsEspecialidadeDESCRIACAO.AsString);
    DataModule1.cdsEspecialidade.next;
  end;
  DataModule1.cdsEspecialidade.Close;
  
  DataModule1.cdsMedicos.Close;
  DataModule1.cdsConsultorio.Close;
  DataModule1.cdsPaciente.Close;

  DataModule1.cdsRelatorioConsulta.Open;

end;

procedure TfrmRelatorioConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.cdsRelatorioConsulta.Close;
end;

procedure TfrmRelatorioConsulta.ckEspecialidadeClick(Sender: TObject);
begin
  if ckEspecialidade.Checked = true then
    cbEspecialidade.Enabled := true
  else begin
    cbEspecialidade.Enabled := false;
    cbEspecialidade.Text := '';
  end;
end;

procedure TfrmRelatorioConsulta.btnPesquisarClick(Sender: TObject);
var
  montaConsulta, tratarData : string;
begin
  montaConsulta := '';
  montaConsulta := 'select * from vconsulta v Where 1 = 1 ';

  if ckData.Checked = true then begin
    tratarData := '';
    tratarData := StringReplace(datetostr(dtpData.Date), '/', '.', [rfReplaceAll, rfIgnoreCase]);
    montaConsulta := montaConsulta + ' and v.data = ''' + tratarData + '''';
  end;

  if ckHora.Checked = true then begin
    if dtpHoraFim.Time <= dtpHoraInicio.Time then begin
      ShowMessage('Atenção: Hora final tem que ser maior que a hora inicial!');
      exit;
    end
    else
      montaConsulta := montaConsulta + ' AND v.hora between ''' + timetostr(dtpHoraInicio.Time) + ''' and ''' + timetostr(dtpHoraFim.Time) + '''';
  end;

  if cbEspecialidade.Text <> '' then
    montaConsulta := montaConsulta + ' AND v.especialidadeconsulta = ''' + cbEspecialidade.Text + '''';

  if trim(edtMedico.Text) <> '' then
    montaConsulta := montaConsulta + ' AND v.id_medico = ' + DataModule1.cdsMedicosID_MEDICO.AsString;

  if trim(edtPaciente.Text) <> '' then
    montaConsulta := montaConsulta + ' AND v.id_paciente = ' + DataModule1.cdsPacienteID_PACIENTE.AsString;

  if trim(edtConsultorio.Text) <> '' then
    montaConsulta := montaConsulta + ' AND v.id_consultorio = ' + DataModule1.cdsConsultorioID_CONSULTORIO.AsString;

  montaConsulta := montaConsulta + ' ORDER BY v.data, v.hora ASC';

  DataModule1.cdsRelatorioConsulta.Close;

  DataModule1.cdsRelatorioConsulta.CommandText := montaConsulta;

  DataModule1.cdsRelatorioConsulta.Open;

end;

procedure TfrmRelatorioConsulta.brnLimparMedicoClick(Sender: TObject);
begin
  edtMedico.Text := '';
end;

procedure TfrmRelatorioConsulta.brnLimparConsultorioClick(Sender: TObject);
begin
  edtConsultorio.Text := '';
end;

procedure TfrmRelatorioConsulta.brnLimparPacienteClick(Sender: TObject);
begin
  edtPaciente.Text := '';
end;

end.
