def convert(number: int) -> str:
    sounds = ['Pling', 'Plang', 'Plong']
    raindrops = [number % 3 == 0, number % 5 == 0, number % 7 == 0]

    if not any(raindrops):
        return str(number)

    return ''.join([sound for sound, raindrop in zip(sounds, raindrops) if raindrop])
