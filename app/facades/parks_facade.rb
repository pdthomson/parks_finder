class ParksFacade
  class << self

    def get_parks(state)
      json = ParksService.get_park(state)
    end

  end
end
