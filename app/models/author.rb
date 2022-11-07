class Author < ApplicationRecord
    validates :first_name, presence: true, length: { minimum: 3 }
    validates :last_name, presence: true, length: { minimum: 3 }
    validates :homepage, presence: true, length: { minimum: 3 }

    has_and_belongs_to_many :papers

    def name
        "#{first_name} #{last_name}"
    end
end
