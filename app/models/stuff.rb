class Stuff < ApplicationRecord
    has_and_belongs_to_many :pics, class_name:"Image", :join_table => :mystuffhaspics
    
    def image=(uploaded_io)
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    write_attribute(:image,uploaded_io.original_filename)
  end
  def image
    read_attribute(:image)
  end
end
