program Basic_Case;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  angka: integer;
  nilai: Char;

begin
  try
    // Meminta input dari user
    Write('Masukkan nilai (0-100): ');
    ReadLn(angka);

    // Memeriksa rentang nilai dan menentukan grade
    if (angka < 0) or (angka > 100) then
    begin
      WriteLn('Error: Nilai harus berada dalam rentang 0 hingga 100.');
    end
    else
    begin
      case angka of
        90 .. 100:
          nilai := 'A';
        80 .. 89:
          nilai := 'B';
        70 .. 79:
          nilai := 'C';
        60 .. 69:
          nilai := 'D';
        50 .. 59:
          nilai := 'E';
        0 .. 49:
          nilai := 'F';
      else
        nilai := '?';
        // Ini tidak akan pernah terjadi karena sudah diverifikasi sebelumnya
      end;

      // Menampilkan hasil grade
      WriteLn('Nilai ', angka, ' mendapatkan grade ', nilai, '.');
    end;
  except
    on E: Exception do
      WriteLn('Terjadi kesalahan: ', E.Message);
  end;

  // Menunggu input sebelum menutup konsol
  Write('Tekan Enter untuk keluar...');
  ReadLn;

end.
