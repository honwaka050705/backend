module Calendar
  module NipponWestern
    def nippon_to_western(year, nippons_year)
      (year.to_i + nippons_year.to_i - 1).to_s
    end
  end
end
