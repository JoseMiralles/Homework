module Toyable
    extend ActiveSupport::Concern

    included do
        has_many :toys, foreign_key: :toyable_id, class_name: :Toy
    end
    
    def receive_toy(name)
        toy = Toy.find_or_create_by(name: name)
        self.toys.create()
    end

end