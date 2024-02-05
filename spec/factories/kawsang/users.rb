# == Schema Information
#
# Table name: kawsang_users
#
#  id                     :uuid             not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  role                   :integer
#  actived                :boolean          default(TRUE)
#  deleted_at             :datetime
#  locale                 :string
#  sign_in_type           :integer          default("system")
#  otp_token              :string
#  otp_sent_at            :datetime
#  tg_username            :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
FactoryBot.define do
  factory :user, class: "Kawsang::User" do
    email         { FFaker::Internet.email }
    password      { FFaker::Internet.password }
    role          { "primary_admin" }
    confirmed_at  { DateTime.now }

    trait :admin do
      role { "admin" }
    end
  end
end
