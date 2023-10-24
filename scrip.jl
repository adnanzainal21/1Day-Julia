# Program untuk menghitung nilai rata-rata mahasiswa

# Mengumpulkan jumlah data yang akan dihitung rata-ratanya
jumlah_data = parse(Int, readline())
nilai_mahasiswa = zeros(jumlah_data)

# Memasukkan nilai-nilai mahasiswa ke dalam array
for i in 1:jumlah_data
    print("Masukkan nilai mahasiswa ke-", i, ": ")
    nilai_mahasiswa[i] = parse(Float64, readline())
end

# Menghitung rata-rata
total_nilai = sum(nilai_mahasiswa)
rata_rata = total_nilai / jumlah_data

# Menampilkan hasil
println("Nilai rata-rata mahasiswa adalah: ", rata_rata)
