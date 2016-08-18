# Starting User Stories

# Story: As a developer, I can create a Task.
class Task
end


# Story: As a developer, I can give a Task a title and retrieve it.
class Task

  def initialize(title)
    @title = title
  end

  def get_title
    @title
  end

end


# Story: As a developer, I can give a Task a description and retrieve it.
class Task

  def initialize(title)
    @title = title
  end

  def get_title
    @title
  end

  def add_description(description)
    @description = description
  end

  def get_description
    @description
  end

end
#
# Story: As a developer, I can print a Task with field labels and values.
class Task

  def initialize(title)
    @title = title
    @specifics = Hash.new
  end

  def get_title
    @title
  end

  def add_description(description)
    @description = description
  end

  def get_description
    @description
  end

  def add_specifics(field, value)
    @specifics[field] = value
  end

  def check_field(field)
    @specifics.has_key?(field)
  end

  def check_value
    @specifics
  end

end

# Story: As a developer, I can mark a Task done.
class Task

  def initialize(title)
    @title = title
    @specifics = Hash.new
    @task_done = false
  end

  def get_title
    @title
  end

  def add_description(description)
    @description = description
  end

  def get_description
    @description
  end

  def add_specifics(field, value)
    @specifics[field] = value
  end

  def check_field(field)
    @specifics.has_key?(field)
  end

  def check_value
    @specifics
  end

  def toggle_task_done
    if @task_done == true
      @task_done = false
    elsif @task_done == false
      @task_done = true
    end
  end

end

# Story: As a developer, when I print a Task is done status is shown.
class Task

  def initialize(title)
    @title = title
    @specifics = Hash.new
    @task_done = false
  end

  def get_title
    @title
  end

  def add_description(description)
    @description = description
  end

  def get_description
    @description
  end

  def add_specifics(field, value)
    @specifics[field] = value
  end

  def check_field(field)
    @specifics.has_key?(field)
  end

  def check_value
    @specifics
  end

  def toggle_task_done
    if @task_done == true
      @task_done = false
    elsif @task_done == false
      @task_done = true
    end
  end

  def is_complete
    if @task_done == true
      @title + " is done"
    elsif @task_done == false
      @title + " is not done"
    end
  end

end

# Story: As a developer, I can add all of my Tasks to a TaskList.
class TaskList

  def initialize
    @tasklist = []
  end

  def add_to_tasklist(task)
    @tasklist << task
  end

end
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
end

# Story: As a developer with a TaskList, I can show all the not completed items.
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
