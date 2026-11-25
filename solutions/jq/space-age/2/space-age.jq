# input: a floating point number
# output: the number rounded to two decimal places
def two_decimal: ((. * 100) | round) / 100;

def orbital_periods(planet):
  {
    Mercury: 0.2408467,
    Venus: 0.61519726,
    Earth: 1.0,
    Mars: 1.8808158,
    Jupiter: 11.862615,
    Saturn: 29.447498,
    Uranus: 84.016846,
    Neptune: 164.79132
  }[planet] // ("not a planet" | halt_error(1))
;

def seconds_of_earth_year:
  60 * 60 * 24 * 365.25

.seconds / orbital_periods(.planet) / seconds_of_earth_year | * 60 * 24 * 365.25) | two_decimal
