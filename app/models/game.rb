class Game < ApplicationRecord
  belongs_to :user
  validates :name, :user, presence: true
  has_many :bats

  def single
    hit = 0
    dasekisu = 0
    single = 0
    bats.each do |bat|
      case bat.result
      when '安打'
        hit += 1
        dasekisu += 1
        single += 1
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
        hit += 1
        dasekisu += 1
      when '四死球'
        hit += 1
        dasekisu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
      when '三振'
        hit += 1
        dasekisu += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      single
    end
  end

  def double
    hit = 0
    dasekisu = 0
    double = 0
    bats.each do |bat|
      case bat.result
      when '安打'
        hit += 1
        dasekisu += 1
      when '二塁打'
        hit += 1
        dasekisu += 1
        double += 1
      when '三塁打'
        hit += 1
        dasekisu += 1
      when '本塁打'
        hit += 1
        dasekisu += 1
      when '犠打・犠飛'
        hit += 1
        dasekisu += 1
      when '四死球'
        hit += 1
        dasekisu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
      when '三振'
        hit += 1
        dasekisu += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      double
    end
  end

  def third
    hit = 0
    dasekisu = 0
    third = 0
    bats.each do |bat|
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
        third += 1
      when '本塁打'
        hit += 1
        dasekisu += 1
      when '犠打・犠飛'
        hit += 1
        dasekisu += 1
      when '四死球'
        hit += 1
        dasekisu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
      when '三振'
        hit += 1
        dasekisu += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      third
    end
  end

  def hr
    hit = 0
    dasekisu = 0
    hr = 0
    bats.each do |bat|
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
        hr += 1
      when '犠打・犠飛'
        hit += 1
        dasekisu += 1
      when '四死球'
        hit += 1
        dasekisu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
      when '三振'
        hit += 1
        dasekisu += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      hr
    end
  end

  def gida
    hit = 0
    dasekisu = 0
    gida = 0
    bats.each do |bat|
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
        hit += 1
        dasekisu += 1
        gida += 1
      when '四死球'
        hit += 1
        dasekisu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
      when '三振'
        hit += 1
        dasekisu += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      gida
    end
  end

  def shikyuu
    hit = 0
    dasekisu = 0
    shikyuu = 0
    bats.each do |bat|
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
        hit += 1
        dasekisu += 1
      when '四死球'
        hit += 1
        dasekisu += 1
        shikyuu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
      when '三振'
        hit += 1
        dasekisu += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      shikyuu
    end
  end

  def out
    hit = 0
    dasekisu = 0
    out = 0
    bats.each do |bat|
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
        hit += 1
        dasekisu += 1
      when '四死球'
        hit += 1
        dasekisu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
        out += 1
      when '三振'
        hit += 1
        dasekisu += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      out
    end
  end

  def sanshin
    hit = 0
    dasekisu = 0
    sanshin = 0
    bats.each do |bat|
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
        hit += 1
        dasekisu += 1
      when '四死球'
        hit += 1
        dasekisu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
      when '三振'
        hit += 1
        dasekisu += 1
        sanshin += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      sanshin
    end
  end

  def heisatsu
    hit = 0
    dasekisu = 0
    heisatsu = 0
    bats.each do |bat|
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
        hit += 1
        dasekisu += 1
      when '四死球'
        hit += 1
        dasekisu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
      when '三振'
        hit += 1
        dasekisu += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
        heisatsu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      heisatsu
    end
  end

  def tekishitsu
    hit = 0
    dasekisu = 0
    tekishitsu = 0
    bats.each do |bat|
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
        hit += 1
        dasekisu += 1
      when '四死球'
        hit += 1
        dasekisu += 1
      when 'アウト'
        hit += 1
        dasekisu += 1
      when '三振'
        hit += 1
        dasekisu += 1
      when '併殺打'
        hit += 1
        dasekisu += 1
      when '敵失'
        hit += 1
        dasekisu += 1
        tekishitsu += 1
      else
        dasekisu += 1
      end
    end
    if dasekisu == 0
      0
    else
      tekishitsu
    end
  end

  def daritsu
    hit = 0
    dasekisu = 0
    bats.each do |bat|
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

    if dasekisu == 0
      0
    else
      format('%.3f', hit.to_f / dasekisu)
    end
  end

  def dasuu
    hit = 0
    dasekisu = 0
    bats.each do |bat|
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

    if dasekisu == 0
      0
    else
      dasekisu
    end
  end

  def anda
    hit = 0
    dasekisu = 0
    bats.each do |bat|
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

    if dasekisu == 0
      0
    else
      hit
    end
  end
end
