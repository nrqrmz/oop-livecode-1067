class SlotMachine
  VALUES = {
    "joker"=> 5,
    "star" => 4,
    "bell" => 3,
    "seven" => 2,
    "cherry"=> 1
  }

  SYMBOLS = %w[cherry seven bell star joker]

  def initialize(reels = [])
    @reels = reels
  end

  def play
    @reels = []

    3.times do
      @reels << SYMBOLS.sample
    end

    @reels
  end

  def score
    if three_identical?
      base_score(@reels[0]) * 10
    elsif two_and_joker?
      base_score(@reels.sort[1]) * 5
    else
      0
    end
  end

  private

  def three_identical?
    @reels.uniq.size == 1
  end

  def two_and_joker?
    @reels.uniq.size == 2 && @reels.include?('joker')
  end

  def base_score(symbol)
    VALUES[symbol]
  end
end
