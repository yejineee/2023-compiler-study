# 여러 개의 c 파일을 컴파일하기

## 실행 방식

### 실행 파일 만들기
- Option 1: 실행 가능한 파일만 만들기
```
gcc main.c util.c -o main
```

- Option 2: 중간 과정들 파일까지 만들기
```
gcc -Wall -save-temps main.c util.c -o main
```

### 실행하기

```
./main
```
