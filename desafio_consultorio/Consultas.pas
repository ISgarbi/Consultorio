unit Consultas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, DB, Mask, Buttons, Grids, DBGrids, DateUtils,
  ExtCtrls;

type
  TfrmConsulta = class(TForm)
    dsConsultorio: TDataSource;
    dsPaciente: TDataSource;
    dsEspecialidade: TDataSource;
    dsConsulta: TDataSource;
    dsMedicos: TDataSource;
    dsRelatorioConsulta: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    edtConsultorio: TDBEdit;
    edtPaciente: TDBEdit;
    dtpData: TDateTimePicker;
    dtpHora: TDateTimePicker;
    cbEspecialidade: TComboBox;
    btnLocalizarMedico: TBitBtn;
    btnLocalizarConsultorio: TBitBtn;
    btnLocalizarPaciente: TBitBtn;
    edtMedico: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    btnGravar: TBitBtn;
    Label7: TLabel;
    btnFechar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarMedicoClick(Sender: TObject);
    procedure btnLocalizarConsultorioClick(Sender: TObject);
    procedure btnLocalizarPacienteClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;

implementation

uses Dados, LocalizarMedicos, LocalizarConsultorios,
     LocalizarPacientes;

{$R *.dfm}

procedure TfrmConsulta.FormShow(Sender: TObject);
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

  dtpData.Date := now;
  dtpHora.Time := now;
end;

procedure TfrmConsulta.btnLocalizarMedicoClick(Sender: TObject);
begin
  frmLocalizarMedicos.showmodal;
end;

procedure TfrmConsulta.btnLocalizarConsultorioClick(Sender: TObject);
begin
  frmLocalizarConsultorios.showmodal;
end;

procedure TfrmConsulta.btnLocalizarPacienteClick(Sender: TObject);
begin
  frmLocalizarPacientes.showmodal;
end;

procedure TfrmConsulta.btnGravarClick(Sender: TObject);
var
  id_consulta, contadorConsultas : integer;
  tratarData, tratarHoraInicio, tratarHoraFim : string;
