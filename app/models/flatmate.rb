class Flatmate < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :firstname, presence: true, length: { minimum: 2, maximum: 20 }
  validates :lastname, presence: true, length: { minimum: 2, maximum: 20 }
  validates :duties, presence: true
  validates :charges, presence: true

end
