class Citizen
  def initialize(first_name, last_name, age)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @age = age

  end

  def can_vote?
    @age > 17 ? true : false
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end
