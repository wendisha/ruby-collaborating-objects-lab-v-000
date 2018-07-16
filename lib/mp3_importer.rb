require "pry"
class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    all_files = []
    Dir["#{@path}/*"].each do |file_name|
      #binding.pry
      if file_name.end_with?(".mp3")
        file_name=file_name.gsub("./spec/fixtures/mp3s/", "")
        all_files << file_name
        
      end
    end
    all_files
    
  end
  
  def import 
    
  end
end