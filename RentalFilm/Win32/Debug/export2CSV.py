import mysql.connector
import csv

# Konfigurasi koneksi database
db_config = {
    'host': 'localhost',
    'port': 3306,
    'user': 'rangga',
    'password': 'rangga',
    'database': 'rentaldvd'
}

# Nama file CSV output
output_file = 'anggota_export.csv'

# Koneksi ke database
try:
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    # Query untuk mengambil data dari tabel anggota
    query = "SELECT id, nama, pekerjaan, alamat, telp FROM anggota"
    cursor.execute(query)

    # Ambil semua data
    data = cursor.fetchall()

    # Tulis data ke file CSV
    with open(output_file, 'w', newline='') as csvfile:
        csv_writer = csv.writer(csvfile, delimiter=';')
        
        # Tulis header
        csv_writer.writerow(['ID', 'Nama', 'Pekerjaan', 'Alamat', 'Telp'])
        
        # Tulis data
        for row in data:
            csv_writer.writerow(row)

    print(f"Data berhasil diekspor ke {output_file}")

except mysql.connector.Error as err:
    print(f"Error: {err}")

finally:
    if 'conn' in locals() and conn.is_connected():
        cursor.close()
        conn.close()
        print("Koneksi database ditutup")