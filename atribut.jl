# Definisikan tipe data Siswa menggunakan struktur
struct Siswa
    nama::String
    usia::Int
    nilai::Dict{String, Int}
end

# Buat objek Siswa
siswa1 = Siswa("Adnan", 18, Dict("Matematika" => 85, "Fisika" => 92, "Kimia" => 78))
siswa2 = Siswa("Lisa", 17, Dict("Matematika" => 91, "Fisika" => 88, "Kimia" => 94))

# Akses atribut objek
println("Data Siswa 1:")
println("Nama: ", siswa1.nama)
println("Usia: ", siswa1.usia)
println("Nilai Matematika: ", siswa1.nilai["Matematika"])
println("Nilai Fisika: ", siswa1.nilai["Fisika"])
println("Nilai Kimia: ", siswa1.nilai["Kimia"])

println("\nData Siswa 2:")
println("Nama: ", siswa2.nama)
println("Usia: ", siswa2.usia)
println("Nilai Matematika: ", siswa2.nilai["Matematika"])
println("Nilai Fisika: ", siswa2.nilai["Fisika"])
println("Nilai Kimia: ", siswa2.nilai["Kimia"])
