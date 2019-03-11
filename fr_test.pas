unit fr_test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxClass, frxDBSet, frxPreview, Vcl.StdCtrls, frxDesgn;

type
  TForm1 = class(TForm)
    Ora_devConnection: TFDConnection;
    EmployeesTable: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    StringGridBindSourceDB1: TStringGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    frxDBDataset1: TfrxDBDataset;
    Button1: TButton;
    frxDesigner1: TfrxDesigner;
    Temp_blobTable: TFDQuery;
    BindSourceDB2: TBindSourceDB;
    StringGridBindSourceDB2: TStringGrid;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
    function frxDesigner1SaveReport(Report: TfrxReport;
      SaveAs: Boolean): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    //frxReport1.ShowReport();
    //1.Create(self.frxReport1);
    frxReport1.DesignReport();
end;

function TForm1.frxDesigner1SaveReport(Report: TfrxReport;
  SaveAs: Boolean): Boolean;
var
  template: TStream;
begin
  template := TMemoryStream.Create;
  template.Position := 0;
  frxReport1.SaveToStream(template);
  //Reports.Edit;

  FDQuery1.Edit;

  try
    //Reports.DisableControls;


    FDQuery1.DisableControls;
    (FDQuery1.FieldByName('BLOB') as TBlobField).LoadFromStream(template);

    //(Reports.FieldByName('Report') as TBlobField).LoadFromStream(template);
    FDQuery1.Post;

    //Reports.Post;



  finally
    //Reports.EnableControls;
    FDQuery1.EnableControls;

  end;
end;

end.
