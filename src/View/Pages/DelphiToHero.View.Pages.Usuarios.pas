unit DelphiToHero.View.Pages.Usuarios;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  DelphiToHero.View.Pages.Form.Template,
  Vcl.ExtCtrls,
  Bind4D,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Vcl.StdCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  [FormRest('/users', 'quuid', 'name', 'asc')]
  [FormDefault('Cadastro de Usuários')]
  TPageUsuarios = class(TFormTemplate)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageUsuarios: TPageUsuarios;

implementation

{$R *.dfm}

procedure TPageUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  lblTitle.Caption :='Cadastro de Usuários';
end;

end.
