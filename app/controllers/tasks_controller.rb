class TasksController < ApplicationController
  def create
    @task = Task.new(params[:task])
    @task.save
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      message = {:channel => project_path(@task.project), :data => { :task_id => @task.id, :task_state => @task.state}}
      uri = URI.parse("http://localhost:9292/faye")
      Net::HTTP.post_form(uri, :message => message.to_json)
    end
    render :nothing => true
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end
