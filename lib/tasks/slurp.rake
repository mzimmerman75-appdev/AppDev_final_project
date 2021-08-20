namespace :slurp do
  desc "TODO"
  task transactions: :environment do
  
  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "cpu_data.csv"))
  #puts csv_text
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

  csv.each do |row|
    t = Transaction.new
    t.cpu_id = row["cpu_id"]
    t.part = row["type"]
    t.brand = row["brand"]
    t.name = row["name"]
    t.item_number = row["item_number"]
    t.price = row["price"]
    t.cores = row["cores"]
    t.threads = row["threads"]
    t.base_clock = row["base_clock"]
    t.boost_clock = row["boost_clock"]
    t.l3_cache = row["l3_cache"]
    t.socket = row["socket"]
    t.link = row["link"]
    t.image = row["image"]
    
    t.save

  
  end

end
