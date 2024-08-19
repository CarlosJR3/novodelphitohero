unit DelphiToHero.View.Pages.Form.Template;

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
    Vcl.ExtCtrls,
    Router4D.Interfaces,
    Vcl.StdCtrls,
    System.ImageList,
    Vcl.ImgList,
    Vcl.Buttons,
    Data.DB,
    FireDAC.Stan.Intf,
    FireDAC.Stan.Option,
    FireDAC.Stan.Param,
    FireDAC.Stan.Error,
    FireDAC.DatS,
    FireDAC.Phys.Intf,
    FireDAC.DApt.Intf,
    FireDAC.Stan.StorageBin,
    FireDAC.Comp.DataSet,
    FireDAC.Comp.Client,
    Vcl.Grids,
    Vcl.DBGrids,
    Bind4D,
    DelphiToHero.View.Styles.Colors;

type
  TFormTemplate = class(TForm, iRouter4DComponent)


 [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlPrincipal: TPanel;


   [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
   PnlTOP: TPanel;

   [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
     PnlMAIN: TPanel;

   [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    PnlMainbody: TPanel;


   [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    PnlMainbodyDelta: TPanel;


    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
     PnlMainbodyTop: TPanel;


    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
     PnlMainbodyDeltaForm: TPanel;

    [ComponentBindStyle(COLOR_C2, FONT_H5, FONT_COLOR3, FONT_NAME)]
     PnlMainbodyTopline: TPanel;


    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
      PnlMainbodyTopPesquisa: TPanel;

   [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
      PnlMainbodyTopmenu: TPanel;


   [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
   PnlMainTopBodySearchLine: TPanel;



    Panel4: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;

    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;

    Label2: TLabel;
    Edit1: TEdit;


    DBGrid1: TDBGrid;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FEndPoint : String;
    FPK : String;
    FTitle : String;
     FSort, FOrder : String;
    procedure ApplyStyle;
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  FormTemplate: TFormTemplate;

implementation


{$R *.dfm}

{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
begin
  Label1.Caption := FTitle;
  PnlMainbodyDeltaForm.Visible := False;




  Panel4.Color := COLOR_C1;









  Label1.Font.Size := FONT_H5;
  Label1.Font.Color := FONT_COLOR3;
  Label1.Font.Name := 'Segoe UI';

  Label2.Font.Size := FONT_H6;
  Label2.Font.Color := COLOR_BACKGROUND_TOP;

  Edit1.Font.Size := FONT_H5;
  Edit1.Font.Color := COLOR_BACKGROUND_TOP;
  Edit1.Color := COLOR_BACKGROUND;

  DBGrid1.Font.Size := FONT_H5;
  DBGrid1.Font.Color := FONT_COLOR4;
  DBGrid1.Font.Name := 'Segoe UI';
  DBGrid1.TitleFont.Size := FONT_H5;
  DBGrid1.TitleFont.Name := 'Segoe UI';
  DBGrid1.TitleFont.Color := FONT_COLOR4;
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
    TBind4D
      .New
      . Form(Self)
      .BindFormDefault(Ftitle)
      .BindFormRest(FEndPoint, FPK, FSort, FOrder)
      .SetStyleComponents;
       ApplyStyle;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.UnRender;
begin
  //
end;

end.
