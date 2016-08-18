require 'rspec'
require_relative 'task'

describe Task do

  it "should be a thing" do
    expect{Task.new "title"}.to_not raise_error
  end

  it "can be given a title and the title can be retrieved" do
    test_task = Task.new "title"
    expect(test_task.get_title).to eq "title"
  end

  it "has a description and can be retrieved" do
    test_task = Task.new "buy_bananas"
    expect(test_task.add_description("list of things to do today")).to eq "list of things to do today"
    expect(test_task.get_description).to eq "list of things to do today"
  end

  it "has fields and those fields have values" do
    test_task = Task.new "Buy Groceries"
    test_task.add_specifics("bananas",5)
    expect(test_task.check_field("bananas")).to be true
    expect(test_task.check_value["bananas"]).to be 5
    test_task.add_specifics("apples", 15)
    expect(test_task.check_field("apples")).to be true
    expect(test_task.check_value["apples"]).to be 15
  end

  it "can mark when a task is done" do
    test_task = Task.new "Buy Groceries"
    expect(test_task.toggle_task_done).to be true
    expect(test_task.toggle_task_done).to be false
  end

  it "shows whether the task is done or not" do
    test_task = Task.new "Pick up dry cleaning"
    expect(test_task.is_complete).to eq "Pick up dry cleaning is not done"
    expect(test_task.toggle_task_done).to be true
    expect(test_task.is_complete).to eq "Pick up dry cleaning is done"
  end

end
