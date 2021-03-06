# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  url        :string
#  content    :text
#  sub_id     :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  validates :title, presence: true
  validates :subs, presence: { message: 'must have at least one sub'}

  has_many :post_subs,
  inverse_of: :post,
  dependent: :destroy

  has_many :subs,
  through: :post_subs,
  source: :sub


  # belongs_to :sub,
  # primary_key: :id,
  # foreign_key: :sub_id,
  # class_name: :Sub

  belongs_to :author,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

end
