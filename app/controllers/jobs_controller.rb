class JobsController < ApplicationController

    def index
        @jobs = Job.all
        @job = Job.new
    end

    def new
        @job = Job.new
    end

    def create
        @job = Job.new(params.require(:job).permit(:title, :body, :address))
        @job.user = current_user
        @job.save!
        unless @job.valid?
            flash[:errors] = @job.errors.full_messages
        end
        redirect_to jobs_path
    end

    def show
    end

    def edit 
    end

    def update
    end

    def destroy(id)
    end


    private

    def job_params
    end
end
