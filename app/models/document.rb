class Document < ActiveRecord::Base
	has_attached_file :file_doc

	validates_attachment_presence :file_doc
	validates_attachment_size :file_doc, :less_than => 10.megabytes
	validates_format_of :file_doc_file_name, :with => %r{\.(docx|doc|pdf)$}i
	#validates_attachment_content_type :file_doc, :content_type => 'text/plain'
end
