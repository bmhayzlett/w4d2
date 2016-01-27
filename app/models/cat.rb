# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  name        :string
#  birth_date  :date
#  color       :string
#  sex         :string(1)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Cat < ActiveRecord::Base
  validates :name, :birth_date, :color, :sex,  presence: true
  validates :sex, inclusion: { in: ["M", "F"]}

  ALL_COLORS = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo',
              'violet', 'white', 'black', 'rainbow']

  def self.all_colors
    ALL_COLORS
  end



end
