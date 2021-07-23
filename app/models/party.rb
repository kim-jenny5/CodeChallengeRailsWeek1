class Party < ApplicationRecord
    validates :name, presence: true
    validates :date, uniqueness: true, presence: true
    validates :budget, presence: true, numericality: {greater_than_or_equal_to: 100, less_than_or_equal_to: 10000}

    has_many :party_supplies
    has_many :supplies, through: :party_supplies
    belongs_to :category

    def self.parties 
        self.order("name DESC") 
    end

    # def starts_with_the
    #     if !((name =~ /The/) == 0)
    #         errors.add(:name, "needs to start with 'The'")
    #     end
    # end
end
