require 'config/environment.rb'
require 'models/package.rb'
require 'models/info.rb'
require 'models/info2.rb'

def all
	Package.all.each do |ids|
		if ids.info != nil 

			puts ids.info.text;
		end
	end
end

def info
	Info2.all.each do |i|
		puts i.id
	end
end

all;
info;