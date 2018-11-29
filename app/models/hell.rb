class Hell < ApplicationRecord
 belongs_to :user
 validates :top, :tas, presence: true
end
