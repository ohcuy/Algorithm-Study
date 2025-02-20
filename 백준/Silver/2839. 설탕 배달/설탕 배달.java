import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());

        int count = 0;

        while (n > 0) {
            if (n % 5 == 0) {
                count += n / 5;
                System.out.println(count);
                return; // 종료
            }
            if (n < 3) {
                System.out.println(-1);
                return; // 종료
            }
            n -= 3;
            count++;
        }
        System.out.println(count);
    }

}