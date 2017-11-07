class Argument < ApplicationRecord
  belongs_to :user
  belongs_to :hypothesis
end
