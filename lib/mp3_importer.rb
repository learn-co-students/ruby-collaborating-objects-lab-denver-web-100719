class MP3Importer
    attr_accessor :path
    
    def initialize(path)
        @path = path
    end

    def files
        Dir.entries(path).select {|entry| entry.include?(".mp3")}
    end

    def import
        files.each do |file_name|
            Song.new_by_filename(file_name)
        end
    end
end