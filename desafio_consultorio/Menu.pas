unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Mdicos1: TMenuItem;
    Co1: TMenuItem;
    Sair1: TMenuItem;
    Consultrios1: TMenuItem;
    Paciente1: TMenuItem;
    Cadastrar1: TMenuItem;
    Pesquisar1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure Mdicos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Consultrios1Click(Sender: TObject);
    procedure Paciente1Click(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure Pesquisar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses Medicos, Consultorios, Pacientes, Consultas, RelatorioConsulta;

{$R *.dfm}

procedure TfrmMenu.Mdicos1Click(Sender: TObject);
begin
  frmMedicos.showmodal;
end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TfrmMenu.Consultrios1Click(Sender: TObject);
begin
  frmConsultorios.showmodal;
end;

procedure TfrmMenu.Paciente1Click(Sender: TObject);
begin
  frmPaciente.showmodal;
end;

procedure TfrmMenu.Cadastrar1Click(Sender: TObject);
begin
  frmConsulta.showmodal;
end;

procedure TfrmMenu.Pesquisar1Click(Sender: TObject);
begin
  frmRelatorioConsulta.showmodal;
end;

end.
