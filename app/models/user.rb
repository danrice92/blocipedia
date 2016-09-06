class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
  has_many :wikis, dependent: :destroy
  
  after_initialize :initialize_role
  
  enum role: [:standard, :premium, :admin]
  
  private
  
  def initialize_role
    self.role ||= :standard
  end
end