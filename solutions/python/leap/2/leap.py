def leap_year(year):
    return not bool(year % 400) if not bool(year % 100) else not bool(year % 4)
