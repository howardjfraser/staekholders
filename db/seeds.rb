Post.destroy_all
Stakeholder.destroy_all
User.destroy_all

32.times do
  title = Faker::Lorem.sentence(word_count: 4)
  body = Faker::Lorem.paragraphs(number: 2)
  Post.create! title: title, body: "<p>#{body.join('</p><p>')}</p>"
end

16.times do
  name = "#{Faker::Name.first_name} #{Faker::Name.unique.last_name}"
  party = Stakeholder::PARTIES.sample
  faction = Stakeholder::FACTIONS.sample
  Stakeholder.create! name: name, party: party, faction: faction
end

User.create! name: 'howard'
