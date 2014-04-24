class XmlDocument

  def initialize(indent=false)
    @indent  = indent
    @spacing = ""
  end

  def method_missing(meth, *args, &block)
    tag_name = meth
    arg_hash = args.first || {}

    build_tag( tag_name, arg_hash, &block )
  end

  private

  def build_tag( tag_name, args )
    string = ""

    string += "<#{tag_name}"

    args.each do |key,value|
      string += " #{key}='#{value}'"
    end

    if block_given?
      string += ">"

      string += before_spacing

      string += yield

      string += "</#{tag_name}>"

      string += after_spacing
    else
      string += "/>"

      string += after_spacing
    end

    string
  end

  def after_spacing
    if @indent
      @spacing.chomp!("  ")
      "\n" + @spacing
    else
      ""
    end
  end

  def before_spacing
    if @indent
      @spacing += "  "
      "\n" + @spacing
    else
      ""
    end
  end
end
