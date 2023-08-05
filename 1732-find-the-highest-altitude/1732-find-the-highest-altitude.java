class Solution {
    public int largestAltitude(int[] gain) {
        int maxAlt = 0; 
        int netAlt = 0; 

        for(int curAlt : gain) {
            netAlt = netAlt + curAlt; 
            maxAlt = Math.max(maxAlt, netAlt); 
        }

        return maxAlt; 
    }
}