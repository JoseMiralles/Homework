module Toyable
    extend ActiveSupport::Concern

    included do
        has_many :toys, foreign_key: :toyable_id, class_name: :Toy
    end
    
    #Cat.first.receive_toy("test")
    def receive_toy(name)
        toy = Toy.find_or_create_by(
            name: name,
            toyable_type: self.class.to_s,
            toyable_id: self.id)
        self.toys += [toy]
    end

end