class Array
  define_method(:queen_attack?) do |enemy_position|
    chess_board = [0,1,2,3,4,5,6,7]
    if (0..7).include?(self.at(0)) && (0..7).include?(self.at(1)) && (0..7).include?(enemy_position.at(0)) && (0..7).include?(enemy_position.at(1))
      if (self.at(0).==enemy_position.at(0)) || (self.at(1).==enemy_position.at(1))
        true
      elsif ((self.at(0).-(self.at(1))).abs.==1 )&& ((enemy_position.at(0).-(enemy_position.at(1))).abs==1)
        true
      else
        false
      end
    end
  end
end