begin
    if trim(cbEspecialidade.Text) = '' then
    ShowMessage('Aten??o: Favor preencher a especialidade.');

    if trim(edtMedico.Text) = '' then
      ShowMessage('Aten??o: Favor preencher o m?dico.');

    if trim(edtConsultorio.Text) = '' then
      ShowMessage('Aten??o: Favor preencher o consult?rio.');

    if trim(edtPaciente.Text) = '' then
      ShowMessage('Aten??o: Favor preencher o paciente.');

    tratarData := StringReplace(datetostr(dtpData.Date), '/', '.', [rfReplaceAll, rfIgnoreCase]);

    tratarHoraInicio := FormatDateTime('HH:mm',IncMinute(dtpHora.Time, - 15));
    tratarHoraFim := FormatDateTime('HH:mm',IncMinute(dtpHora.Time, + 15));


    /// Verifica se tem consulta marcada para a data

    DataModule1.cdsRelatorioConsulta.Close;

    DataModule1.cdsRelatorioConsulta.CommandText := 'select * from vconsulta v where id_consultorio = ' + inttostr(DataModule1.cdsConsultorioID_CONSULTORIO.AsInteger)+ ' and v.data = ''' + tratarData +
    ''' AND v.hora between ''' + tratarHoraInicio + ''' and ''' + tratarHoraFim + '''';

    DataModule1.cdsRelatorioConsulta.Open;

    if DataModule1.cdsRelatorioConsulta.IsEmpty = false then begin
      if cbEspecialidade.Text = 'CIRURGI?O' then begin

        contadorConsultas := 0;
        DataModule1.cdsRelatorioConsulta.First;

        while not DataModule1.cdsRelatorioConsulta.Eof do Begin
          contadorConsultas := contadorConsultas + 1;
          DataModule1.cdsRelatorioConsulta.Next;
        end;

        if (contadorConsultas >= 2) then begin
          ShowMessage('Aten??o: J? possui dois m?dicos marcados para esta conulta!');
          exit;
        end
        else Begin
          if DataModule1.cdsRelatorioConsultaID_MEDICO.AsInteger = DataModule1.cdsMedicosID_MEDICO.AsInteger then begin
            ShowMessage('Aten??o: Este m?dido j? esta marcado para esta consulta!');
            exit;
          end;
        end;
      end
      else begin
        ShowMessage('Aten??o: Voc? n?o pode marcar consulta neste consult?rio, pois o mesmo j? possui consulta marcada!');
        exit;
      end;
    end
    else Begin
      //////Paciente j? possui consulta marcada para o dia
      DataModule1.cdsRelatorioConsulta.Close;

      DataModule1.cdsRelatorioConsulta.CommandText := 'select * from vconsulta v where id_paciente = ' + inttostr(DataModule1.cdsPacienteID_PACIENTE.AsInteger) + ' and v.data = ''' + tratarData + '''';

      DataModule1.cdsRelatorioConsulta.Open;

      if DataModule1.cdsRelatorioConsulta.IsEmpty = false then begin
        ShowMessage('Aten??o: Voc? n?o pode marcar consulta para este paciente pois o mesmo, j? possui consulta marcada para esta data!');
        exit;
      end;


      /////// Quantidades de consulta marcadas para o consult?rio

      DataModule1.cdsRelatorioConsulta.Close;

      DataModule1.cdsRelatorioConsulta.CommandText := 'select * from vconsulta v where id_consultorio = ' + inttostr(DataModule1.cdsConsultorioID_CONSULTORIO.AsInteger) + ' and v.data = ''' + tratarData + '''';

      DataModule1.cdsRelatorioConsulta.Open;

      contadorConsultas := 0;
      DataModule1.cdsRelatorioConsulta.First;

      while not DataModule1.cdsRelatorioConsulta.Eof do Begin
        contadorConsultas := contadorConsultas + 1;
        DataModule1.cdsRelatorioConsulta.Next;
      end;

      if (contadorConsultas >= 12) then begin
        ShowMessage('Aten??o: Voc? n?o pode utilizar este consult?rio, pois j? possui 12 consultas marcadas para esta data!');
        exit;
      end;

      ///M?dico j? esta atendendo em outro consult?rio para esta data

      DataModule1.cdsRelatorioConsulta.Close;

      DataModule1.cdsRelatorioConsulta.CommandText := 'select * from vconsulta v where id_medico = ' + inttostr(DataModule1.cdsMedicosID_MEDICO.AsInteger) + ' and v.data = ''' + tratarData + '''';

      DataModule1.cdsRelatorioConsulta.Open;

      if DataModule1.cdsRelatorioConsulta.IsEmpty = false then begin
        if DataModule1.cdsRelatorioConsultaID_CONSULTORIO.AsInteger <> DataModule1.cdsConsultorioID_CONSULTORIO.AsInteger then begin
          ShowMessage('Aten??o: Voc? n?o pode marcar consulta, pois este m?dico j? esta atendendo no consult?rio ' + inttostr(DataModule1.cdsRelatorioConsultaID_CONSULTORIO.AsInteger));
          exit;
        end;
      end;
    end;

    DataModule1.cdsConsultas.Open;
    DataModule1.cdsConsultas.Last;
    id_consulta := DataModule1.cdsConsultasID_CONSULTAS.AsInteger + 1;

    DataModule1.cdsConsultas.Append;

    DataModule1.cdsConsultas.FieldByName('ID_CONSULTAS').AsInteger := id_consulta;
    DataModule1.cdsConsultas.FieldByName('ESPECIALIDADECONSULTA').AsString := cbEspecialidade.Text;
    DataModule1.cdsConsultas.FieldByName('ID_MEDICO').AsInteger := DataModule1.cdsMedicosID_MEDICO.AsInteger;
    DataModule1.cdsConsultas.FieldByName('ID_CONSULTORIO').AsInteger := DataModule1.cdsConsultorioID_CONSULTORIO.AsInteger;
    DataModule1.cdsConsultas.FieldByName('ID_PACIENTE').AsInteger := DataModule1.cdsPacienteID_PACIENTE.AsInteger;
    DataModule1.cdsConsultas.FieldByName('DATA').AsDateTime := dtpData.Date;
    DataModule1.cdsConsultas.FieldByName('HORA').AsDateTime := strtotime(FormatDateTime('HH:mm',dtpHora.Time));
    DataModule1.cdsConsultas.Post;
    DataModule1.cdsConsultas.ApplyUpdates(-1);
    DataModule1.cdsConsultas.Close;

    dtpData.Date := now;
    dtpHora.Time := now;
    cbEspecialidade.Text := '';
    edtConsultorio.Text := '';
    edtPaciente.Text := '';
    edtMedico.Text := '';
end;

procedure TfrmConsulta.btnIncluirClick(Sender: TObject);
begin
  DataModule1.cdsConsultas.Open;
  DataModule1.cdsConsultas.Append;
end;

procedure TfrmConsulta.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.cdsRelatorioConsulta.Close;
  DataModule1.cdsMedicos.Close;
  DataModule1.cdsConsultorio.Close;
  DataModule1.cdsPaciente.Close;
  DataModule1.cdsEspecialidade.Close;
  DataModule1.cdsConsultas.Close;
  cbEspecialidade.Items.Clear;
end;

end.
