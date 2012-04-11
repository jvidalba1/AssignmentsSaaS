class Rock_paper_scissors

  class WrongNumberOfPlayersError < StandardError ; end
  class NoSuchStrategyError < StandardError ; end

  def rps_game_winner(game)
=begin
    Rules
    Rock beats Scissors - Scissors beats Paper - Paper beats Rock
=end
    raise WrongNumberOfPlayersError unless game.length == 2
    strategy = /[PSR]/

    jugador1 = game.first.last
    jugador2 = game.last.last

    raise NoSuchStrategyError unless jugador1 =~ strategy or jugador2 =~ strategy

    if ((jugador1 == jugador2)                      ||
      ((jugador1.eql? "R") && (jugador2.eql? "S"))  ||
      ((jugador1.eql? "S") && (jugador2.eql? "P"))  ||
      ((jugador1.eql? "P") && (jugador2.eql? "R")))

      return game.first
    else

      return game.last
    end

  end

  def rps_tournament_winner(tournament)
    cuartos1        = tournament.first.first
    cuartos2        = tournament.first.last
    cuartos3        = tournament.last.first
    cuartos4        = tournament.last.last

    #Game in quarter finals
    winner_cuartos1 = rps_game_winner(cuartos1)
    winner_cuartos2 = rps_game_winner(cuartos2)
    winner_cuartos3 = rps_game_winner(cuartos3)
    winner_cuartos4 = rps_game_winner(cuartos4)

    semi1           = [winner_cuartos1]+[winner_cuartos2]
    semi2           = [winner_cuartos3]+[winner_cuartos4]

    #Game in semi-finals
    winner_semi1    = rps_game_winner(semi1)
    winner_semi2    = rps_game_winner(semi2)

    final           = [winner_semi1]+[winner_semi2]

    #The last game
    winner_final    = rps_game_winner(final)

    #Champion
    return winner_final
  end


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

oelo = Rock_paper_scissors.new
oelo.rps_tournament_winner(game)
