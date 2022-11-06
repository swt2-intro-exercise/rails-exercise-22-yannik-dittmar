class Author < ApplicationRecord
    validates :first_name, presence: true, length: { minimum: 3 }
    validates :last_name, presence: true, length: { minimum: 3 }
    validates :homepage, presence: true, length: { minimum: 3 }

    def name
        "#{first_name} #{last_name}"
    end
end
