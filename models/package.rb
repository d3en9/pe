require 'active_record'

class Package < ActiveRecord::Base
	#belongs_to :info
	#hasmany_to :info
	belongs_to :info
end

