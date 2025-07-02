class Solution(object):
    def isVowel(self, letter):
        return letter in ("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")

    def reverseVowels(self, s):

        l, r = 0, len(s)-1
        found_l, found_r = False, False
        string = list(s)
        for _ in string:
            if not self.isVowel(string[l]):
                l += 1
            else:
                found_l = True
            if not self.isVowel(string[r]):
                r -= 1
            else:
                found_r = True

            if found_r and found_l:
                string[l], string[r] = string[r], string[l]
                found_l, found_r = False, False
                r -= 1
                l += 1


            if r <= l:
                break

        return "".join(string)

def main():
    print(Solution().reverseVowels("leetcode"))

main() 
