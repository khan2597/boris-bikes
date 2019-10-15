require './lib/bike.rb'

describe Bike do
	it 'creates new instance of bike class' do
		new_bike = Bike.new
		expect(new_bike).to be_a(Bike)
	end
	
	it 'tells you if the bike is working' do
		new_bike = Bike.new
		new_bike.working?
		expect(new_bike.working?).to eq true
	end

	it 'creates an instance of a broken bike' do
		broken_bike = Bike.new(broken)
		expect(broken_bike.working?).to eq false
	end
end