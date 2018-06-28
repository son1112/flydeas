class VotesController < ApplicationController
    def new 
        @vote = Vote.find_by(submission_id: params[:submission_id], user_id: params[:user_id])
        if @vote.nil?
            create
        else
            update  
        end           
    end

    def create
        @vote = Vote.new(vote_params)
        if @vote.save
            flash[:info] = "voted"
            #binding.pry
            redirect_to submissions_url
        #else
        #    flash[:error]= "you have already voted"
        #    redirect_to submissions_url
        end
        redirect_to submissions_url
    end

    def update
        if @vote.weight != params[:weight]
           @vote.weight = params[:weight]
           @vote.save
        end 
        redirect_to submissions_url
    end

    private
        def vote_params
            params.permit(:user_id, :submission_id, :weight)
        end
end
