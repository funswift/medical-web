# == Schema Information
#
# Table name: user_profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  username   :string
#  nickname   :string
#  avatar     :string
#  intro      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :user_profile do
    sequence(:username) { |n| "koume-#{n}" }
    nickname "zombie lover"
    avatar "zombieee"
    intro "I love zombie💓"
  end
end
