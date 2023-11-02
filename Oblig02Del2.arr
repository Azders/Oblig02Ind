include gdrive-sheets
include shared-gdrive("dcic-2021", "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
cData = 
  load-table: komponent :: String, energi :: String
  source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end

# Forskjellige variabler for utregning
#KM
distance-travelled-per-day = 30 
#KM
distance-per-unit-of-fuel = 5
#KWH
energy-per-unit-of-fuel = 10

# Funksjon for energy-per-day
energy-per-day = num-round(distance-travelled-per-day
    / distance-per-unit-of-fuel)
  * energy-per-unit-of-fuel


# Funksjon for å endre energi-kolonne fra bokstav til tall
fun energi-to-number(str :: String) -> Number:
  doc: "Når string ikke er et tall, sett til 0"
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => energy-per-day
  end
where:
  energi-to-number("") is energy-per-day
  energi-to-number("48") is 48
end

# Endrer kolonnen energi til tall med funksjonen energi-to-number
transform-cData = 
  transform-column(cData, "energi", energi-to-number)

# Summerer tall for energi forbruk
kolonnesummert = 
  sum(transform-cData, "energi")

# Legger til totalsum i table
cDatasummert = table: komponent :: String, energi :: Number
  row: "Sum energiforbruk", kolonnesummert
end

# Lagrer funksjonen for bar chart i en variabel
cDataBarChart =
  bar-chart(transform-cData, "komponent", "energi")

# Printer table, nå også inkludert med row for oppsummering.
cDataBarChart
komplettrow = get-row(cDatasummert, 0)
add-row(transform-cData, komplettrow)