# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  email                        :string           default(""), not null
#  encrypted_password           :string           default(""), not null
#  reset_password_token         :string
#  reset_password_sent_at       :datetime
#  remember_created_at          :datetime
#  first_name                   :string
#  last_name                    :string
#  preferred_name               :string
#  class_year                   :string
#  current_employer             :string
#  current_position             :string
#  current_position_description :string
#  current_position_function    :string
#  current_city                 :string
#  current_country              :string
#  nationality                  :string
#  service_branch               :string
#  preferred_email              :string
#  linkedin_profile             :string
#  profile_picture_link         :string
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
