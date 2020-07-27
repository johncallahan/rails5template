class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :masqueradable, :database_authenticatable, :confirmable, :async, :registerable, :recoverable, :rememberable, :validatable, :omniauthable
  devise :masqueradable, :database_authenticatable, :omniauthable, :confirmable, :lockable, :timeoutable, :recoverable, :registerable

  has_person_name

  has_many :notifications, foreign_key: :recipient_id
  has_many :services
end
