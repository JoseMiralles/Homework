class Person < ApplicationRecord

    # Validate objects when saved.
    validates :name, presence: true
    validates :house_id, presence: true

    belongs_to( :house, {
        primary_key: :id,
        class_name: :House
    } )

end