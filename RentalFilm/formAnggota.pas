unit formAnggota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tform_anggota = class(TForm)
    panelAnggota: TPanel;
    lblKodeAnggota: TLabel;
    lblNama: TLabel;
    lblPekerjaan: TLabel;
    lblAlamat: TLabel;
    lblHP: TLabel;
    txtKode: TEdit;
    txtNama: TEdit;
    txtPekerjaan: TEdit;
    txtAlamat: TEdit;
    txtHP: TEdit;
    btnSave: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    btnClear: TButton;
    procedure TekanEnter(Sender: TObject; var Key: Char);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_anggota: Tform_anggota;

implementation

uses
  dataModulDB, formDashboard;

{$R *.dfm}

procedure Tform_anggota.btnClearClick(Sender: TObject);
begin
  txtKode.Clear;
  txtNama.Clear;
  txtPekerjaan.Clear;
  txtAlamat.Clear;
  txtHP.Clear;
  txtKode.SetFocus;
end;

procedure Tform_anggota.btnDeleteClick(Sender: TObject);
begin
  if ((Trim(txtKode.Text) = '') and (Trim(txtNama.Text) = '') and
    (Trim(txtPekerjaan.Text) = '') and (Trim(txtAlamat.Text) = '') and
    (Trim(txtHP.Text) = '')) then
  begin
    Beep;
    MessageDlg('Silakan pilih data terlebih dahulu', TMsgDlgType.mtInformation,
      [TMsgDlgBtn.mbOK], 0);
    Self.Close;
    form_dashboard.pageControlBottom.ActivePage :=
      form_dashboard.tabInfoAnggota;
    Exit;
  end
  else
  begin
    if MessageDlg('Apakah anda yakin menghapus data ini?',
      TMsgDlgType.mtInformation, [TMsgDlgBtn.mbNo, TMsgDlgBtn.mbOK], 0) = mrOk
    then
    begin
      with myDataModule do
      begin
        queryAnggota_.Delete;
        MessageDlg('Data berhasil dihapus', TMsgDlgType.mtInformation,
          [TMsgDlgBtn.mbOK], 0);
        btnClearClick(Sender);
      end
    end
    else
      Exit;
  end
end;

procedure Tform_anggota.btnEditClick(Sender: TObject);
begin
  if ((Trim(txtKode.Text) = '') and (Trim(txtNama.Text) = '') and
    (Trim(txtPekerjaan.Text) = '') and (Trim(txtAlamat.Text) = '') and
    (Trim(txtHP.Text) = '')) then
  begin
    Beep;
    MessageDlg('Silakan pilih data terlebih dahulu', TMsgDlgType.mtInformation,
      [TMsgDlgBtn.mbOK], 0);
    Self.Close;
    form_dashboard.pageControlBottom.ActivePage :=
      form_dashboard.tabInfoAnggota;
    Exit;
  end
  else
  begin
    if MessageDlg('Apakah anda yakin mengubah data ini?',
      TMsgDlgType.mtInformation, [TMsgDlgBtn.mbNo, TMsgDlgBtn.mbOK], 0) = mrOk
    then
    begin
      with myDataModule do
      begin
        queryAnggota_.Edit;
        queryAnggota_id.AsString := txtKode.Text;
        queryAnggota_nama.AsString := txtNama.Text;
        queryAnggota_pekerjaan.AsString := txtPekerjaan.Text;
        queryAnggota_alamat.AsString := txtAlamat.Text;
        queryAnggota_telp.AsString := txtHP.Text;
        queryAnggota_.Post;
        MessageDlg('Data berhasil diubah', TMsgDlgType.mtInformation,
          [TMsgDlgBtn.mbOK], 0);
      end
    end
    else
      Exit;
  end
end;

