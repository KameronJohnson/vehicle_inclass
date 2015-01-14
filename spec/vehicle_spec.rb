require('rspec')
require('vehicle')

describe(Vehicle) do
  describe("#age") do
    it("returns the age of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2000")
      expect(test_vehicle.age()).to(eq(15))
    end
  end
end
