class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :masqueradable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable
  #devise :database_authenticatable, :registerable, :omniauthable
  #devise :database_authenticatable, :omniauthable

  has_person_name

  has_many :notifications, foreign_key: :recipient_id
  has_many :services
end
