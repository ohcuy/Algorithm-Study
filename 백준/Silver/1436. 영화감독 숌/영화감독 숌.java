import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());

        int num = 666;
        int count = 1;

        while (count != N) {
            num++;
            if (String.valueOf(num).contains("666")) {
                count++;
            } // N과 count가 같아질 때 까지 증가시킴 (회차 증가)
        }

        StringBuilder sb = new StringBuilder();
        sb.append(num);
        System.out.print(sb);
    }

}