def collect(n, m):
    days = [
        'first',
        'second',
        'third',
        'fourth',
        'fifth',
        'sixth',
        'seventh',
        'eighth',
        'ninth',
        'tenth',
        'eleventh',
        'twelfth',
    ]
    presents = [
        "a Partridge in a Pear Tree",
        "two Turtle Doves",
        "three French Hens",
        "four Calling Birds",
        "five Gold Rings",
        "six Geese-a-Laying",
        "seven Swans-a-Swimming",
        "eight Maids-a-Milking",
        "nine Ladies Dancing",
        "ten Lords-a-Leaping",
        "eleven Pipers Piping",
        "twelve Drummers Drumming",
    ]

    for nth in range(n, m + 1):
        gave_me = f"{', '.join([present for present in presents[1:nth][::-1]])}" \
                  f"{', and ' if nth > 1 else ''}" \
                  f"{presents[0]}."
        yield f"On the " \
              f"{days[nth - 1]} " \
              f"day of Christmas my true love gave to me:" \
              f" {gave_me}"


def recite(start_verse, end_verse):
    return list(collect(start_verse, end_verse))
