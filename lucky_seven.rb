# Slot Machine Score System

# Item            Three of the same                Two of the same + Joker
# Bar                chewing gum                             6
# Joker                  50                                 24 (2 jokers + anything)
# Star                   40                                 21
# Lemon                   0                                  3
# Cherry                 10                                  9           
# Orange                 20                                 15
# Eggplant               15                                 12
# Horse-Shoe             30                                 18
# Liberty Bell           60                                 27
# Lucky Seven 7️⃣      Jackpot                               30


# we have 3 reels of random combination of 10 symbols -> 'play'
# we have the 'score' method
   # 1) check for 3 of a kind
   # 2) check for 2 of a kind & a joker
   # 3) else, user gets nothing

class SlotMachine
  SYMBOLS = %w[lemon bar cherry eggplant orange horse_shoe star joker bell seven]

  SCORE_ALL_THREE = {
    bar:        'chewing gum',
    lemon:      0,
    cherry:     10,
    eggplant:   15,
    orange:     20,  
    horse_shoe: 30,
    star:       40,
    joker:      50,
    bell:       60,
    seven:      'Jackpot'
  }

  def initialize
    @reels = []
  end

  def play
    @reels = []
    3.times do
      @reels << SYMBOLS.sample
    end
    return @reels
  end

  def score
    if three_of_a_kind?
      # @reels = ['seven', 'seven', 'seven']
      SCORE_ALL_THREE[@reels[0].to_sym]
    elsif two_of_a_kind_and_joker?
      # @reels = ['joker', 'joker', 'bell']
      # @reels = ['joker', 'bell', 'joker']
      # @reels = ['bell', 'joker', 'joker']
      base_score(@reels.sort[1]) * 3
    else
      return 0
    end
  end

  private

  def three_of_a_kind?
    @reels.uniq.size == 1
  end

  def two_of_a_kind_and_joker?
    @reels.uniq.size == 2 && @reels.include?('joker')
  end

  def base_score(symbol)
    SYMBOLS.index(symbol) + 1
  end
end

lucky_number_seven = SlotMachine.new

score = 0
while score == 0
  p lucky_number_seven.play
  puts lucky_number_seven.score
  break if lucky_number_seven.score != 0
end
