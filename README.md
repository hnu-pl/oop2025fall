# oop2025fall
OOP course @ HNU CE (2025 fall)

## Links
수업 노트 관련
  - https://github.com/forax/java-guide 이 온라인 강의노트를 참고로 내용 선택 및 더 필요한 내용 추가

프로그래밍 환경 관련
  - [GitHub Codespace 문서](https://docs.github.com/ko/codespaces) 깃헙 코드스페이스는 클라우드를 통해 제공되는 개발환경
    - https://sdkman.io/ 코드스페이스에서 기본적으로 사용하는 JDK 설치/설정 관리 도구
      - [SDKMAN으로 JAVA 관리하기](https://steady-hello.tistory.com/134)
  - https://github.com/jupyter-java 주피터 환경에서 자바를 사용하기 위한 환경 설정 관련 내용 정리
    - [JBang](https://www.jbang.dev/) 자바 개발 환경 설치를 간편하게 해주는 관리 도구
    - [rapaio-jupyter-kernel 2.1.0](https://github.com/padreati/rapaio-jupyter-kernel/tree/2ce7a0c8dde6f35af2a276f14afff4ff998275f1) 수업시간에 활용하는 자바 주피터 커널
  - TODO코틀린 관련 환경은 추후 업데이트 예정
  
프로그래밍 언어 관련
  - https://docs.oracle.com/en/java/javase/22/ JDK 22 문서
    - [JDK 21이 출시되었다. 최신 문법 보고 가요](https://velog.io/@dongvelop/JDK-21%EC%9D%B4-%EC%B6%9C%EC%8B%9C%EB%90%98%EC%97%88%EB%8B%A4.-%EC%B5%9C%EC%8B%A0-%EB%AC%B8%EB%B2%95%EC%9D%80-%EC%82%B4%ED%8E%B4%EB%B4%90%EC%95%BC%EC%A7%80) 
  - https://kotlinlang.org/docs/ Kotlin 2.0.x 문서

## Installing and running the programming environment
기본적으로 Codespace 안에서 설치하는 것을 기준으로 한다.
다른 리눅스 호환 환경에 코드스페이스와 대략 비슷한 버전의 java, python, jupyter 등을 설치한다면 마찬가지 방법으로 프로그래밍 환경을 구성할 수 있다.

코드스페이스 실행방법은 깃헙 페이지에 초록색 Code 버튼을 누르면 나오는 팝업창에서 Codespaces 탭에 가서 +버튼을 눌러서 새롭게 만들 수 있고, 그 다음부터는 만들어진 것을 Codespacs 탭에서 찾아서 클릭하면 된다.

아래 자세히 설명된 과정을 미리 요약하자면 대략 다음과 같은 순서로 자바 주피터 환경 설치 및 실행이 진행된다.
코드스페이스 터미널 명령창에서
- Installation steps나오는 설치법대로 3개의 명령어를 실행하면 설치됨
  (마지막 명령어는 새로운 터미널에서 실행해야 함에 유의!)
- How to run에 나오는 실행 명령(jupyter-lab 으로 시작하는 거)을 실행하면 주피터 서버가 실행됨
- 서버가 성공적으로 실행되면 뜨는 팝업창에서 "브라우저로 접속" 이라는 파란색 버튼을 잘 찾아서 누르면 주피터 클라이언트를 사용할 수 있음
  (혹시 그걸 실수로 닫거나 놓치면 "포트"에서 지구본 모양을 잘 찾아보세요. 지구본에 마우스를 갖다다면 "브라우저로 접속"이라고 마우스 옆에 뜰겁니다)

### Before installing
학기 초에 시험해 본 바에 따르면 Codespace에 기본적으로 다음과 같은 python, jupyter가 설치되어 있었다.
```
@~ ➜ /workspaces/oop2024fall (main) $ python --version
Python 3.12.1
@~ ➜ /workspaces/oop2024fall (main) $ jupyter --version
Selected Jupyter core packages...
IPython          : 8.26.0
ipykernel        : 6.29.5
ipywidgets       : not installed
jupyter_client   : 8.6.2
jupyter_core     : 5.7.2
jupyter_server   : 2.14.2
jupyterlab       : 4.2.4
nbclient         : 0.10.0
nbconvert        : 7.16.4
nbformat         : 5.10.4
notebook         : not installed
qtconsole        : not installed
traitlets        : 5.14.3
```
   
### Installation steps
코드스페이스(또는 적절한 리눅스 환경)에서 명령어 3개만 입력하면 된다.
```
sdk install java 22.0.2-tem
```
위 명령은 Codespace(또는 sdkman으로 자바 설치를 관리하는 시스템)에서만 필요한데, 설치 중에 뭐라고 물어보면 Y를 입력하면 된다.
(이걸 Y가 아니라 n으로 잘못 누르면 환경설정이 꼬여서 설치가 제대로 되지 않는다.)

```
curl -Ls https://sh.jbang.dev | bash -s - app setup
```
위와 같이 실행 후, 그 다음 아래 명령은 터미널을 닫고 **새로운 터미널을 열어서** (명령 입력하는 부분 왼쪽에 bash라고 되어 있는 거 바로 위쪽에 +버튼으로 코드스페이스 안에서 새로운 터미널을 열 수 있다.) 다음으로 진행한다.
(성공적으로 설치되면 영문으로 새로운 터미널을 열라는 내용이 포함된 메시지가 출력될 것이다.)

```
jbang --java 22 io.github.padreati:rapaio-jupyter-kernel:2.1.0 -i -auto
```

여기까지 성공적으로 rapaio 자바 커널(런타임)을 설치하면 끝!!

### How to run
```
jupyter-lab --no-browser --IdentityProvider.token='x'
```
이렇게 실행하여 새로운 웹브라우저 창/탭에서 토큰으로 설정한 x를 입력하여 주피터 환경에 접속

로컬 환경에 설치한 경우에는 아무런 없이 `jupyter-lab` 으로만 실행해도 됨

성공적으로 주피터 환경을 띄운 후에, 노트북을 새로 만들거나 실행시킬 때는 파이썬이 아닌 자바 커널을 기본으로 설정하여 실행시키고 있는 중인지 확인할 것
- 주피터 환경의 왼쪽 파일 목록 위에 있는 +버튼이 아니라 그냥 파일 목록에 우클릭해서 팝업창으로 New notebook을 만들면 기본적으로 파이썬으로 설정된 노트북이 만들어짐
- 그래서 처음부터 주피터 환경 왼쪽 파일 목록 위에 있는 +버튼으로 새로운 노트북을 자바 커널을 기본으로 해서 (J가 적혀 있는 아이콘으로) 만드는 것을 추천
- 혹시 파이썬 커널을 기본 설정으로 만든 노트북이라도 코드 작성 탭의 우상단에 python3 kernel이라고 나오는 거를 (브라우저 좌우폭이 작으면 안보일 수도 있으므로 전체화면으로 보면 웬만하면 보임) 클릭해서 자바 커널로 변경 가능

### Updating repository contents
코드스페이스는 실행을 시작한 시점의 저장소 내용을 포함하므로, 이후로 추가된 강의노트 등의 내용을 업데이트하려면 `git pull` 명령을 코드스페이스 터미너에서 실행.

그런데, 저장소에 등록된 기존 파일이 코드스페이스에서 수정된 경우  `git pull`이 충돌이 나며 실패할 수 있는데, 그런 경우는 `git stash`로 수정되었던 내용을 원상복구하고 나서 다시 `git pull`하면 된다.

그래서 추천하는 작업 방식은 저장소에 등록된 파일을 직접 수정하지 말고 별도의 디렉토리를 만들어 거기에 복사본을 만들어 놓고 사용하는 것을 권장한다.

### Troubleshooting
커널이 정상적으로 연결되어 실행중이면 코드를 보고 편집하는 노트북 탭의 우상단에 동그라미가 흰색이라야 함.

그런데 여러 가지 알 수 없는 이유로 코드스페이스에서 자바 커널이 연결되지 않는 경우가 발생할 수 있다.

우선 설치가 제대로 안 되어서 실패하는 경우도 있을 수다. 예를 들어 설치 첫 번째 명령에서 Y가 아니라 n을 눌렀다든지 해서 설치가 꼬여버린 경우는 주피터 서버가 돌아가는 코드스페이스 터미널에서 Java version 어쩌고 이런 에러가 나고 있을 수 있다. 이러면 그냥 설치가 잘못된 것이므로 지금 사용하고 있는 코드스페이스는 버리고, 차라리 새로운 코드스페이스를 하나 더 만들어서 처음 설치부터 깨끗한 환경에서 하는 것을 추천한다.
그런 게 아니고 설치는 제대로 되었는데 서버가 그냥 불안정해져서 일시적으로 오류가 난다고 판단되는 상황이라면 아래의 내용을 참고하면 도움이 될 수 있다.

문제 발생을 피하려면 주피터 노트북 환경에서 한 번에 하나의 노트북 파일만 실행하는 것이 좋으므로 다음과 같은 팁을 소개한다.
  - 파일 목록에서 실행중인 노트북은 왼쪽에 초록색 점이 찍혀 있는 것으로 확인 가능
  - 실행 중인 노트북을 종료하려면 일단 노트북 편집 탭을 닫고 파일 목록에서 우클릭한 다음 Shutdown

(참고로, 자신의 로컬 컴퓨터에 직접 설치하면 더 많은 메모리와 CPU 자원을 사용할 수 있을 것이으므로 커널 문제 발생이 좀 덜할 수도 있다.)

커널이 정상적으로 연결되어 실행되지 않는 문제가 발생한 경우 다음과 같은 방법을 시도해 보라.
1. 일단 주피터 환경 안에서 다음과 같은 순서로 해결 시도
   1. 노트북 편집 탭 상단 아이콘 중 ⟳버튼으로 커널 재시작해 보고, 그래도 안되면
   1. 주피터 노트북 환경에서 노트북 편집 탭을 모두 닫고 모든 실행중인 노트북을 Shutdown 한 다음 다시 실행
1. 코드스페이스에서 주피터 서버 재시작
   1. jupyter-lab으로 시작하는 명령으로 주피터 서버가 실행중인 터미널에서 Ctrl-C 연타
   2. jupyter-lab으로 시작하는 명령으로 주피터 서버 재시작
3. 코드스페이스 재시작 (웬만하면 이것까지 할 일은 없겠지만 ...)
