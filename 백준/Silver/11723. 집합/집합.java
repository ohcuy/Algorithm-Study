import java.io.*;
import java.util.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        int m = Integer.parseInt(br.readLine());

        int S = 0;

        for (int i = 0; i < m; i++) {
            String line = br.readLine().trim();
            if (line.isEmpty()) continue; // 빈 줄 무시

            StringTokenizer st = new StringTokenizer(line);
            String cmd = st.nextToken();

            switch (cmd) {
                case "add":
                    int x = Integer.parseInt(st.nextToken());
                    S |= (1 << x); // x번째 비트 1으로 바꾸기
                    break;

                case "remove":
                    int y = Integer.parseInt(st.nextToken());
                    S &= ~(1 << y); // x번째 비트 0으로 바꾸기
                    break;

                case "check":
                    int z = Integer.parseInt(st.nextToken());
                    int checking = (S & (1 << z)) != 0 ? 1 : 0;
                    sb.append(checking).append("\n");
                    break;

                case "toggle":
                    int u = Integer.parseInt(st.nextToken());
                    S ^= (1 << u);
                    break;
                
                case "all":
                    S = (1 << 21) - 1; // 1부터 20까지 모두 1로 설정
                    break;
                
                case "empty":
                    S = 0; // 공집합으로 초기화
                    break;
            }
        }
        System.out.print(sb.toString());
    }
}