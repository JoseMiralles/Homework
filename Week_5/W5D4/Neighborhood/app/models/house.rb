class House < ApplicationRecord

    validates :address, presence: true

    has_many( :residents, {
        primary_key: :id,   # The primary key for House
        foreign_key: :house_id, # The foreigh key that Person contains
        class_name: :Person # The class to instantiate.
    } )

end