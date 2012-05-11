class User < ActiveRecord::Base
  has_attached_file :cv
  validates :cv, :attachment_content_type => { :content_type => ['application/pdf'] }
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :cv

  attr_protected :cv_file_name, :cv_content_type, :cv_size
end
