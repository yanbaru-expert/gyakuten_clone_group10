namespace :importcsv do

  desc "Import Movie Csv Data"

  task movie: :environment do
    list = []
    CSV.foreach('db/csv_data/movie_data.csv', headers: true) do |row|
      list << {
        genre: row["genre"],
        title: row["title"],
        url: row["url"]
      }
    end
    Movie.create!(list)
  end

  desc "Import Question Csv Data"

  task question: :environment do
    list = []
    CSV.foreach('db/csv_data/question_data.csv', headers: true) do |row|
      list << {
        title: row["title"],
        detail: row["detail"]
      }
    end
    Question.create!(list)
  end

  desc "Import AwsText Csv Data"

  task awstext: :environment do
    list = []
    CSV.foreach('db/csv_data/aws_text_data.csv', headers: true) do |row|
      list << {
        title: row["title"],
        content: row["content"]
      }
    end
    AwsText.create!(list)
  end

  desc "Import Line Csv Data"

  task line: :environment do
    list = []
    CSV.foreach('db/csv_data/line_data.csv', headers: true) do |row|
      list << {
        genre: row["genre"],
        title: row["title"],
        content: row["content"]
      }
    end
    Line.create!(list)
  end

end
