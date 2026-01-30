def solution(id_pw, db):
    login_id = id_pw[0]
    login_pw = id_pw[1]
    
    for i in db:
        if i[0] == login_id:
            if i[1] == login_pw:
                return "login"
            else:
                return "wrong pw"
    else:
        return "fail"