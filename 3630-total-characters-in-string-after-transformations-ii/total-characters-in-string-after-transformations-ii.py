class Solution:
    def lengthAfterTransformations(self, s: str, t: int, nums: List[int]) -> int:
        MOD = 10**9 + 7
        ALPHABET = 26
        
        # Paso 1: Vector inicial de frecuencias
        count = [0] * ALPHABET
        for c in s:
            count[ord(c) - ord('a')] += 1

        # Paso 2: Crear la matriz de transición
        matrix = [[0] * ALPHABET for _ in range(ALPHABET)]
        for i in range(ALPHABET):
            for j in range(nums[i]):
                matrix[(i + j + 1) % ALPHABET][i] = (matrix[(i + j + 1) % ALPHABET][i] + 1) % MOD

        # Paso 3: Función para multiplicar dos matrices
        def mat_mult(A, B):
            res = [[0] * ALPHABET for _ in range(ALPHABET)]
            for i in range(ALPHABET):
                for j in range(ALPHABET):
                    for k in range(ALPHABET):
                        res[i][j] = (res[i][j] + A[i][k] * B[k][j]) % MOD
            return res

        # Paso 4: Exponenciación de matriz
        def mat_pow(mat, exp):
            res = [[1 if i == j else 0 for j in range(ALPHABET)] for i in range(ALPHABET)]  # identidad
            while exp > 0:
                if exp % 2 == 1:
                    res = mat_mult(res, mat)
                mat = mat_mult(mat, mat)
                exp //= 2
            return res

        # Paso 5: Multiplicamos matriz^t por el vector count
        final_matrix = mat_pow(matrix, t)
        result = 0
        for i in range(ALPHABET):
            for j in range(ALPHABET):
                result = (result + final_matrix[i][j] * count[j]) % MOD

        return result