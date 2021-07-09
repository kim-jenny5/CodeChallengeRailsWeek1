class Party < ApplicationRecord
    validates :name, :category, :supplies, presence: true
    validates :date, uniqueness: true, presence: true
    validates :budget, presence: true, numericality: {minimum: 100, maximum: 10000}
    validate :starts_with_the

    def self.parties 
        self.order("name DESC") 
    end

    def starts_with_the
        if !(name =~ /The/) == 0
            errors.add(:name, "needs to start with 'The'")
        end
    end
end
