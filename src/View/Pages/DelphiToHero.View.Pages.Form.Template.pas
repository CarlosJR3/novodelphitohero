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
    DelphiToHero.View.Styles.Colors,
    RESTRequest4D;

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


    [ComponentBindStyle(COLOR_BACKGROUND_TOP, FONT_H5, FONT_COLOR3, FONT_NAME)]
    PnlMainTopBodySearchLine: TPanel;


    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
    PnlTopBody: TPanel;

     [ComponentBindStyle(clBtnFace, FONT_H2, FONT_COLOR3, FONT_NAME)]
     lblTitle: TLabel;



   [ComponentBindStyle(clBtnFace, FONT_H6, COLOR_BACKGROUND_TOP, FONT_NAME)]
      lblSearch: TLabel;


    [conentBindStyle(COLOR_BACKGROUND, FONT_H5, COLOR_BACKGROUND_TOP, FONT_NAME)]
        EditSearch: TEdit;

    [conentBindStyle(COLOR_BACKGROUND, FONT_H5, Font_color4, FONT_NAME)]
    DBGrid1: TDBGrid;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    SpeedButton1: TSpeedButton;



    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    SpeedButton2: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    SpeedButton3: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    SpeedButton4: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    SpeedButton5: TSpeedButton;

    ImageList1: TImageList;
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
    procedure GetEndPoint;
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
  lblTitle.Caption := FTitle;
  PnlMainbodyDeltaForm.Visible := False;


   lblTitle.Font.Size :=FONT_H5;
   LblTitle.Font.Color :=FONT_COLOR3;
   lblTitle.Font.Name :='segoe UI';



       lblSearch.Font.Size := FONT_H6;
       lblSearch.Font.Color := FONT_COLOR3;
       LblSearch.Font.Name := 'segoe UI';



         EditSearch.Font.Size := FONT_H5;
         EditSearch.Font.Color :=  COLOR_BACKGROUND_TOP;
         EditSearch.Color := COLOR_BACKGROUND;




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
       GetEndPoint;
end;

procedure TFormTemplate.GetEndPoint;
begin
    TRequest
    .New
    .BaseURL('http://localhost:9000' + FEndPoint )
    .Accept('application/json')
    .DataSetAdapter(FDMenTablel)
    .Get;
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
