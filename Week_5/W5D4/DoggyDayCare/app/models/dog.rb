class Dog < ApplicationRecord

    validates :name, presence: true
    validate :check_name_length

    def check_name_length
        unless self.name.length >= 4
            errors[:name] << "Name is too short, must be longer than four or more characters."
        end
    end

    has_many(:toys, {
        primary_key: :id,
        foreign_key: :dog_id,
        class_name: :Toy
    })

end