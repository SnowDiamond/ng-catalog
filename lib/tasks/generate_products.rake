namespace :generate do
  desc "Генерация тестовых товаров"
  task :product => :environment do
    Product.destroy_all
    50.times do
      Product.create do |p|
        p.title = Faker::Commerce.product_name
        p.price = rand 100..1000
        p.description = Faker::Company.catch_phrase
        p.photo = 'no.gif'
      end
    end
  end
end