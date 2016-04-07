desc "Update Prices"
task :update_prices => :environment do
  puts "Updating Prices..."
  PriceUpdater.update
  puts "done."
end
