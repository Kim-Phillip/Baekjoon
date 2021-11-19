/*
별 찍기 - 2

# 문제
첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제

하지만, 오른쪽을 기준으로 정렬한 별(예제 참고)을 출력하시오.

# 입력
첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.

# 출력
첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.
*/

### 1번 풀이
var inputStarCount = Int(readLine()!)!
let star = "*"

for i in 1...inputStarCount{
    for _ in 0..<(inputStarCount-i){
        print(" ",terminator: "")
    }
    for _ in 1...i{
        print(star,terminator: "")
    }
    print("")
}

### 2번 풀이
var inputStarCount = Int(readLine()!)!

for i in 1...inputStarCount{
    let space = [Character].init(repeating: " ", count: inputStarCount-i)
    let star = [Character].init(repeating: "*", count: i)
    print(String(space+star))
}