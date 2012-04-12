class Dessert
  # To change this template use File | Settings | File Templates.
  attr_accessor(:name, :calories)

  def initialize(name, calories)
    self.name = name
    self.calories = calories
  end

  def healthy?
    if(calories<200)
      true
    end

  end

  def delicius?
    true
  end

end

class JellyBean < Dessert
  attr_accessor(:flavor)

  def initialize(name, calories, flavor)
    super(name, calories)
    self.flavor = flavor

  end

  def delicius?
    if(flavor == "black licorice")
      false
    else
      true
    end

  end
end


oelo = Dessert.new("a",2)
oelo.healthy?
oelo.delicius?
