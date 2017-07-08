FactoryGirl.define do
  factory :user do
    email 'udai@email.com'
    password 'password'
  end

  factory :admin, class: User do
    email 'admin@admin.com'
    password 'password'
    admin true
  end

  factory :service, class: Service do
    name "Wedding session"
    description "description"
    price "150$"
    image "https://static1.squarespace.com/static/56b8dc4e2fe13108a3df36f4/t/5727c29a22482eff47d074fb/1462223515686/w1.jpg?format=2500w"
  end

  factory :review, class: Service do
    author "sowmya"
    body "test content"
  end
end
