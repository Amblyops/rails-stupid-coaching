class QuestionsController < ApplicationController
    def ask
    end


    #If the message is I am going to work, the coach will answer Great!
    #If the message has a question mark ? at the end, the coach will answer Silly question,
    #get dressed and go to work!.
    #Otherwise the coach will answer I don't care, get dressed and go to work!



    def answer
      @question = params[:question]
      case @question
      when "I am going to work"
        @answer = "Great!"
      when /\w*[?]/
        @answer = "Silly question, get dressed and go to work!."
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    #raise
    end
end
