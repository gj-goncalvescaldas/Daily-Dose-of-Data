class Solution:
    def lengthAfterTransformations(self, s: str, t: int) -> int:
        MOD = 10**9 + 7 #Since the answer may be very large, return it modulo 10**9 + 7.

        count = [0] * 26
        
        for ch in s:
            count[ord(ch)- ord('a')] += 1

        
        for _ in range(t):
            
            new_count = [0] * 26

            for i in range(25):
                new_count[i + 1] = count[i]
            
            new_count[0] += count[25]
            new_count[1] += count[25]

            count = new_count

        return sum(count) % MOD            