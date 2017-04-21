# Utilizando Singleton module
require "singleton"
require "date"

class Logger
  include Singleton

  def initialize
    @log = File.open("log_web.text", "a")
  end

  def save(msg, info = '')
    @log.puts('-------' + Time.now.strftime("%d-%m-%Y %H:%M:%S") + '--------') 
    @log.puts(msg)
    @log.puts('info: ' + info)
    @log.puts('------------------------------------------')
    @log.puts('')
  end
end

Logger.instance.save('hola', 'file singleton.rb')
