object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 452
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGridBindSourceDB1: TStringGrid
    Tag = 11
    Left = 8
    Top = 328
    Width = 81
    Height = 89
    ColCount = 11
    FixedCols = 0
    RowCount = 108
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object frxPreview1: TfrxPreview
    Left = 160
    Top = 8
    Width = 553
    Height = 297
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
  end
  object Button1: TButton
    Left = 208
    Top = 328
    Width = 105
    Height = 25
    Caption = 'SHowDesigner'
    TabOrder = 2
    OnClick = Button1Click
  end
  object StringGridBindSourceDB2: TStringGrid
    Tag = 1
    Left = 416
    Top = 328
    Width = 320
    Height = 120
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    TabOrder = 3
    ColWidths = (
      64)
  end
  object Ora_devConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=ora_dev')
    Connected = True
    LoginPrompt = False
    Left = 34
    Top = 30
  end
  object EmployeesTable: TFDQuery
    Active = True
    Connection = Ora_devConnection
    SQL.Strings = (
      'SELECT * FROM HR.EMPLOYEES')
    Left = 34
    Top = 78
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = EmployeesTable
    ScopeMappings = <>
    Left = 24
    Top = 136
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGridBindSourceDB1
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      GridControl = StringGridBindSourceDB2
      Columns = <>
    end
  end
  object frxReport1: TfrxReport
    Version = '6.3'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43533.828289421300000000
    ReportOptions.LastChange = 43533.828289421300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 240
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = EmployeesTable
    BCDToCurrency = False
    Left = 72
    Top = 240
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    OnSaveReport = frxDesigner1SaveReport
    Left = 352
    Top = 336
  end
  object Temp_blobTable: TFDQuery
    Active = True
    Connection = Ora_devConnection
    SQL.Strings = (
      'SELECT * FROM HR.TEMP_BLOB')
    Left = 226
    Top = 365
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = Temp_blobTable
    ScopeMappings = <>
    Left = 296
    Top = 368
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = Ora_devConnection
    SQL.Strings = (
      'select * from hr.temp_blob')
    Left = 128
    Top = 352
  end
end
