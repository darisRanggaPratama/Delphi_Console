import csv
import mysql.connector
from mysql.connector import Error

def read_csv(file_path):
    data = []
    with open(file_path, 'r') as file:
        csv_reader = csv.reader(file, delimiter=';')
        next(csv_reader)  # Skip header row
        for row in csv_reader:
            # Pastikan setiap baris memiliki 5 kolom
            if len(row) != 5:
                print(f"Peringatan: Baris {row} tidak memiliki 5 kolom. Melewati baris ini.")
                continue
            data.append(row)
    return data

def insert_data(connection, data):
    try:
        cursor = connection.cursor()
        query = """INSERT INTO anggota (id, nama, pekerjaan, alamat, telp) 
                   VALUES (%s, %s, %s, %s, %s)"""
        cursor.executemany(query, data)
        connection.commit()
        print(f"{cursor.rowcount} record(s) inserted successfully")
    except Error as e:
        print(f"Error inserting data: {e}")
        # Tambahkan informasi debug
        if data:
            print(f"Sample data: {data[0]}")
        print(f"Query: {query}")

def main():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            port=3306,
            user='rangga',
            password='rangga',
            database='rentaldvd'
        )

        if connection.is_connected():
            print("Successfully connected to MySQL database")

            # Baca data dari file CSV
            csv_file_path = 'library\\upload\\anggota_import.csv'  # Sesuaikan path file jika diperlukan
            data = read_csv(csv_file_path)

            if not data:
                print("Tidak ada data valid yang dibaca dari file CSV.")
                return

            # Masukkan data ke database
            insert_data(connection, data)

    except Error as e:
        print(f"Error connecting to MySQL: {e}")
    finally:
        if 'connection' in locals() and connection.is_connected():
            connection.close()
            print("MySQL connection is closed")

  
if __name__ == "__main__":
    main()