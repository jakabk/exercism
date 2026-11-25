def leap_year(year: int) -> bool:
    return not bool(year % 4) and (bool(year % 100) or not bool(year % 400))
