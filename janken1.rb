class Player
  def hand
    puts "数字を入力してください"
    puts "0がグー、1がチョキ、2がパー"

    input_hand = gets.chomp

    while true
      janken = ["0", "1", "2"]
      if janken.include?(input_hand)
        return input_hand.to_i
      else
        puts "0から2の数字を入力してください"
        puts "0がグー、1がチョキ、2がパー"
        input_hand = gets.chomp
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
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です"

    while true
      if player_hand == enemy_hand
        puts "あいこ"
        return true
      elsif (player_hand == 0 && enemy_hand == 1) ||  (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0) 
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
      next_game = janken.pon(player.hand, enemy.hand)
    end  
  end
end      

GameStart.jankenpon