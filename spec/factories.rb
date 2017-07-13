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
    image { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }

  end

  factory :review, class: Service do
    author "sowmya"
    body "test content"
  end
end
