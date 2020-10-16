require 'csv'

international_beers = [
  { name: 'Guinness', style: 'Stout', origin: 'Ireland'},
  { name: 'Augustiner', style: 'Pale Lager', origin: 'Germany'},
  { name: 'Kölsch', style: 'Pale Ale', origin: 'Germany'},
  { name: 'Carling Black Label', style: 'Pale Lager', origin: 'South Africa'},
  { name: 'Asahi', style: 'Pale Lager', origin: 'Japan'},
  { name: 'Castle Lager', style: 'Pale Lager', origin: 'South Africa'},
  { name: 'Zambezi Lager', style: 'Pale Lager', origin: 'Zimbabwe'},
  { name: "Beck's", style: 'Pale Lager', origin: 'USA'},
  { name: 'Budweiser', style: 'Pale Lager', origin: 'USA'},
  { name: 'Kellerbier', style: 'Kellerbier', origin: 'Germany'}
]

zim_beers = [
  { name: 'Castle Lager', style: 'Pale Lager', origin: 'South Africa'},
  { name: 'Eagle Lager', style: 'Pale Lager', origin: 'Zimbabwe'},
  { name: 'Golden Pilsener', style: 'Pilsener', origin: 'Zimbabwe'},
  { name: 'Bohlingers', style: 'Pale Ale', origin: 'Zimbabwe'},
  { name: 'Zambezi Lager', style: 'Pale Lager', origin: 'Zimbabwe'},
  { name: 'Carling Black Label', style: 'Pale Lager', origin: 'South Africa'},
  { name: 'Castle Milk Stout', style: 'Stout', origin: 'South Africa'},
  { name: 'Lion Lager', style: 'Pale Lager', origin: 'South Africa'},
  { name: 'Castle', style: 'Pale Lager', origin: 'South Africa'},
  { name: 'Chibuku', style: 'Sorghum Beer', origin: 'Zimbabwe'}
]


def store_csv (filepath, csv_options, beer_list)
  CSV.open(filepath, 'wb', csv_options) do |csv|
    csv << ['Name', 'Style', 'Origin']

    beer_list.each do |beer|
      csv << [beer[:name], beer[:style], beer[:origin]]
    end
  end
end

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filename = 'data/zim_beers.csv'
store_csv(filename, csv_options, zim_beers)

# Output CSV - formatted to 3 columns in a 60-line width
line_width = 60
puts "List of Zimbabwean beers".center(line_width)
puts
CSV.foreach(filename) do |col|
  puts ("#{col[0]}".ljust(line_width/3) + 
    "#{col[1].ljust(15)}".center(line_width/3) + 
    "#{col[2]}" .ljust(line_width/3))
end

puts
puts "-------------------------------".center(line_width)
puts

# Output CSV as sentence - account for headers in CSV file
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filename, csv_options) do |row|
  puts "#{row['Name']}, a #{row['Style']} from #{row['Origin']}."
end
