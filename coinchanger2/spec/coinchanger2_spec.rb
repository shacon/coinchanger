require "coinchanger"

describe 'Coinchanger' do
	it 'takes 1 and gives [1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(1).should == [1]
	end
	
	it 'takes two and gives {1, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(2).should == [1, 1]
	end
	
	it 'takes five and gives [5]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(5).should == [5]
	end
	
	it 'takes 9 and gives [5, 1, 1, 1, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(9).should == [5, 1, 1, 1, 1]
	end
	
	it 'takes 10 and gives [10]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(10).should == [10]
	end
	
	it 'takes 11 and gives [10, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(11).should == [10, 1]
	end
	
	it 'takes 15 and gives [10, 5]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(15).should == [10, 5]
	end
	
	it 'takes 16 and gives [10, 5, 1]' do 
	coinchanger = Coinchanger.new
	coinchanger.make_change(16).should == [10, 5, 1]
	end
	
	it 'takes 20 and gives [10, 10]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(20).should == [10, 10]
	end
	
	it 'takes 21 and gives [10, 10, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(21).should == [10, 10, 1]
	end
	
	it 'takes 25 and gives [25]' do 
	coinchanger = Coinchanger.new
	coinchanger.make_change(25).should == [25]
	end
	
	it 'takes 36 and gives [25, 10, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(36).should == [25, 10, 1]
	end
	
	it 'takes 99 and gives [25, 25, 25, 10, 10, 1, 1, 1, 1]' do
	coinchanger = Coinchanger.new
	coinchanger.make_change(99).should == [25, 25, 25, 10, 10, 1, 1, 1, 1]
	end
	
end