procedure Tform_anggota.btnSaveClick(Sender: TObject);
begin
  if Trim(txtKode.Text) = '' then
  begin
    Beep;
    MessageDlg('Kode anggota waib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtKode.SetFocus;
  end
  else if Trim(txtNama.Text) = '' then
  begin
    Beep;
    MessageDlg('Nama anggota wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtNama.SetFocus;
  end
  else if Trim(txtPekerjaan.Text) = '' then
  begin
    Beep;
    MessageDlg('Pekerjaan anggota wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtPekerjaan.SetFocus;
  end
  else if Trim(txtAlamat.Text) = '' then
  begin
    Beep;
    MessageDlg('Alamat anggota wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtAlamat.SetFocus;
  end
  else if Trim(txtHP.Text) = '' then
  begin
    Beep;
    MessageDlg('No Telepon wajib diisi', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbNo], 0);
    txtHP.SetFocus;
  end
  else if myDataModule.queryAnggota_.Locate('id', txtKode.Text, []) then
  begin
    Beep;
    MessageDlg('ID Anggota sudah terdaftar', TMsgDlgType.mtInformation,
      [TMsgDlgBtn.mbOK], 0);
    txtNama.Text := myDataModule.queryAnggota_nama.AsString;
    txtPekerjaan.Text := myDataModule.queryAnggota_pekerjaan.AsString;
    txtAlamat.Text := myDataModule.queryAnggota_alamat.AsString;
    txtHP.Text := myDataModule.queryAnggota_telp.AsString;
  end

  else
  begin
    with myDataModule do
    begin
      // Simpan Data
      // Cara 1: List langsung dari Query (Lebih aman)
      queryAnggota_.Append;
      queryAnggota_id.AsString := txtKode.Text;
      queryAnggota_nama.AsString := txtNama.Text;
      queryAnggota_pekerjaan.AsString := txtPekerjaan.Text;
      queryAnggota_alamat.AsString := txtAlamat.Text;
      queryAnggota_telp.AsString := txtHP.Text;
      queryAnggota_.Post;

      // Cara 2: FieldByName
      // zQueryAnggota.Append;
      // zQueryAnggota.FieldByName('id').AsString := txtKode.Text;
      // zQueryAnggota.FieldByName('nama').AsString := txtNama.Text;
      // zQueryAnggota.FieldByName('pekerjaan').AsString := txtPekerjaan.Text;
      // zQueryAnggota.FieldByName('alamat').AsString := txtAlamat.Text;
      // zQueryAnggota.FieldByName('telp').AsString := txtHP.Text;
      // zQueryAnggota.Post;

      // Cara 3: Fields
      // zQueryAnggota.Append;
      // zQueryAnggota.Fields[0].AsString := txtKode.Text;
      // zQueryAnggota.Fields[1].AsString := txtNama.Text;
      // zQueryAnggota.Fields[2].AsString := txtPekerjaan.Text;
      // zQueryAnggota.Fields[3].AsString := txtAlamat.Text;
      // zQueryAnggota.Fields[4].AsString := txtHP.Text;
      // zQueryAnggota.Post;

      // Cara 4: Variant
      // zQueryAnggota.Append;
      // zQueryAnggota.FieldValues['id'] := txtKode.Text;
      // zQueryAnggota.FieldValues['nama'] := txtNama.Text;
      // zQueryAnggota.FieldValues['pekerjaan'] := txtPekerjaan.Text;
      // zQueryAnggota.FieldValues['alamat'] := txtAlamat.Text;
      // zQueryAnggota.FieldValues['telp'] := txtHP.Text;
      // zQueryAnggota.Post;

      MessageDlg('Data berhasil disimpan', TMsgDlgType.mtInformation,
        [TMsgDlgBtn.mbOK], 0);
      Self.Close;
      form_dashboard.pageControlBottom.ActivePage :=
        form_dashboard.tabInfoAnggota;

    end;

  end;;

end;

procedure Tform_anggota.TekanEnter(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
  begin
    if Sender = txtKode then
      txtNama.SetFocus;
    if Sender = txtNama then
      txtPekerjaan.SetFocus;
    if Sender = txtPekerjaan then
      txtAlamat.SetFocus;
    if Sender = txtAlamat then
      txtHP.SetFocus;
    if Sender = txtHP then
      txtKode.SetFocus;
  end;

end;

end.
