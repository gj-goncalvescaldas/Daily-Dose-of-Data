class Solution:
    def sortVowels(self, s: str) -> str:
        vowels = set('aeiouAEIOU')

        extracted = [ch for ch in s if ch in vowels]

        extracted.sort()

        result = []

        for ch in s:
            if ch in vowels:
                result.append(extracted.pop(0))
            else:
                result.append(ch)

        return "".join(result)