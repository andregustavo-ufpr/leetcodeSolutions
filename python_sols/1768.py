class Solution(object):
    def mergeAlternately(self, word1, word2):
        """
        :type word1: str
        :type word2: str
        :rtype: str
        """

        max1, max2 = len(word1), len(word2)
        result = ""
        bigger = word1 if max1 > max2 else word2

        for pos in range(0, len(bigger)):
            if pos < max1:
                result += word1[pos]
            if pos < max2:
                result += word2[pos]

        return result

def main():
    print(Solution().mergeAlternately("abc", "pqr"))

# if __name__ == "main":
main()