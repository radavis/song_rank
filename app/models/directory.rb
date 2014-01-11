class Directory < ActiveRecord::Base
  attr_reader :name
  after_save :create_symbolic_link

  def name
    folder_name = self.full_path.split('/')[-1]
    [ Rails.root, 'public', folder_name ].join('/')
  end 

  def files
    results = []
    Filetype.allowed_types.each do |t|
      results << Dir.glob([Directory.last.name, "**/*.#{t}"].join('/'))
    end
    results.flatten
  end

  protected
  def create_symbolic_link
    system("ln -nfs #{self.full_path} #{self.name}")
  end
end
