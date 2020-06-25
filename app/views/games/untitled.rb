if @response['found'] == false
      @return = "Sorry but this Word does not exist:  #{@user_word}?"
    elsif
      @return = "Congratulations! #{@user_word.capitalize} is a valid English word!"
      @return2 = "Your score is: #{@response["length"]*10} points."
    else
      @return = "Don't know yet"
    end


    @new_array.each do |letter|
      letter.include?()


if @response['found'] == false
      @return = 'Sorry but this Word does not exist.'
    else
      @return = "Congratulations! #{@user_word.capitalize} is a valid English word!"
      @return2 = "Your score is: #{@response['length'] * 10} points."
    end

    @new_array.each do |letter|
      if @session.include?(letter)
        @return3 = "Valid letters but what is #{@user_word.upcase}?"
      else
        @return3 = "Sorry but #{@user_word.upcase} can't be build out of #{@session.join(", ")}."
      end
    end
  end
