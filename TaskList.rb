
# Story: As a developer, I can add all of my Tasks to a TaskList.
# Story: As a developer with a TaskList, I can show all the completed items.
class TaskList

  def initialize
    @tasklist = []
    @tasklist_complete = []
    @tasklist_incomplete = []
  end

  def add_to_tasklist(task)
    @tasklist << task
  end

  def show_completed_tasks
    @tasklist_complete = @tasklist.find_all {|element| element.done_status == true}
  end

  def show_incompleted_tasks
    @tasklist_complete = @tasklist.find_all {|element| element.done_status == false}
  end
end
