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

  it "should show all of the completed items on the TaskList" do
    tasklist = TaskList.new
    task1 = Task.new "pick up dry cleaning"
    task2 = Task.new "do laundry"
    tasklist.add_to_tasklist(task1)
    tasklist.add_to_tasklist(task2)
    task1.toggle_task_done
    expect(tasklist.show_completed_tasks).to match [task1]
  end

  it "should show all of the incompleted items on the TaskList" do
    tasklist = TaskList.new
    task1 = Task.new "pick up dry cleaning"
    task2 = Task.new "do laundry"
    tasklist.add_to_tasklist(task1)
    tasklist.add_to_tasklist(task2)
    task1.toggle_task_done
    expect(tasklist.show_incompleted_tasks).to match [task2]
  end

end
