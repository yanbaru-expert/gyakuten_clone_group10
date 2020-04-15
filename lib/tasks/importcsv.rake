namespace :importcsv do

require 'import.rb'

  desc "Import All Csv Data"

  task all: :environment do

    # 登録レコードの削除
    Movie.destroy_all
    Question.destroy_all
    AwsText.destroy_all
    Line.destroy_all

    # レコードの登録
    Movie.create!(Import.csv_data(path: 'db/csv_data/movie_data.csv'))
    Question.create!(Import.csv_data(path: 'db/csv_data/question_data.csv'))
    AwsText.create!(Import.csv_data(path: 'db/csv_data/aws_text_data.csv'))
    Line.create!(Import.csv_data(path: 'db/csv_data/line_data.csv'))
  end

  desc "Import Movie Csv Data"

  task movie: :environment do
    Movie.destroy_all
    Movie.create!(Import.csv_data(path: 'db/csv_data/movie_data.csv'))
  end

  desc "Import Question Csv Data"

  task question: :environment do
    Question.destroy_all
    Question.create!(Import.csv_data(path: 'db/csv_data/question_data.csv'))
  end

  desc "Import AwsText Csv Data"

  task awstext: :environment do
    AwsText.destroy_all
    AwsText.create!(Import.csv_data(path: 'db/csv_data/aws_text_data.csv'))
  end

  desc "Import Line Csv Data"

  task line: :environment do
    Line.destroy_all
    Line.create!(Import.csv_data(path: 'db/csv_data/line_data.csv'))
  end

end
