object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 300
  Top = 173
  Height = 479
  Width = 605
  object SQLConnection1: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=127.0.0.1:D:\desafio_consultorio\DBCONSULTORIO.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 32
    Top = 8
  end
  object dsMedicos: TSQLDataSet
    CommandText = 'select *  from MEDICOS where nome like :PNome'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PNome'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 16
    Top = 64
    object dsMedicosID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dsMedicosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dsMedicosCRM: TIntegerField
      FieldName = 'CRM'
      ProviderFlags = [pfInUpdate]
    end
    object dsMedicosIDADE: TIntegerField
      FieldName = 'IDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dsMedicosESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dspMedicos: TDataSetProvider
    DataSet = dsMedicos
    UpdateMode = upWhereKeyOnly
    Left = 86
    Top = 64
  end
  object cdsMedicos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PNome'
        ParamType = ptInput
      end>
    ProviderName = 'dspMedicos'
    Left = 184
    Top = 64
    object cdsMedicosID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsMedicosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsMedicosCRM: TIntegerField
      FieldName = 'CRM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMedicosIDADE: TIntegerField
      FieldName = 'IDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMedicosESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dsConsultorio: TSQLDataSet
    CommandText = 'select *  from CONSULTORIO where nome like :PNome'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PNome'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 16
    Top = 120
    object dsConsultorioID_CONSULTORIO: TIntegerField
      FieldName = 'ID_CONSULTORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dsConsultorioNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dsConsultorioNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsPaciente: TSQLDataSet
    CommandText = 'select *  from PACIENTE where nome like :PNome'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PNome'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 16
    Top = 168
    object dsPacienteID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dsPacienteNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dsPacienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dsPacienteNUMEROCONVENIO: TIntegerField
      FieldName = 'NUMEROCONVENIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspConsultorio: TDataSetProvider
    DataSet = dsConsultorio
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 120
  end
  object dspPaciente: TDataSetProvider
    DataSet = dsPaciente
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 168
  end
  object cdsConsultorio: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PNome'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsultorio'
    Left = 176
    Top = 112
    object cdsConsultorioID_CONSULTORIO: TIntegerField
      FieldName = 'ID_CONSULTORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsConsultorioNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsConsultorioNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsPaciente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PNome'
        ParamType = ptInput
      end>
    ProviderName = 'dspPaciente'
    Left = 184
    Top = 168
    object cdsPacienteID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPacienteNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsPacienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsPacienteNUMEROCONVENIO: TIntegerField
      FieldName = 'NUMEROCONVENIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsEspecialidade: TSQLDataSet
    CommandText = 'SELECT * FROM ESPECIALIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 280
    Top = 64
    object dsEspecialidadeID_ESPECIALIDADE: TIntegerField
      FieldName = 'ID_ESPECIALIDADE'
      Required = True
    end
    object dsEspecialidadeDESCRIACAO: TStringField
      FieldName = 'DESCRIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dspEspecialidade: TDataSetProvider
    DataSet = dsEspecialidade
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 64
  end
  object cdsEspecialidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEspecialidade'
    Left = 472
    Top = 64
    object cdsEspecialidadeID_ESPECIALIDADE: TIntegerField
      FieldName = 'ID_ESPECIALIDADE'
      Required = True
    end
    object cdsEspecialidadeDESCRIACAO: TStringField
      FieldName = 'DESCRIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dspConsultas: TDataSetProvider
    DataSet = dsConsultas
    Left = 364
    Top = 120
  end
  object dsConsultas: TSQLDataSet
    CommandText = 'select * from CONSULTAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 284
    Top = 120
    object dsConsultasID_CONSULTAS: TIntegerField
      FieldName = 'ID_CONSULTAS'
      Required = True
    end
    object dsConsultasID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object dsConsultasID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
    end
    object dsConsultasID_CONSULTORIO: TIntegerField
      FieldName = 'ID_CONSULTORIO'
    end
    object dsConsultasESPECIALIDADECONSULTA: TStringField
      FieldName = 'ESPECIALIDADECONSULTA'
      Size = 40
    end
    object dsConsultasDATA: TDateField
      FieldName = 'DATA'
    end
    object dsConsultasHORA: TTimeField
      FieldName = 'HORA'
    end
  end
  object cdsConsultas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultas'
    Left = 444
    Top = 120
    object cdsConsultasID_CONSULTAS: TIntegerField
      FieldName = 'ID_CONSULTAS'
      Required = True
    end
    object cdsConsultasID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object cdsConsultasID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
    end
    object cdsConsultasID_CONSULTORIO: TIntegerField
      FieldName = 'ID_CONSULTORIO'
    end
    object cdsConsultasESPECIALIDADECONSULTA: TStringField
      FieldName = 'ESPECIALIDADECONSULTA'
      Size = 40
    end
    object cdsConsultasDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsConsultasHORA: TTimeField
      FieldName = 'HORA'
    end
  end
  object dsRelatorioConsulta: TSQLDataSet
    CommandText = 
      'select * from VCONSULTA ORDER BY VCONSULTA.data, VCONSULTA.hora ' +
      'ASC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 272
    Top = 176
    object dsRelatorioConsultaID_CONSULTAS: TIntegerField
      FieldName = 'ID_CONSULTAS'
    end
    object dsRelatorioConsultaID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object dsRelatorioConsultaNOMEPACIENTE: TStringField
      FieldName = 'NOMEPACIENTE'
      Size = 40
    end
    object dsRelatorioConsultaID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
    end
    object dsRelatorioConsultaMEDICO: TStringField
      FieldName = 'MEDICO'
      Size = 40
    end
    object dsRelatorioConsultaID_CONSULTORIO: TIntegerField
      FieldName = 'ID_CONSULTORIO'
    end
    object dsRelatorioConsultaNUMEROCONSULTORIO: TIntegerField
      FieldName = 'NUMEROCONSULTORIO'
    end
    object dsRelatorioConsultaNOMECONSULTORIO: TStringField
      FieldName = 'NOMECONSULTORIO'
      Size = 40
    end
    object dsRelatorioConsultaESPECIALIDADECONSULTA: TStringField
      FieldName = 'ESPECIALIDADECONSULTA'
      Size = 40
    end
    object dsRelatorioConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object dsRelatorioConsultaHORA: TTimeField
      FieldName = 'HORA'
    end
    object dsRelatorioConsultaCRM: TIntegerField
      FieldName = 'CRM'
    end
  end
  object dspRelatorioConsulta: TDataSetProvider
    DataSet = dsRelatorioConsulta
    Options = [poAllowCommandText]
    Left = 376
    Top = 176
  end
  object cdsRelatorioConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorioConsulta'
    Left = 488
    Top = 176
    object cdsRelatorioConsultaID_CONSULTAS: TIntegerField
      FieldName = 'ID_CONSULTAS'
    end
    object cdsRelatorioConsultaID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object cdsRelatorioConsultaNOMEPACIENTE: TStringField
      FieldName = 'NOMEPACIENTE'
      Size = 40
    end
    object cdsRelatorioConsultaID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
    end
    object cdsRelatorioConsultaMEDICO: TStringField
      FieldName = 'MEDICO'
      Size = 40
    end
    object cdsRelatorioConsultaID_CONSULTORIO: TIntegerField
      FieldName = 'ID_CONSULTORIO'
    end
    object cdsRelatorioConsultaNUMEROCONSULTORIO: TIntegerField
      FieldName = 'NUMEROCONSULTORIO'
    end
    object cdsRelatorioConsultaNOMECONSULTORIO: TStringField
      FieldName = 'NOMECONSULTORIO'
      Size = 40
    end
    object cdsRelatorioConsultaESPECIALIDADECONSULTA: TStringField
      FieldName = 'ESPECIALIDADECONSULTA'
      Size = 40
    end
    object cdsRelatorioConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsRelatorioConsultaHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsRelatorioConsultaCRM: TIntegerField
      FieldName = 'CRM'
    end
  end
end
