class Pizza
  def prepare
    puts "prepare pizza"
  end

  def bake
    puts "bake pizza"
  end

  def cut
    puts "cut pizza"
  end

  def box
    puts "box pizza"
  end
end

class PizzaStore
  def orderPizza(type)
    pizza = PizzaFactory.createPizza(type)
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    return pizza
  end
end

class CheesePizza < Pizza
  def prepare
    puts "prepare pizza Cheese"
  end
end

class VeggiePizza < Pizza
  def prepare
    puts "prepare pizza Veggie"
  end
end

class PepperoniPizza < Pizza
  def prepare
    puts "prepare pizza Pepperoni"
  end
end

class PizzaFactory
  def self.createPizza(type)
    if type == "cheese"
      return CheesePizza.new
    elsif type == "veggie"
      return VeggiePizza.new
    elsif type == "pepperoni"
      return PepperoniPizza.new
    end
  end
end

store = PizzaStore.new
store.orderPizza("cheese")
store.orderPizza("veggie")
