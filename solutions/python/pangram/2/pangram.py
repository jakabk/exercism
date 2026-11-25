from string import ascii_lowercase

def is_pangram(sentence: str) -> bool:
    return set([char for char in sentence.lower() if char.isalpha()]) == set(ascii_lowercase)
