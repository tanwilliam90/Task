# Starting User Stories

# Story: As a developer, I can create a Task.
require 'rspec'
require_relative 'task'

describe Task do

  it "should be a thing" do
    expect{Task.new}.to_not raise_error
  end

end

# Story: As a developer, I can give a Task a title and retrieve it.
require 'rspec'
require_relative 'task'

describe Task do

  it "can be given a title and the title can be retrieved" do
    test_task = Task.new "title"
    expect(test_task.get_title).to eq "title"
  end

end


# Story: As a developer, I can give a Task a description and retrieve it.
require 'rspec'
require_relative 'task'

describe Task do

  it "has a description and can be retrieved" do
    test_task = Task.new "buy_bananas"
    expect(test_task.add_description("list of things to do today")).to eq "list of things to do today"
    expect(test_task.get_description).to eq "list of things to do today"
  end

end
#
# Story: As a developer, I can print a Task with field labels and values.
require 'rspec'
require_relative 'task'

describe Task do

  it "has fields and those fields have values" do
    test_task = Task.new "Buy Groceries"
    test_task.add_specifics("bananas",5)
    expect(test_task.check_field("bananas")).to be true
    expect(test_task.check_value["bananas"]).to be 5
    test_task.add_specifics("apples", 15)
    expect(test_task.check_field("apples")).to be true
    expect(test_task.check_value["apples"]).to be 15
  end
end


# Story: As a developer, I can mark a Task done.
require 'rspec'
require_relative 'task'

describe Task do

  it "can mark when a task is done" do
    test_task = Task.new "Buy Groceries"
    expect(test_task.toggle_task_done).to eq true
    expect(test_task.toggle_task_done).to eq false
  end
end



# Story: As a developer, when I print a Task is done status is shown.
it "shows whether the task is done or not" do
  test_task = Task.new "Pick up dry cleaning"
  expect(test_task.is_complete).to eq "Pick up dry cleaning is not done"
  expect(test_task.toggle_task_done).to be true
  expect(test_task.is_complete).to eq "Pick up dry cleaning is done"
end

# Story: As a developer, I can add all of my Tasks to a TaskList.
require 'rspec'
require_relative 'TaskList'
require_relative 'task'

describe TaskList do

  it "should be able to add a task to my TaskList" do
    task = Task.new "Pick up dry cleaning"
    task2 = Task.new "Wash clothes"
    tasklist = TaskList.new
    expect(tasklist.add_to_tasklist(task)).to match [task]
    expect(tasklist.add_to_tasklist(task2)).to match_array [task2, task]
  end
end

# Story: As a developer with a TaskList, I can show all the completed items.
it "should show all of the completed items on the TaskList" do
  tasklist = TaskList.new
  task1 = Task.new "pick up dry cleaning"
  task2 = Task.new "do laundry"
  tasklist.add_to_tasklist(task1)
  tasklist.add_to_tasklist(task2)
  task1.toggle_task_done
  expect(tasklist.show_completed_tasks).to match [task1]
end

# Story: As a developer with a TaskList, I can show all the not completed items.
it "should show all of the incompleted items on the TaskList" do
  tasklist = TaskList.new
  task1 = Task.new "pick up dry cleaning"
  task2 = Task.new "do laundry"
  tasklist.add_to_tasklist(task1)
  tasklist.add_to_tasklist(task2)
  task1.toggle_task_done
  expect(tasklist.show_incompleted_tasks).to match [task2]
end
