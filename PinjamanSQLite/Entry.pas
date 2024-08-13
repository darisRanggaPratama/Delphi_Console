unit Entry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformEntry = class(TForm)
    lblKode: TLabel;
    txtKode: TEdit;
    lblNIK: TLabel;
    txtNIK: TEdit;
    lblNama: TLabel;
    txtNama: TEdit;
    lblPeriode: TLabel;
    txtPeriode: TEdit;
    lblAngsur: TLabel;
    txtAngsur: TEdit;
    lblUtang: TLabel;
    txtUtang: TEdit;
    lblBayar: TLabel;
    txtBayar: TEdit;
    lblSaldo: TLabel;
    txtSaldo: TEdit;
    btnSave: TButton;
    btnEdit: TButton;
    btnClear: TButton;
    btnDelete: TButton;
    procedure btnClearClick(Sender: TObject);
    procedure txtKodeKeyPress(Sender: TObject; var Key: Char);
    procedure txtKodeDblClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formEntry: TformEntry;

implementation

uses
  DataModuleDB, MainForm;

{$R *.dfm}

procedure TformEntry.btnClearClick(Sender: TObject);
begin
  txtKode.Clear;
  txtNIK.Clear;
  txtNama.Clear;
  txtPeriode.Clear;
  txtAngsur.Clear;
  txtUtang.Clear;
  txtBayar.Clear;
  txtSaldo.Clear;
  txtKode.SetFocus;
end;

procedure TformEntry.btnSaveClick(Sender: TObject);
begin
  if Trim(txtKode.Text) = '' then
  begin
    Beep;
    MessageDlg('Kode Pinjaman wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtKode.SetFocus;
  end
  else if Trim(txtNIK.Text) = '' then
  begin
    Beep;
    MessageDlg('ID Karyawan wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtNIK.SetFocus;
  end
  else if Trim(txtNama.Text) = '' then
  begin
    Beep;
    MessageDlg('Nama Karyawan wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtNama.SetFocus;
  end
  else if Trim(txtPeriode.Text) = '' then
  begin
    Beep;
    MessageDlg('Periode Pinjaman wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtPeriode.SetFocus;
  end
  else if Trim(txtAngsur.Text) = '' then
  begin
    Beep;
    MessageDlg('Angsuran wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtAngsur.SetFocus;
  end
  else if Trim(txtUtang.Text) = '' then
  begin
    Beep;
    MessageDlg('Utang Pinjaman wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtUtang.SetFocus;
  end
  else if Trim(txtBayar.Text) = '' then
  begin
    Beep;
    MessageDlg('Pembayaran wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtBayar.SetFocus;
  end
  else if Trim(txtSaldo.Text) = '' then
  begin
    Beep;
    MessageDlg('Saldo Pinjaman wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtSaldo.SetFocus;
  end
  else if myDataModule.qAngsur_.Locate('id_pinjam', txtKode.Text, []) then
  begin
    Beep;
    MessageDlg('Kode Pinjaman sudah terdaftar', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbOK], 0);
    txtNIK.Text := myDataModule.qAngsur_nik.AsString;
    txtNama.Text := myDataModule.qAngsur_nama.AsString;
    txtPeriode.Text := myDataModule.qAngsur_periode.AsString;
    txtAngsur.Text := IntToStr(myDataModule.qAngsur_angsuran.AsInteger);
    txtUtang.Text := IntToStr(myDataModule.qAngsur_utang.AsInteger);
    txtBayar.Text := IntToStr(myDataModule.qAngsur_bayar.AsInteger);
    txtSaldo.Text := IntToStr(myDataModule.qAngsur_saldo.AsInteger);
  end
  else
  begin
    with myDataModule do
    begin
      qAngsur_.Append;
      qAngsur_idPinjam.AsString := txtKode.Text;
      qAngsur_nik.AsString := txtNIK.Text;
      qAngsur_nama.AsString := txtNama.Text;
      qAngsur_periode.AsString := txtPeriode.Text;
      qAngsur_angsuran.AsInteger := StrToInt(txtAngsur.Text);
      qAngsur_utang.AsInteger := StrToInt(txtUtang.Text);
      qAngsur_bayar.AsInteger := StrToInt(txtBayar.Text);
      qAngsur_saldo.AsInteger := StrToInt(txtSaldo.Text);
      qAngsur_.Post;

      MessageDlg('Save record successfully', TMsgDlgType.mtInformation,
        [TMsgDlgBtn.mbOK], 0);
      btnClearClick(Sender);
      Self.Close;
      formHome.pageHome.ActivePage := formHome.tabData;
    end;

  end;;
end;

procedure TformEntry.txtKodeDblClick(Sender: TObject);
begin
  if myDataModule.qAngsur_.Locate('id_pinjam', txtKode.Text, []) then
  begin
    Beep;
    MessageDlg('Kode Pinjaman ditampilkan', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbOK], 0);
    txtNIK.Text := myDataModule.qAngsur_nik.AsString;
    txtNama.Text := myDataModule.qAngsur_nama.AsString;
    txtPeriode.Text := myDataModule.qAngsur_periode.AsString;
    txtAngsur.Text := IntToStr(myDataModule.qAngsur_angsuran.AsInteger);
    txtUtang.Text := IntToStr(myDataModule.qAngsur_utang.AsInteger);
    txtBayar.Text := IntToStr(myDataModule.qAngsur_bayar.AsInteger);
    txtSaldo.Text := IntToStr(myDataModule.qAngsur_saldo.AsInteger);
  end;
end;

procedure TformEntry.txtKodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
  begin
    if Sender = txtKode then
      txtNIK.SetFocus;
    if Sender = txtNIK then
      txtNama.SetFocus;

    if Sender = txtNama then
      txtPeriode.SetFocus;
    if Sender = txtPeriode then
      txtAngsur.SetFocus;

    if Sender = txtAngsur then
      txtUtang.SetFocus;
    if Sender = txtUtang then
      txtBayar.SetFocus;

    if Sender = txtBayar then
      txtSaldo.SetFocus;
    if Sender = txtSaldo then
      txtKode.SetFocus;
  end;
end;

end.
