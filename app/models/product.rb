class Product < ActiveRecord::Base
  has_attached_file :image, styles: { large: "300x300", medium: "200x200>", small: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
