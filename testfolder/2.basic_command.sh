# 현재 working directory, staging area 상태 확인
git status

# . : 모든 수정 및 추가사항을 의미
git add .
git add . 특정파일(경로파일)

# commit을 통해 메시지타이틀과 메세지내용을 커밋이력으로 생성
git commit -m "메세지 타이틀" -m "메세지 내용"

# git commit만하고 엔터실행시 vi모드
# 첫줄: 타이틀,두번째줄부터 contents
git commit

# add와 commit을 동시에
git commit -am "커밋 메시지"