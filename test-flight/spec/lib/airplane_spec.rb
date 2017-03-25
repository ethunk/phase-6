require_relative "../../lib/airplane"

require 'pry'

describe Airplane do
  let(:airplane) { Airplane.new('cesna',10,150) }

  describe "#initialization" do
    it 'checks to see if you can read the type of plane' do
      expect(airplane.type).to eq('cesna')
    end
    it 'checks to see if wing_load is a reader'do
    expect(airplane.wing_load).to eq(10)
    end
    it 'checks to see if the hp is a reader' do
      expect(airplane.hp).to eq(150)
    end
  end

  describe "#start" do
    it 'should turn on the engine if it is not already running' do
      airplane_off = Airplane.new('test',150,10)
      airplane_off.engine = false
      expect(airplane_off.start).to eq("Engine is now ON")
      expect(airplane_off.engine).to eq(true)
    end
    it 'should tell the user that the engine is already on' do
      airplane_on = Airplane.new('test',10,150)
      airplane_on.engine = true
      expect(airplane_on.start).to eq("Engine is ALREADY ON")
      expect(airplane_on.engine).to eq(true)
    end
  end

  describe "#land" do
    it 'should change the state of the plane to landed' do
      airplane.start
      airplane.takeoff
      expect(airplane.land).to eq("Airplane has landed")
    end
    it 'should tell the user the plane is already landed if on the ground' do
        expect(airplane.land).to eq("Airplane is already on the ground")
    end
  end

  describe "#takeoff" do
    it 'should tell the user that the plane' do
      airplane.start
      expect(airplane.takeoff).to eq("airplane airborne")
      expect(airplane.state).to eq("airborne")
    end
    it "should tell the user that the airplane needs started" do
    expect(airplane.takeoff).to eq("airplane not started, please start")
    end
  end
end
