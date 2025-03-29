// BFS
import java.io.*;
import java.util.*;

class Main {
    static ArrayList<ArrayList<Integer>> nodeList;
    static boolean[] isVisited;
    static int count = 0;
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine()); // 컴퓨터의 수 (노드 수)
        int m = Integer.parseInt(br.readLine()); // 연결되어 있는 컴퓨터 쌍의 수 (간선 수)

        nodeList = new ArrayList<>();
        isVisited =  new boolean[n+1];

        for (int i = 0; i <= n; i++) {
            nodeList.add(new ArrayList<>());
        }

        // 간선 수 만큼 연결 리스트 생성
        for (int i = 0; i < m; i++) {
            StringTokenizer st = new StringTokenizer(br.readLine());
            int from = Integer.parseInt(st.nextToken());
            int to = Integer.parseInt(st.nextToken());

            // 양방향으로 넣기
            nodeList.get(from).add(to);
            nodeList.get(to).add(from);
        }

        bfs(1);
        System.out.println(count-1);
    }

    static void bfs(int v) {
        Queue<Integer> q = new LinkedList<>();
        q.add(v);
        isVisited[v] = true;

        while (!q.isEmpty()) {
            int node = q.poll();
            count ++;

            for (int cur : nodeList.get(node)) {
                if (!isVisited[cur]) {
                    q.add(cur);
                    isVisited[cur] = true;
                }
            }
        }
    }
}