class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :articles
  has_many :collections, dependent: :destroy
  
  validates_presence_of :name, :email

  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
  
end
