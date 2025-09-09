class Solution:
    def peopleAwareOfSecret(self, n: int, delay: int, forget: int) -> int:
        MOD = 10**9 + 7

        dp = [0] * (n + 1) #criacion lista

        dp[1] = 1

        for i in range(1, n + 1):
            for j in range(i + delay, min(i + forget, n + 1)):
                dp[j] = (dp[j] + dp[i]) % MOD
        
        ans = 0

        for i in range(n - forget + 1, n + 1):
            ans = (ans + dp[i]) % MOD

        return ans
