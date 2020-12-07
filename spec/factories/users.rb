FactoryBot.define do
  factory :user do
    email { 'hoge@example.com' }
    nickname { 'aaaa' }
    last_name { 'hoge' }
    first_name { 'hoge' }
    last_name_kana { 'hoge' }
    first_name_kana { 'hoge' }
    sex_id { 2 }
    age { 99 }
    kitchen_id { 2 }
    hole_id { 1 }
  end
end