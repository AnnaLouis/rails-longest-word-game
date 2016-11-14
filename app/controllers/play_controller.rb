class PlayController < ApplicationController



  def game
    # Afficher des lettres.
    @start_time = Time.now
    @results = Array.new(10) { ('A'..'Z').to_a[rand(26)] }
  end

  def score
    @word = params[:query]
    @word_count = @word.length.to_i

    @start_time = DateTime.parse(params[:start_time])
    end_time = Time.now
    @result = (end_time - @start_time).round

  end


    # def included?(guess, grid)
    #   guess.all? { |letter| guess.count(letter) <= grid.count(letter) }
    # end

    # def compute_score(attempt, time_taken)
    #   (time_taken > 60.0) ? 0 : attempt.size * (1.0 - time_taken / 60.0)
    # end

    # def run_game(attempt, grid, start_time, end_time)
    #   result = { time: end_time - start_time }

    #   result[:translation] = get_translation(attempt)
    #   result[:score], result[:message] = score_and_message(
    #     attempt, result[:translation], grid, result[:time])
    # end


  # def score
  #   def score_and_message(attempt, translation, grid, time)
  #     if included?(attempt.upcase, grid)
  #       if translation
  #         score = compute_score(attempt, time)
  #         [score, "well done"]
  #       else
  #         [0, "not an english word"]
  #       end
  #     else
  #       [0, "not in the grid"]
  #     end
  # end

  # end

end
