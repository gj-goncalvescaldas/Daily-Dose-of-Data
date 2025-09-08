class Solution:
    def areaOfMaxDiagonal(self, dimensions: List[List[int]]) -> int:
        max_diag = 0
        max_area = 0

        for l, w in dimensions:
            diag = l*l + w*w
            area = l*w

            if diag > max_diag:
                max_diag = diag
                max_area = area

            elif diag == max_diag and area > max_area:
                max_area = area

        return max_area