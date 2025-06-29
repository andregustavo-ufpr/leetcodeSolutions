class Solution(object):
    def gcd(self, a, b):
        while b:
            a, b = b, a%b
        return a

    def gcdOfStrings(self, str1, str2):
        """
        :type str1: str
        :type str2: str
        :rtype: str
        """

        if str1+str2 != str2+str1:
            return ""

        max_length = self.gcd(len(str1), len(str2))
        return str1[:max_length]
    
def main():
    print(Solution().gcdOfStrings("ABCABC", "ABC"))

main()