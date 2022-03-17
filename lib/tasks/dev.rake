namespace :dev do
  desc "configura o ambiente de desenvolvimento"
  task setup: :environment do
    #gerar 100 contacts fake
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email:Faker::Internet.email,
        birthdate: Faker::Date.between(from: '1956-09-23', to: '2000-09-25')
      )
    end
  end

end
