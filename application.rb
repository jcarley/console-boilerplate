class Application

  def self.execute!
    Configuration.settings[:main_block].call
  end

end

class Configuration

  class << self
    attr_reader :settings

    def config(&block)
      @settings ||= {}
      self.class_eval(&block)
    end

    def main(&block)
      @settings[:main_block] = block
    end
  end

end

