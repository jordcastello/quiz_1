class Supporter < ActiveRecord::Base


validates :name, presence: {message: "must be provided"},
                  uniqueness: true,
                  length: {minimum: 5}

# validates :view_count, numericality: {greater_than_or_equal_to: 0}
#
#
# validates :body, uniqueness: {scope: :title}
#
#
#
#
#
# after_initialize :set_defaults
# before_validation :capitalize
#
#
# def self.search(term)
#   where(["body ILIKE ? OR title ILIKE ?", "%#{term}%", "%#{term}%"])
# end
# private
#
#
#
# def set_defaults
#   self.view_count ||= 0
# end
#
def capitalize
  self.title.capitalize!
end



end
