class Attachment < ActiveRecord::Base
belongs_to:user
attr_accessible :course   
 def uploaded_file=(incoming_file)
        self.filename = incoming_file.original_filename
        self.content_type = incoming_file.content_type
        self.data = incoming_file.read
        
    end
    
    
    def filename=(new_filename)
        write_attribute("filename", sanitize_filename(new_filename))
    end

    private
    def sanitize_filename(filename)
        #get only the filename, not the whole path (from IE)
        just_filename = File.basename(filename)
        #replace all non-alphanumeric, underscore or periods with underscores
        just_filename.gsub(/[^\w\.\-]/, '_')
    end
def sanitize_course(course)
        #get only the filename, not the whole path (from IE)
        just_course = File.basename(course)
        #replace all non-alphanumeric, underscore or periods with underscores
        just_course.gsub(/[^\w\.\-]/, '_')
    end


end

