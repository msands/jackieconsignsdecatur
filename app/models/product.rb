class Product < ActiveRecord::Base
  LIGHTING_PRODUCT_TYPE = 'lighting'
  DECORATIVE_ITEMS_PRODUCT_TYPE = 'decorative_items'
  ART_PRODUCT_TYPE = 'art'
  TABLES_PRODUCT_TYPE = 'tables'
  SEATING_PRODUCT_TYPE = 'seating'
  PRODUCT_TYPES = [LIGHTING_PRODUCT_TYPE, 
                   DECORATIVE_ITEMS_PRODUCT_TYPE, 
                   ART_PRODUCT_TYPE,
                   TABLES_PRODUCT_TYPE,
                   SEATING_PRODUCT_TYPE
                  ].freeze

  belongs_to :user
  
  has_attached_file :image,
    :styles => {
      :medium => "600x600>",
      :thumb => "100x100" }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :description, presence: true
  validates :product_type, inclusion: { in: PRODUCT_TYPES, allow_blank: false }

  def self.product_type_options
    PRODUCT_TYPES.map do |product_type|
      [product_type, product_type.humanize]
    end
  end
end
