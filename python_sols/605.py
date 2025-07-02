class Solution(object):
    def canPlaceFlowers(self, flowerbed, n):
        count = 0
        for i in range(len(flowerbed)):
            if flowerbed[i] == 0:
                left_spot = (i == 0) or (flowerbed[i - 1] == 0)
                right_spot = (i == len(flowerbed) - 1) or (flowerbed[i + 1] == 0)
                
                if left_spot and right_spot:
                    flowerbed[i] = 1
                    count += 1
                    if count >= n:
                        return True
                    
        return count >= n
        

def main():
    print(Solution().canPlaceFlowers([1,0,0,0,0,1], 2))

main() 