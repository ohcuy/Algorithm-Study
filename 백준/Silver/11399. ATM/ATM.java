import java.io.*;
import java.util.Arrays;
import java.util.StringTokenizer;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());

        int arr[] = new int[n];

        StringTokenizer st = new StringTokenizer(br.readLine());

        for (int i = 0; i < n; i++) {
            arr[i] = Integer.parseInt(st.nextToken());
        }

        Arrays.sort(arr);
        int sum = 0; // 개별 대기 시간 (이전 인덱스들까지 더한 값)
        int result = 0; // 전체 대기 시간의 합

        for (int i = 0; i < n; i++) {
            sum += arr[i];
            result += sum; // 총 대기시간에 추가
        }

        System.out.println(result);
    }

}