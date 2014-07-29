
class Coinchanger
    def initialize()
    end
    def make_change(amount)
		pchange = [1]
		nchange = [5]
		dchange = [10]
		qchange = [25]
		quarters = (amount/25)
		dimes = (amount - (quarters * 25))/10
		nickels = (amount - (dimes * 10) - (quarters *25))/5
		pennies = amount -(nickels * 5) - (dimes * 10) - (quarters * 25)
		qchange * quarters + dchange * dimes + nchange * nickels + pchange * pennies 
	end
end


