using CSV
using Statistics
using Plots

# Membaca data dari file CSV
data = CSV.File("data.csv")  # Ganti "data.csv" dengan nama file CSV Anda

# Menampilkan beberapa baris pertama data
println("Beberapa baris pertama data:")
show(data, allcols = true, allrows = true)

# Menghitung statistik deskriptif
println("Statistik deskriptif:")
println("Jumlah data: ", length(data))
println("Rata-rata: ", mean(data[:kolom_data]))
println("Median: ", median(data[:kolom_data]))
println("Deviasi Standar: ", std(data[:kolom_data]))

# Membuat histogram
histogram(data[:kolom_data], bins = 20, xlabel = "Nilai", ylabel = "Frekuensi", title = "Histogram Data")

# Menyimpan plot ke file gambar
savefig("histogram_data.png")

# Menampilkan plot
display(Plot)
