class Like < ApplicationRecord
  has_many :lions, :dependent => :destroy
end
