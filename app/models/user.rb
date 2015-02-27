class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :photos

	acts_as_messageable

  def name
    email
  end

 def mail_email(object)
    @mail_email = self.email
 end

end
