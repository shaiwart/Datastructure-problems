class Solution {
    public int pivotIndex(int[] nums) {
        int len = nums.length; 
        int[] leftSum = new int[len]; 
        int[] rightSum = new int[len];  


        // left sum 
        int lSum = 0;
        for(int i=0; i<len; i++) {
            lSum += nums[i]; 
            leftSum[i] = lSum; 
        }


        // right sum 
        
        int rSum = 0; 
        for(int i=len-1; i>=0; i--) {
            rSum += nums[i]; 
            rightSum[i] = rSum; 
        }

        for(int i=0; i<len; i++) {
            if(leftSum[i] == rightSum[i]) {
                return i;
            }
        }

        return -1; 

    }
}