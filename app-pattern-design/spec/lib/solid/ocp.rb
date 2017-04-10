class FileParse
  attr_reader :parser

  def initialize(parser)
    @parser = parser
  end

  def parse(file)
    Data.new(parser.parse file)
  end
end

class JsonParser
  def self.parse(file)
    #Implementation
  end
end

class XmlParser
  def self.parse(file)

  end
end
