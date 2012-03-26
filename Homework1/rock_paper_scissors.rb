class Rock_paper_scissors

  class WrongNumberOfPlayersError < StandardError ; end
  class NoSuchStrategyError < StandardError ; end

  def rps_game_winner(game)

=begin
Rules
Rock beats Scissors - Scissors beats Paper - Paper beats Rock
=end

    raise WrongNumberOfPlayersError unless game.length == 2

  end

  def rps_tournament_winner

  end

  game = [
          [
            [
              ["Armando", "P"],
                  #vs Cuartos 1
              ["Dave", "S"]
            ],
                  #vs Semi 1
            [
              ["Richard", "R"],
                  #vs Cuartos 2
              ["Michael", "S"]
            ],
          ],
                  #vs Final
          [
            [
              ["Allen", "S"],
                  #vs Cuartos 3
              ["Omer", "P"]
            ],
                  #vs Semi 2
            [
              ["David E.", "R"],
                  #vs Cuartos 4
              ["Richard X.", "P"]
            ]
          ]
        ]

end