class User < ActiveRecord::Base
	has_many :microposts, dependent: :destroy
	validates :name, presence: true,
                    length: { minimum: 3 }
end
