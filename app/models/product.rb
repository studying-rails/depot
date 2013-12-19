class Product < ActiveRecord::Base
  has_many :line_items

  validates :title, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }

  before_destroy :ensure_not_referenced_by_any_line_item
  

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      true
    else
      errors.add(:base, 'Line Items present')
      false
    end
  end
end
