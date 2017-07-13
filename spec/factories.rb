require 'faker'

image_rand = [
  "http://file.weddingchicks.com/446824_day-after-wedding-session-pose-ideas.jpg",
  "http://www.ericacourtinephotography.com/img/s/v-3/p1126024922-4.jpg",
  "https://s-media-cache-ak0.pinimg.com/736x/52/b1/56/52b156678b8c29b5628d060b6db0c316--styling-tools-food-styling.jpg",
  "http://www.lifeandlensblog.com/wp-content/uploads/2016/03/EGMPhotography0-794x529.jpg"
]


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
    name Faker::Name.name
    description Faker::Hipster.sentences.join(' ')
    price Faker::Commerce.price
    image File.join(image_rand.sample)

  end

  factory :review, class: Service do
    author "sowmya"
    body "test content"
  end
end
