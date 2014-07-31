class Coinchanger

	def make_change(amount)
	arr = []
	(1..amount/25).to_a.each { |i| arr.push(25) }
	amount = amount - (25 * (amount/25))
	(1..amount/10).to_a.each { |i| arr.push(10)}
	amount = amount - (10 * (amount/10))
	(1..amount/5).to_a.each { |i| arr.push(5)}
	amount = amount - (5 * (amount/5) )
	(1..amount).to_a.each { |i| arr.push(1)}
	return arr
	end
	
	
	
end

