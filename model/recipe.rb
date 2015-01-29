class Recipe  

  attr_reader :id, :name, :category, :ingredients, :preparation, :cooking_time, :difficulty, :source
  attr_accessor :serves

  def initialize(args)
    @id           = args[:id]
    @name         = args[:name]
    @category     = args[:category]
    @ingredients  = args[:ingredients]
    @preparation  = args[:preparation]
    @source       = args[:source]
    @cooking_time = args[:cooking_time]
    @serves       = args[:serves]
    @difficulty   = args[:difficulty]


  end 

  def to_s
    "ID: #{@id}, Name: #{@name}, Category: #{@category}, Ingredients: #{@ingredients}"
  end
end  