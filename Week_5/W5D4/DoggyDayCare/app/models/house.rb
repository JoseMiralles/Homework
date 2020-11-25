class House < ApplicationRecord

    has_many( :dogs, {
        primary_key: :id,
        foreign_key: :house_id,
        class_name: :Dog
    })

    has_many(:toys, {
        trough: :dogs, # Goes trough dogs, becuase that's the only connection.
        source: :toys,
    })

end