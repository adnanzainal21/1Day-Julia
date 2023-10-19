function  hitung_load(devices)
    total_load=0
    for device in devices
        load = device["power"] * device["quantity"]
        total_load += load
end
return total_load
end

devices_data = [
    Dict("name" => "Lampu", "power" => 40, "quantity" => 4),
    Dict("name" => "Kipas Angin", "power" => 70, "quantity" => 2),
    Dict("name" => "Televisi", "power" => 150, "quantity" => 1),
]

# Menghitung beban listrik total
total_load = hitung_load(devices_data)

println("Beban listrik total: ", total_load, " Watt")