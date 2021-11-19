/*
X보다 작은 수

# 문제
정수 N개로 이루어진 수열 A와 정수 X가 주어진다. 이때, A에서 X보다 작은 수를 모두 출력하는 프로그램을 작성하시오.

# 입력
첫째 줄에 N과 X가 주어진다. (1 ≤ N, X ≤ 10,000)

둘째 줄에 수열 A를 이루는 정수 N개가 주어진다. 주어지는 정수는 모두 1보다 크거나 같고, 10,000보다 작거나 같은 정수이다.

# 출력
X보다 작은 수를 입력받은 순서대로 공백으로 구분해 출력한다. X보다 작은 수는 적어도 하나 존재한다.
*/

### 1번 풀이
var inputNtoX = readLine()!.split(separator:" ")
var inputIntN = readLine()!.split(separator: " ")
let inputN = Int(inputNtoX[0])!
let inputX = Int(inputNtoX[1])!

for i in 0..<(inputN){
    let a = Int(inputIntN[i])!
    if inputX > a {
        print(a,terminator: " ")
    }
}

### applebuddy님 문제풀이 (함수형 병행) [https://0urtrees.tistory.com/178]
let inputNtoX = readLine()!.split(separator: " ").map{ Int(String($0))!}
let X = inputNtoX[1]

print(readLine()!.split(separator: " ").map{ Int(String($0))! }.filter{ $0 < X }.map{ "\($0)" }.joined(separator: " "))

1) 스위프트에서는 입력을 line 단위로 받을때 사용하는 것이 readLine()이고 String ? 타입으로 리턴한다.
2) String ? 값을 "!"을 통해 강제언래핑 한다. 그렇게되면 String ?에서 String 타입이 되고, split(separator: " ")룰 통해 공백 단위로 입력받은 값을 [Character]타입으로 변환한다.
3) [Character]타입을 [Int]타입으로 변환한다. Int(String($0))!에서 $0은 [Character]타입 내의 원소 하나하나이다.
4) .map{Int(String($0))}은 [Character]타입 배열을 [Int]타입으로 변환한다.
5) .filter{$0 < X}는 고차함수 특정 조건을 충족하는 원소만 추려내서 다시 배열을 만든다. 타입은 [Int]
6) .map{"\($0)"}는 다시 맵핑을 한다. map 고차함수는 기존의 값들을 특정 연산 후의 값으로 매핑시켜준다. "\()"로 값을 감싸주면 Int에서 String타입이 된다.
7) .joined(separator: " ")는 문자열배열을 하나의 문자열로 합쳐주는 메서드인데, separator을 통해 공백단위로 출력한다.