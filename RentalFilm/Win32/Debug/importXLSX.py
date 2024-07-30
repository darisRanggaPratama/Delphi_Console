import mysql.connector
import pandas as pd
from mysql.connector import Error


def create_connection():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            port=3306,
            user='rangga',
            password='rangga',
            database='rentaldvd'
        )
        print("Koneksi ke MySQL berhasil")
        return connection
    except Error as e:
        print(f"Error: {e}")
        return None


def insert_data(connection, data):
    cursor = connection.cursor()
    query = """INSERT INTO anggota (id, nama, pekerjaan, alamat, telp) 
               VALUES (%s, %s, %s, %s, %s)"""

    try:
        cursor.executemany(query, data)
        connection.commit()
        print(f"{cursor.rowcount} baris berhasil dimasukkan.")
    except Error as e:
        print(f"Error: {e}")
    finally:
        cursor.close()


def read_excel(file_path):
    try:
        df = pd.read_excel(file_path)
        return df.values.tolist()
    except Exception as e:
        print(f"Error membaca file Excel: {e}")
        return None


def main():
    connection = create_connection()
    if connection is None:
        return

    excel_file = 'library\\upload\\anggota_import.xlsx'  # Ganti dengan path file Excel Anda
    data = read_excel(excel_file)

    if data:
        insert_data(connection, data)
    else:
        print("Gagal membaca data dari file Excel.")
    
    connection.close()


if __name__ == "__main__":
    main()