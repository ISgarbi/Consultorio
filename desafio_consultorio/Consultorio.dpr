program Consultorio;

uses
  Forms,
  Menu in 'Menu.pas' {frmMenu},
  Medicos in 'Medicos.pas' {frmMedicos},
  Dados in 'Dados.pas' {DataModule1: TDataModule},
  LocalizarMedicos in 'LocalizarMedicos.pas' {frmLocalizarMedicos},
  Consultorios in 'Consultorios.pas' {frmConsultorios},
  LocalizarConsultorios in 'LocalizarConsultorios.pas' {frmLocalizarConsultorios},
  Pacientes in 'Pacientes.pas' {frmPaciente},
  LocalizarPacientes in 'LocalizarPacientes.pas' {frmLocalizarPacientes},
  Consultas in 'Consultas.pas' {frmConsulta},
  RelatorioConsulta in 'RelatorioConsulta.pas' {frmRelatorioConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmMedicos, frmMedicos);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmLocalizarMedicos, frmLocalizarMedicos);
  Application.CreateForm(TfrmConsultorios, frmConsultorios);
  Application.CreateForm(TfrmLocalizarConsultorios, frmLocalizarConsultorios);
  Application.CreateForm(TfrmPaciente, frmPaciente);
  Application.CreateForm(TfrmLocalizarPacientes, frmLocalizarPacientes);
  Application.CreateForm(TfrmConsulta, frmConsulta);
  Application.CreateForm(TfrmRelatorioConsulta, frmRelatorioConsulta);
  Application.Run;
end.
