class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :games

  def daseki
    hit = 0
    dasekisu = 0
    dasuu = 0
    games.each do |game|
      game.bats.each do |bat|
        case bat.result
        when '安打'
          hit += 1
          dasekisu += 1
          dasuu += 1
        when '二塁打'
          hit += 1
          dasekisu += 1
          dasuu += 1
        when '三塁打'
          hit += 1
          dasekisu += 1
          dasuu += 1
        when '本塁打'
          hit += 1
          dasekisu += 1
          dasuu += 1
        when '犠打・犠飛'
          hit += 0
          dasekisu += 0
          dasuu += 1
        when '四死球'
          hit += 0
          dasekisu += 0
          dasuu += 1
        when 'アウト'
          hit += 0
          dasekisu += 1
          dasuu += 1
        when '三振'
          hit += 0
          dasekisu += 1
          dasuu += 1
        when '併殺打'
          hit += 0
          dasekisu += 1
          dasuu += 1
        when '敵失'
          hit += 0
          dasekisu += 1
          dasuu += 1
        else
          dasekisu += 1
        end
        if dasekisu == 0
          0
        else
          dasuu
        end
      end
    end
  end

  def daritsu
    hit = 0
    dasekisu = 0
    games.each do |game|
      game.bats.each do |bat|
        case bat.result
        when '安打'
          hit += 1
          dasekisu += 1
        when '二塁打'
          hit += 1
          dasekisu += 1
        when '三塁打'
          hit += 1
          dasekisu += 1
        when '本塁打'
          hit += 1
          dasekisu += 1
        when '犠打・犠飛'
          hit += 0
          dasekisu += 0
        when '四死球'
          hit += 0
          dasekisu += 0
        when 'アウト'
          hit += 0
          dasekisu += 1
        when '三振'
          hit += 0
          dasekisu += 1
        when '併殺打'
          hit += 0
          dasekisu += 1
        when '敵失'
          hit += 0
          dasekisu += 1
        else
          dasekisu += 1
        end
      end
    end

    if dasekisu == 0
      0
    else
      format('%.3f', hit.to_f / dasekisu)
    end
  end

  def dasuu
    hit = 0
    dasekisu = 0
    games.each do |game|
      game.bats.each do |bat|
        case bat.result
        when '安打'
          hit += 1
          dasekisu += 1
        when '二塁打'
          hit += 1
          dasekisu += 1
        when '三塁打'
          hit += 1
          dasekisu += 1
        when '本塁打'
          hit += 1
          dasekisu += 1
        when '犠打・犠飛'
          hit += 0
          dasekisu += 0
        when '四死球'
          hit += 0
          dasekisu += 0
        when 'アウト'
          hit += 0
          dasekisu += 1
        when '三振'
          hit += 0
          dasekisu += 1
        when '併殺打'
          hit += 0
          dasekisu += 1
        when '敵失'
          hit += 0
          dasekisu += 1
        else
          dasekisu += 1
        end
      end
    end

    if dasekisu == 0
      0
    else
      dasekisu
    end
  end

  def anda
    hit = 0
    dasekisu = 0
    games.each do |game|
      game.bats.each do |bat|
        case bat.result
        when '安打'
          hit += 1
          dasekisu += 1
        when '二塁打'
          hit += 1
          dasekisu += 1
        when '三塁打'
          hit += 1
          dasekisu += 1
        when '本塁打'
          hit += 1
          dasekisu += 1
        when '犠打・犠飛'
          hit += 0
          dasekisu += 0
        when '四死球'
          hit += 0
          dasekisu += 0
        when 'アウト'
          hit += 0
          dasekisu += 1
        when '三振'
          hit += 0
          dasekisu += 1
        when '併殺打'
          hit += 0
          dasekisu += 1
        when '敵失'
          hit += 0
          dasekisu += 1
        else
          dasekisu += 1
        end
      end
    end

    if dasekisu == 0
      0
    else
      hit
    end
  end
end
