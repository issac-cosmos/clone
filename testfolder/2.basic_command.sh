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

# head 하단의 로그만 보이는것이 아니라, 모든 log 조회
# head는 현재 checkout하고있는 commit가리킴.
git log --all

# 원격 저장소로 업로드
git push origin 브랜치명

# 충돌발생시 무시하고 강제 push, 로컬커밋 기준으로 원격 덮어쓰기
git push origin main --force

# pull은 원격의 커밋사항을 local로 다운로드(working directory까지 반영)
git pull origin main

# workingdirectory작업 및 staging area에서의 취소는 UI

# 가장 최신의 커밋 취소: working directory changes 까지로 reset
git reset head~1
git reset head^

# 버전별(commitID간, branch간) 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경이 있는지를 비교
git diff A B
git diff commitID1 commitID2
git diff 브랜치1 브랜치2

# 브랜치 생성
# 현재 checkout하고있는 브랜치를 기준으로 새로운 브랜치 생성
git branch 브랜치명

# 브랜치 전환
git checkout  브랜치명

# 브랜치 목록조회
git branch

# origin 브랜치까지 포함하여 조회
git branch --all

# 브랜치 생성과 전환을 동시에
git checkout -b 브랜치명
# 브랜치 삭제
git branch -d 브랜치명

# git fetch : 원격에 변경사항을 local에 가져오되, 병합은 하지않은것.
# 비교 : git pull origin main VS git fetch origin main


# 원격에서 삭제된 브랜치 로컬에 반영(origin/feat1)
git fetch --all --prune

