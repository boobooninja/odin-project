class Dictionary
  attr_reader :entries

  def initialize
    @entries = { }
  end

  def add(args)
    if args.class == Hash
      entries.merge!( args )
    elsif args.class == String
      entries.merge!( {args => nil} )
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(keyword)
    keywords.include? keyword
  end

  def find(search)
    results = { }

    keywords.each do |key|
      if key.include?(search)
        results.merge!( {key => entries[key]} )
      end
    end

    results
  end

  def printable
    string = ""

    keywords.each_with_index do |k,i|
      string += "[#{k}] \"#{entries[k]}\""
      string += "\n" unless (keywords.length - 1) == i
    end

    string
  end
end
