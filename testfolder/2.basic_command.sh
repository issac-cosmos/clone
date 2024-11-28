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

# commit 이력확인 (local repository의 이력)
git log

# log 내용 간결하게 한줄로
git log --oneline

# log 내용 그래프 브런치로
git log --graph

# 원격 저장소로 업로드
git push origin 브랜치명

# 충돌발생시 무시하고 강제 push
git push origin main --force