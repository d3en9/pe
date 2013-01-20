require 'rubygems'
gem 'activerecord'
gem 'activerecord-postgresql-adapter'
require 'pg'
require 'active_record'
require 'lib/logger.rb'

# Загружаем файл настройки соединения с БД
dbconfig = YAML::load(File.open(File.join(File.dirname(__FILE__), 'database.yml')))

# Ошибки работы с БД направим в стандартный поток (консоль)
# ActiveRecord::Base.logger = Logger.new(STDERR)


ActiveRecord::Base.establish_connection(dbconfig)
