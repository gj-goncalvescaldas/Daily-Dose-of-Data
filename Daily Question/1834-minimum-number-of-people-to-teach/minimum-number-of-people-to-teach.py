class Solution:
    def minimumTeachings(self, n: int, languages: List[List[int]], friendships: List[List[int]]) -> int:
        langs = [set(l) for l in languages]

        print(langs)

        problematic_users = set()

        for u, v in friendships:
            u -= 1
            v -= 1

            if not (langs[u] & langs[v]):
                problematic_users.add(u)
                problematic_users.add(v)

        if not problematic_users:
            return 0

        ans = float("inf")  
        for lang in range(1, n + 1):  
            teach = 0
            for user in problematic_users:
                if lang not in langs[user]:
                    teach += 1
            ans = min(ans, teach)  

        return ans