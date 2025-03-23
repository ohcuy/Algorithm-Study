import java.io.*;
import java.util.*;

class Main {
    static int[][] dp = new int[31][31];
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();

        int t = Integer.parseInt(br.readLine());

        for(int i = 0; i < t; i++) {
            StringTokenizer st = new StringTokenizer(br.readLine());
            int n = Integer.parseInt(st.nextToken());
            int m = Integer.parseInt(st.nextToken());

            // m개에서 n개 뽑기
            sb.append(combination(m, n)).append("\n");
        }
        
        System.out.print(sb);
    }

    static int combination(int m, int n) {
        if (n == 0 || m == n) return 1;

        if (dp[m][n] != 0) {
            return dp[m][n];
        }
        
        return dp[m][n] = combination(m-1, n-1) + combination(m-1, n);
    }
}