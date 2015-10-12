# == Schema Information
#
# Table name: households
#
#  id         :integer          not null, primary key
#  long       :float
#  lat        :float
#  elevation  :float
#  nickname   :string
#  code       :string
#  country    :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HouseholdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
