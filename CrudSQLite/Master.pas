unit Master;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, FireDAC.Comp.DataSet,
  Data.Bind.Components, Data.Bind.Grid, Vcl.Grids, Data.Bind.DBScope, Vcl.Menus,
  Vcl.StdCtrls;

type
  Tform_master = class(TForm)
    connectSQLite: TFDConnection;
    BindSourceMaster: TBindSourceDB;
    tableMaster: TFDTable;
    strGridMaster: TStringGrid;
    linkGridMaster: TLinkGridToDataSource;
    bindListMaster: TBindingsList;
    tableMaster_id: TFDAutoIncField;
    tableMaster_kode: TWideMemoField;
    tableMaster_nama: TWideMemoField;
    lblKode: TLabel;
    lblNama: TLabel;
    txtKode: TEdit;
    txtNama: TEdit;
    btnSave: TButton;
    btnAdd: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    menuMaster: TMainMenu;
    ransaksi1: TMenuItem;
    menu_formPenjualan: TMenuItem;
    procedure menu_formPenjualanClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_master: Tform_master;

implementation

uses
  Transaksi;

{$R *.dfm}

procedure Tform_master.btnAddClick(Sender: TObject);
begin
  tableMaster.Append;
  tableMaster_kode.AsString := txtKode.Text;
  tableMaster_nama.AsString := txtNama.Text;
  tableMaster.Post;
  tableMaster.Refresh;
  txtKode.Clear;
  txtNama.Clear;
end;

procedure Tform_master.btnDeleteClick(Sender: TObject);
begin
  tableMaster.Delete;
end;

procedure Tform_master.btnSaveClick(Sender: TObject);
begin
  tableMaster.Edit;
  tableMaster_kode.AsString := txtKode.Text;
  tableMaster_nama.AsString := txtNama.Text;
  tableMaster.Post;
  txtKode.Clear;
  txtNama.Clear;
end;

procedure Tform_master.btnUpdateClick(Sender: TObject);
begin
  txtKode.Text := tableMaster_kode.AsString;
  txtNama.Text := tableMaster_nama.AsString;
end;

procedure Tform_master.menu_formPenjualanClick(Sender: TObject);
begin
  form_transaksi.Show;
end;

end.
