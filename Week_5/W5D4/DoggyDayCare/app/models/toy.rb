class Toy < ApplicationRecord

    belongs_to(:dog, {
        primary_key: :id,
        foreign_key: :dog_id,
        class_name: :Dog
    })

    belongs_to(:house, {
        trough: :dog,
        source: house
    })

end