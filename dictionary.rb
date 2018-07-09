class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    if entry.is_a?(Hash)
      @entries.merge!(entry)
    elsif entry.is_a?(String)
      @entries.merge!({entry => nil})
    end
  end

  def find(entry)
    @entries.select do |key, value|
      key.include?(entry)
    end
  end
  def include?(entry)
    @entries.keys.include?(entry)
  end



  def keywords
    @entries.keys.sort
  end

end
