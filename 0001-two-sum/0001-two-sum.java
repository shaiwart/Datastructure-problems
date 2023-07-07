class Solution {
    public int[] twoSum(int[] nums, int target) {
        int[] ans = new int[2]; 
        int len = nums.length; 
        // use some container to solve this problem 
        // map or set ?? which one to use ? 
        // just obesrve the requirement and then choose which one to use. 

        Map<Integer, Integer> map = new HashMap<Integer, Integer>(); 

        for(int i=0; i<len; i++) {
            if(map.containsKey(target-nums[i])) {
                ans[0]=i; 
                ans[1]=map.get(target-nums[i]); 
                return ans; 
            }
            map.put(nums[i],i); 
        }


        return ans; 
    }
}