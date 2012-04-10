class Rock_paper_scissors

  class WrongNumberOfPlayersError < StandardError ; end
  class NoSuchStrategyError < StandardError ; end

  def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2
    strategy = /[PSR]/

    jugador1 = game.first.last
    jugador2 = game.last.last

    raise NoSuchStrategyError unless jugador1 =~ strategy or two =~ strategy
=begin
    Rules
    Rock beats Scissors - Scissors beats Paper - Paper beats Rock
=end

    if ((jugador1 == two)                or
      (jugador1.eql? "R" and jugador2.eql? "S") or
      (jugador1.eql? "S" and jugador2.eql? "P") or
      (jugador1.eql? "P" and jugador2.eql? "R"))

      return game.first.first
    elsif
      return game.last.first
    end


=begin
    #testing
    if (strategy =~ game)
      puts "yeah"
    elsif
      puts "no sorry"
    end
=end


  end

  def rps_tournament_winner(tournament)
    cuartos1 = tournament.first.first
    cuartos2 = tournament.first.last
    cuartos3 = tournament.last.first
    cuartos4 = tournament.last.last

    winner_cuartos1 = rps_game_winner(cuartos1)

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