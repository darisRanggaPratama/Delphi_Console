unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm_Main = class(TForm)
    connectSQL: TFDConnection;
    ContactsTable: TFDQuery;
    cont_id: TFDAutoIncField;
    cont_fname: TWideStringField;
    cont_mname: TWideStringField;
    cont_maidenname: TWideStringField;
    cont_lname: TWideStringField;
    cont_address1: TWideStringField;
    cont_address2: TWideStringField;
    cont_city: TWideStringField;
    cont_state: TWideStringField;
    cont_zip: TWideStringField;
    cont_phone: TWideStringField;
    cont_email: TWideStringField;
    cont_notes: TWideStringField;
    lbl_fname: TLabel;
    txt_fname: TDBEdit;
    dsContact: TDataSource;
    lbl_mname: TLabel;
    txt_mname: TDBEdit;
    lbl_maidenname: TLabel;
    txt_maidenname: TDBEdit;
    lbl_lname: TLabel;
    txt_lname: TDBEdit;
    lbl_address1: TLabel;
    txt_address1: TDBEdit;
    lbl_address2: TLabel;
    txt_address2: TDBEdit;
    lbl_city: TLabel;
    txt_city: TDBEdit;
    lbl_state: TLabel;
    txt_state: TDBEdit;
    lbl_zip: TLabel;
    txt_zip: TDBEdit;
    lbl_phone: TLabel;
    txt_phone: TDBEdit;
    lbl_email: TLabel;
    txt_email: TDBEdit;
    lbl_notes: TLabel;
    txt_notes: TDBEdit;
    naviContact: TDBNavigator;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Main: TForm_Main;

implementation

{$R *.dfm}



procedure TForm_Main.FormCreate(Sender: TObject);
begin
ContactsTable.
                      ContactsTable.Open;
end;

end.
