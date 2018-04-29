class RandomNumber
   attr_accessor :random_number

  def random_number
    @number = rand(1..100)
  end

end
