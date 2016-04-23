class Pic < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	# before_post_process :rename_image


	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	def rename_image
	    #avatar_file_name - important is the first word - avatar - depends on your column in DB table
	    extension = File.extname(image_file_name).downcase
	    self.avatar.instance_write :image, "#{Time.now.to_i.to_s}#{extension}"
  	end

end
