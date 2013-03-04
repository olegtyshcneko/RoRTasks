require 'rspec'
require '../RoRCourse_task4.rb'


describe CodeMaker do
	before(:each) do
		@codemaker = mock('codemaker')
		@codemaker.stub!(:genCode).and_return([5,3,2,8])		
		@output = mock('output')
		@game = GameLogic.new(@output)
	end
	it "welcome message should be printed" do
		@output.should_receive(:puts).with("Hello %username. Welcome to our cool game.")
		@output.should_receive(:puts).with("Type in your first guess: ")
		@game.start
	end
	it "call gets" do
		@output.should_receive(:gets)
		@game.getGuess
	end
	it "should generate 5 3 2 8" do
		@codemaker.genCode.should eq ([5,3,2,8])		
	end

end
