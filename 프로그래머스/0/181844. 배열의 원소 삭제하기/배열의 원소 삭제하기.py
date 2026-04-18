def solution(arr, delete_list):
    # set으로 변경 - 리스트는 O(n), set은 O(1)
    delete_set = set(delete_list)
    
    result = []
    for x in arr:
        if x not in delete_set:
            result.append(x)
    return result