class Solution(object):
    def kidsWithCandies(self, candies, extraCandies):
        """
        :type candies: List[int]
        :type extraCandies: int
        :rtype: List[bool]
        """

        maxCand = 0
        result = []

        for kid in candies:
            maxCand = max(maxCand, kid)

        for kid in range(0, len(candies)):
            result.append((candies[kid] + extraCandies) >= maxCand)

        return result
    
def main():
    print(Solution().kidsWithCandies([2,3,5,1,3], 3))

main()