require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe("#make") do
    it("returns the vehicle's make") do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2000")
      test_vehicle.save()
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe("#model") do
    it("returns the vehicle's model") do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2000")
      test_vehicle.save()
      expect(test_vehicle.model()).to(eq("Prius"))
    end
  end

  describe("#year") do
    it("returns the vehicle's year") do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2000")
      test_vehicle.save()
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

  describe("#id") do
    it("returns the specific id for a vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2000")
      test_vehicle.save()
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe(".all") do
    it("is empty at first") do
    expect(Vehicle.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("pushes a vehicle into the array") do
    test_vehicle = Vehicle.new("Toyota", "Prius", "2000")
    expect(test_vehicle.save()).to(eq([test_vehicle]))
    end
  end

  describe(".clear") do
    it("clears out the saved vehicles array") do
    test_vehicle = Vehicle.new("Toyota", "Prius", "2000")
    test_vehicle.save()
    expect(Vehicle.clear()).to(eq([]))
    end
  end

  describe(".find") do
    it("finds a specific car by its id") do
      test_vehicle = Vehicle.new("GM", "gremlin", "1984")
      test_vehicle.save()
      test_vehicle2 = Vehicle.new("Honda", "element", "2003")
      test_vehicle2.save()
      expect(Vehicle.find(test_vehicle2.id()))
        .to(eq(test_vehicle2))
    end
  end

  describe("#age") do
    it("returns the age of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2000")
      expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe("@worth_buying?") do
    it("returns true only if vehicle both american and 15 years or younger") do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2000")
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end

end
