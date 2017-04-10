class AnimalBad
  def walk
    'walking_as_animal'
  end
end

class Cat < AnimalBad
  def run
    'run_as_cat'
  end
end

# solution
class Animal
  def walk
    'walking_as_animal'
  end

  def run
    raise NotImplementedError
  end
end

class Lion < Animal
  def run
    'run_as_lion'
  end
end
