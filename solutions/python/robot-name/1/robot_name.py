import itertools
import random
import string


class NameRegistrationError(Exception):
    pass


NAME_PATTERNS = [(string.ascii_uppercase, 2), (string.digits, 3)]


class NameRegistry:

    def __init__(self):
        self._registry = []

    def __call__(self, name):
        if not self._check_available_names():
            raise NameRegistrationError('There is no more name available')

        if name in self._registry:
            return False

        self._registry.append(name)
        return True

    def _check_available_names(self):
        return len(self._registry) < sum([len(pattern[0]) ** pattern[1] for pattern in NAME_PATTERNS])


class Robot:

    def __init__(self):
        self._register_name = NameRegistry()
        self.name = self.generate_new_name()

    def reset(self):
        self.name = self.generate_new_name()

    def generate_new_name(self):
        while True:
            name = self._generate_name()
            if self._register_name(name):
                break

        return name

    def _generate_name(self):
        return ''.join(
            itertools.chain.from_iterable([
                random.sample(pattern[0], pattern[1]) for pattern in NAME_PATTERNS
            ])
        )
