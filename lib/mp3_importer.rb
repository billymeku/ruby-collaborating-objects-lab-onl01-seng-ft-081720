<<<<<<< HEAD
=======
# class MP3Importer
  
#   attr_accessor :path

#   def initialize(path)
#     @path = path
#   end

#   def files
#     @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
#   end

#   def import
#     files.each {|song| Song.new_by_filename(song)}
#   end

  
# end 


class MP3Importer

  attr_accessor :name, :path
  @@all = []

  def initialize(path)
    @path = path
  end

  def files
    path_contents = Dir["#{@path}/*.mp3"]
    path_contents.map do |file_name|
      @@all << file_name[21...file_name.size]
    end
    @@all
  end

<<<<<<< HEAD
  

>>>>>>> 7eb16821eea26e3072452e4abffc9342e42482dd
 def import
    files.each {|song| Song.new_by_filename(song)}
  end
end