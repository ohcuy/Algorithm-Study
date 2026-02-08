H, W, N, M = map(int, input().split())

# 인당 N+1 칸이 필요함, 마지막 사람은 빈칸 없이 앉아도 됨 -> H+N
rows = (H + N) // (N + 1)
cols = (W + M) // (M + 1)

print(rows * cols)

# # for문  -> 시간초과
# count = 0
# for r in range(0, H, N + 1):      # 0부터 H-1까지 (N+1)씩 점프
#     for c in range(0, W, M + 1):  # 0부터 W-1까지 (M+1)씩 점프
#         count += 1

# print(count)