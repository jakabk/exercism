def leap_year(year):
    if not bool(year % 400) or (not bool(year % 4) and bool(year % 100)):
        return True

    return False
