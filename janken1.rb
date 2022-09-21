class Player
  def hand
    puts "数字を入力してください"
    puts "1がグー、2がチョキ、3がパー"

    input_hand = gets

    while true
      janken = [1, 2, 3]
      if janken.inclode?
        (input_hand)
        return input_hand
      elsif
        puts "1から3の数字を入力してください"
        puts "1がグー、2がチョキ、3がパー"
        input_hand = gets
      end
    end  
  end  
end

class Enemy
  def hand
    enemy_hand = rand(3)
  end
end  

class Janken
  def pon(player_hand,enemy_hand)
    janken = ["グー、チョキ、パー"]
    puts "相手の手は#{janken[enemy_hand]}です"

    while true
      if player_hand == enemy_hand
        puts "あいこ"
        return true
      elsif
        (player_hand == 1 && enemy_hand == 2) ||  (player_hand == 2 && enemy_hand == 3) || (player_hand == 3 && enemy_hand == 1) 
        puts "あなたの勝ちです"
        return false
      else
        puts "あなたの負けです"
        return false
      end    
    end  
  end  
end

class GameStart
  def self.jankenpon
    player = Player.new
    enemy = Enemy.new
    janken = Janken.new

    next_game = true
    while next_game
      next_game = jankenpon(player.hand, enemy.hand)
    end  
  end
end      

GameStart.jankenpon