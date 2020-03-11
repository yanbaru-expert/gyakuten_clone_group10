namespace :importcsv do

  desc "Import Csv Data"

  task movie: :environment do
    list = []
    CSV.foreach('db/csv_data/movie_data.csv', headers: true) do |row|
      list << {
        title: row["title"],
        url: row["url"]
      }
    end
    Movie.create(list)
  end



end
