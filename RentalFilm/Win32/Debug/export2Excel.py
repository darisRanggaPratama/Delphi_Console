import mysql.connector
from openpyxl import Workbook

# Koneksi ke database MySQL
db = mysql.connector.connect(
    host="localhost",
    port=3306,
    user="rangga",
    password="rangga",
    database="rentaldvd"
)

cursor = db.cursor()

# Mengambil data dari tabel 'anggota'

cursor.execute("SELECT * FROM anggota")
results = cursor.fetchall()

# Membuat file Excel baru
workbook = Workbook()
sheet = workbook.active

# Menambahkan header kolom
sheet.append(["ID", "Name", "Pekerjaan", "Alamat", "HP"])

# Menambahkan data dari hasil query ke sheet Excel
for row in results:
    sheet.append(row)

# Menyimpan file Excel
workbook.save("data_anggota.xlsx")

# Menutup koneksi
cursor.close()
db.close()

