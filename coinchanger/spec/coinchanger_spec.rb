require 'coinchanger'

describe 'Coinchanger' do
	it 'converts one penny into [1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(1).should == [1]
	end
	
	it 'converts two pennies into [1, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(2).should == [1, 1]
	end
	
	it 'converts 5 into [5]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(5).should == [5]
	end
	
	it 'converts 9 into [5, 1, 1, 1, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(9).should == [5, 1, 1, 1, 1]
	end
	
	it 'converts 10 into [10]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(10).should == [10]
	end
	
	it 'converts 11 into [10, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(11).should == [10, 1]
	end
	
	it 'converts 15 into [10, 5]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(15).should == [10, 5]
	end
	
	it 'converts 16 into [10, 5, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(16).should == [10, 5, 1]
	end
	
	it 'converts 20 into [10, 10]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(20).should == [10, 10]
	end
	
	it 'converts 21 into [20, 1]' do
	coinchanger = Coinchanger.new 
	coinchanger.make_change(21).should == [10, 10, 1]
	end
	
	it 'converts 25 into [25]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(25).should == [25]
	end
	
	it 'converts 36 into [25, 10, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(36).should == [25, 10, 1]
	end
	
	it 'converts 99 into [25, 25, 25, 1, 1, 1, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(99).should == [25, 25, 25, 10, 10, 1, 1, 1, 1]
	end
	
end