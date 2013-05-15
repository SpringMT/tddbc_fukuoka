#!/usr/bin/env ruby

class Janken

  def judge(own_hand, other_hand)
    if (own_hand == 'goo' && other_hand == 'choki') || (own_hand == 'choki' && other_hand == 'paa') || (own_hand == 'paa' && other_hand == 'goo')
      return 0
    end
    if (own_hand == 'choki' && other_hand == 'goo') || (own_hand == 'paa' && other_hand == 'choki') || (own_hand == 'goo' && other_hand == 'paa')
      return 1
    end

    return 2
  end

end


