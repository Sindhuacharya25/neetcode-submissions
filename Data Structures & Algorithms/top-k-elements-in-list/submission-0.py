class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        count = {}
        for num in nums:
            if num in count:
                count[num] = count[num] + 1
            else:
                count[num] = 1
        
        import heapq

        heap = []
        for num, freq in count.items():
            heapq.heappush(heap, (freq, num))
            if len(heap) > k:
                heapq.heappop(heap)
        
        result = []
        for freq, num in heap:
            result.append(num)
        return result