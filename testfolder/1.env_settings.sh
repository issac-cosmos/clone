# . 은 모든 변경사항을 의미. 특정파일만을 add시킬수도 있음
# add는 stagin area로 변경사항을 이동함을 의미

git add .

#commit은 staing area의 변경하항을 확정짓고 commitID를 생성
git commit -m "메세지"

# origin은 원격지를 의미
git push origin 브랜치명

# github인증방법2가지
# 1.pat토큰발급: github에서 직접 token발급
# 2.vscode, intellij 등 개발 tool을 활용하여 제3자인증(oauth)

# git 프로젝트 생성방법 2가지
# 1. 원격 repo 생성후 clone : .git폴더까지 다운로드
# 2. 로컬에서부터 먼저 개발된 프로젝트를 추후에 github에 업로드
# 2-1) .git 폴더를 생성
git init
# 2-2) 원격지 주소를 추가
git remote add origin 레포주소
# 원격지 주소 변경
git remote set-url origin 레포주소
# 원격지 주소 삭제
git remote remove origin

# git 설정정보 조회
git config --list

# 강사 repo 에서 repo 1개 clone 받아서 본인 repo로 만들기
# 1. 커밋이력 그대로 가져가기: 원격지 주소만 변경
git clone 타인레포주소
git remote set-url origin 본인레포주소
git push origin master
# 2. 커밋이력 없이 가져가기 : .git폴더 삭제 ->
git clone 타인레포주소
.git폴더 삭제
git init
git remote add origin 내레포주소
git checkout -b main
git add .
git commit -m "메시지"
git push origin main

# 사용자지정방법
# 전역적 사용자(이름, email)지정
# 지역적 사용자(이름, email)지정
# 현재 레파지토리에 한해서만 사용자 변경
git config --local user.name "유저네임"
git config --local user.email "유저이메일"



# .gitignore 파일은 git 추적목록에서 제외대상 나열
# 경로를 정확히 표시(경로는 root경로에서부터 시작)
# ex)ignoretext.txt 또는 textfolder/ignoretest2.txt
# 만약 이미 git에서 추적되고있는 파일은 아래와 같이 캐시 삭제후에 ignore처리
