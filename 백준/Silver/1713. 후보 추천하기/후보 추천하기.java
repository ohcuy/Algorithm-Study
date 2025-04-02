import java.io.*;
import java.util.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine()); // 사진틀의 개수
        int total = Integer.parseInt(br.readLine()); // 전체 학생의 총 추천 횟수

        List<Integer> frameList = new ArrayList<>();
        Map<Integer, Integer> studentList = new HashMap<>();
        StringTokenizer st = new StringTokenizer(br.readLine(), " ");

        for (int i = 0; i < total; i++) {
            int cur = Integer.parseInt(st.nextToken());

            if (studentList.containsKey(cur)) {
                // 현재 사진이 게시된 학생이 다른 학생의 추천을 받은 경우에는 추천받은 횟수만 증가시킨다.
                studentList.put(cur, studentList.get(cur)+1);
            } else {
                // 비어있는 사진틀이 없는 경우에는 현재까지 추천 받은 횟수가 가장 적은 학생의 사진을 삭제하고, 그 자리에 새롭게 추천받은 학생의 사진을 게시한다.
                // 이때, 현재까지 추천 받은 횟수가 가장 적은 학생이 두 명 이상일 경우에는 그러한 학생들 중 게시된 지 가장 오래된 사진을 삭제한다.
                if (frameList.size() == n) {
                    int minStudent = 1001; // 총 추천 횟수는 1,000번 이하
                    int frameIndex = 0;

                    for (int j = 0; j < frameList.size(); j++) {
                        int s = frameList.get(j); // 사진틀에 있는 학생 번호 가져오기

												// 최소 추천 횟수 비교
                        if (studentList.get(s) < minStudent) {
                            minStudent = studentList.get(s);
                            frameIndex = j;
                        }
                    }

                    studentList.remove(frameList.get(frameIndex));
                    frameList.remove(frameIndex);

                }

                // 어떤 학생이 특정 학생을 추천하면, 추천받은 학생의 사진이 반드시 사진틀에 게시되어야 한다.
                studentList.put(cur, 1);
                frameList.add(cur);
            }
        }

        Collections.sort(frameList); //오름차순 정렬       
        for (int s : frameList) {
            System.out.print(s+" ");
        }
    }
}