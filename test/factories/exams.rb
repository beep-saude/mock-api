FactoryBot.define do
  factory :exam, class: 'Exam' do
    name { Faker::Name.name  }
    tuss { Faker::Code.imei }
  end
end
