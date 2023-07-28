class Material < Stuff
    has_and_belongs_to_many :images, :join_table => :materials_images


end
