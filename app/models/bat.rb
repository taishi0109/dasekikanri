class Bat < ApplicationRecord
  belongs_to :game

  extend Enumerize
  # serialize :result, Array
  enumerize :result, in: {
    '安打': 1, '二塁打': 2, '三塁打': 3, '本塁打': 4, '犠打・犠飛': 5,
    '四死球': 6, 'アウト': 7, '三振': 8, '併殺打': 9, '敵失': 10
  }
end
