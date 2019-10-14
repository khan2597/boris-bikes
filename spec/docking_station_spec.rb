require './lib/docking_station.rb'

describe DockingStation do
    it 'should create a new instance of the DockingStation class' do
      new_dock = DockingStation.new
      expect(new_dock).to be_a(DockingStation)
    end

    it 'should pass instances of the Bike class to bikes instance variable' do
			new_dock = DockingStation.new
			expect(new_dock).to respond_to(:dock).with(1).argument
    end

    it 'should release bike from docking station' do
      new_dock = DockingStation.new
      new_dock.release_bike
      expect(new_dock.release_bike).to be_a(Bike)
    end
    it 'should call the bike method on docking station class' do
      new_dock = DockingStation.new
      expect(new_dock).to respond_to(:bike)
    end

    it 'docks bike' do
      new_bike = Bike.new
      expect(subject.dock(new_bike)).to eq new_bike
    end
end