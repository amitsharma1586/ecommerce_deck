class Product < ActiveRecord::Base
	
  default_scope { order('title') } 
  
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }
   
  validates_attachment_presence :image
  validates_attachment_size :image, less_than: 5.megabytes
  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png']
  
  has_many :line_items
	has_many :orders, through: :line_items
	before_destroy :ensure_not_referenced_by_any_line_item

	
	validates :title, :description, presence: true
	
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
	
  validates :title, uniqueness: true
  
  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
