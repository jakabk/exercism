def is_isogram(string):

    letters = [character for character in string.lower() if character.isalpha()]

    return len(letters) == len(set(letters))
