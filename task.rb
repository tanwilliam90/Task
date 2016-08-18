# Starting User Stories

# Story: As a developer, I can create a Task.
# Story: As a developer, I can give a Task a title and retrieve it.
# Story: As a developer, I can give a Task a description and retrieve it.
# Story: As a developer, I can print a Task with field labels and values.
# Story: As a developer, I can mark a Task done.
# Story: As a developer, when I print a Task is done status is shown.
# Story: As a developer, I can add all of my Tasks to a TaskList.
# Story: As a developer with a TaskList, I can show all the completed items.

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

  def done_status
    @task_done
  end

end






# Story: As a developer with a TaskList, I can show all the not completed items.
