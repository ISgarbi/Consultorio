unit Dados;

interface

uses
  SysUtils, Classes, DB, DBTables, DBXpress, SqlExpr, FMTBcd, DBClient,
  Provider;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    dsMedicos: TSQLDataSet;
    dspMedicos: TDataSetProvider;
    cdsMedicos: TClientDataSet;
    dsConsultorio: TSQLDataSet;
    dsConsultorioID_CONSULTORIO: TIntegerField;
    dsConsultorioNOME: TStringField;
    dsConsultorioNUMERO: TIntegerField;
    dsPaciente: TSQLDataSet;
    dsPacienteID_PACIENTE: TIntegerField;
    dsPacienteNOME: TStringField;
    dsPacienteENDERECO: TStringField;
    dsPacienteNUMEROCONVENIO: TIntegerField;
    dspConsultorio: TDataSetProvider;
    dspPaciente: TDataSetProvider;
    cdsConsultorio: TClientDataSet;
    cdsPaciente: TClientDataSet;
    cdsConsultorioID_CONSULTORIO: TIntegerField;
    cdsConsultorioNOME: TStringField;
    cdsConsultorioNUMERO: TIntegerField;
    cdsPacienteID_PACIENTE: TIntegerField;
    cdsPacienteNOME: TStringField;
    cdsPacienteENDERECO: TStringField;
    cdsPacienteNUMEROCONVENIO: TIntegerField;
    dsEspecialidade: TSQLDataSet;
    dspEspecialidade: TDataSetProvider;
    cdsEspecialidade: TClientDataSet;
    dsEspecialidadeID_ESPECIALIDADE: TIntegerField;
    dsEspecialidadeDESCRIACAO: TStringField;
    cdsEspecialidadeID_ESPECIALIDADE: TIntegerField;
    cdsEspecialidadeDESCRIACAO: TStringField;
    dsMedicosID_MEDICO: TIntegerField;
    dsMedicosNOME: TStringField;
    dsMedicosCRM: TIntegerField;
    dsMedicosIDADE: TIntegerField;
    cdsMedicosID_MEDICO: TIntegerField;
    cdsMedicosNOME: TStringField;
    cdsMedicosCRM: TIntegerField;
    cdsMedicosIDADE: TIntegerField;
    dsMedicosESPECIALIDADE: TStringField;
    cdsMedicosESPECIALIDADE: TStringField;
    dspConsultas: TDataSetProvider;
    dsConsultas: TSQLDataSet;
    dsConsultasID_CONSULTAS: TIntegerField;
    dsConsultasID_PACIENTE: TIntegerField;
    dsConsultasID_MEDICO: TIntegerField;
    dsConsultasID_CONSULTORIO: TIntegerField;
    dsConsultasESPECIALIDADECONSULTA: TStringField;
    cdsConsultas: TClientDataSet;
    cdsConsultasID_CONSULTAS: TIntegerField;
    cdsConsultasID_PACIENTE: TIntegerField;
    cdsConsultasID_MEDICO: TIntegerField;
    cdsConsultasID_CONSULTORIO: TIntegerField;
    cdsConsultasESPECIALIDADECONSULTA: TStringField;
    dsRelatorioConsulta: TSQLDataSet;
    dspRelatorioConsulta: TDataSetProvider;
    cdsRelatorioConsulta: TClientDataSet;
    dsConsultasDATA: TDateField;
    dsConsultasHORA: TTimeField;
    cdsConsultasDATA: TDateField;
    cdsConsultasHORA: TTimeField;
    dsRelatorioConsultaID_CONSULTAS: TIntegerField;
    dsRelatorioConsultaID_PACIENTE: TIntegerField;
    dsRelatorioConsultaNOMEPACIENTE: TStringField;
    dsRelatorioConsultaID_MEDICO: TIntegerField;
    dsRelatorioConsultaMEDICO: TStringField;
    dsRelatorioConsultaID_CONSULTORIO: TIntegerField;
    dsRelatorioConsultaNUMEROCONSULTORIO: TIntegerField;
    dsRelatorioConsultaNOMECONSULTORIO: TStringField;
    dsRelatorioConsultaESPECIALIDADECONSULTA: TStringField;
    dsRelatorioConsultaDATA: TDateField;
    dsRelatorioConsultaHORA: TTimeField;
    cdsRelatorioConsultaID_CONSULTAS: TIntegerField;
    cdsRelatorioConsultaID_PACIENTE: TIntegerField;
    cdsRelatorioConsultaNOMEPACIENTE: TStringField;
    cdsRelatorioConsultaID_MEDICO: TIntegerField;
    cdsRelatorioConsultaMEDICO: TStringField;
    cdsRelatorioConsultaID_CONSULTORIO: TIntegerField;
    cdsRelatorioConsultaNUMEROCONSULTORIO: TIntegerField;
    cdsRelatorioConsultaNOMECONSULTORIO: TStringField;
    cdsRelatorioConsultaESPECIALIDADECONSULTA: TStringField;
    cdsRelatorioConsultaDATA: TDateField;
    cdsRelatorioConsultaHORA: TTimeField;
    dsRelatorioConsultaCRM: TIntegerField;
    cdsRelatorioConsultaCRM: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
