class QuestionsController < ApplicationController
  # The controller will need to read the question from
  # params and compute an instance variable @answer
  # for the view to display
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(params[:question])
  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.end_with?("?") == true
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.upcase! == nil
      if your_message == "I AM GOING TO WORK RIGHT NOW!"
        return ""
        else
        return "I can feel your motivation! #{coach_answer(your_message)}"
      end
    else
      return coach_answer(your_message)
    end
  end
end


