/*
A - B

# 문제
두 정수 A와 B를 입력받은 다음, A-B를 출력하는 프로그램을 작성하시오.

# 입력
첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)

# 출력
첫째 줄에 A-B를 출력한다.
*/

# import Foundation을 첫번째 방법 (12ms)

import Foundation    // 데이터저장, text처리, 날짜 및 시간 계산, 정렬 및 필터, 네트워킹 등 기본이 되는 Framework

var input = readLine()  // 한 줄 입력받기

if let input = input{
    let arrayInput = input.components(separatedBy: " ")    //separator로 받은 string으로 나눠준 배열 리턴(components)
    let subtraction = Int(arrayInput[0])! - Int(arrayInput[1])!    //String?에서 String으로 강제 언랩핑 및 정수형으로 타입캐스팅
    print(subtraction)
}

# import Foundation을 두번째 방법 (12ms)

import Foundation    // 데이터저장, text처리, 날짜 및 시간 계산, 정렬 및 필터, 네트워킹 등 기본이 되는 Framework

var input = readLine()!    // String?에서 String으로 강제 언랩핑
let arrayInput = input.components(separatedBy: " ")    //separator로 받은 string으로 나눠준 배열 리턴(components)
let firstInput = Int(arrayInput[0])!    //String 값 정수형으로 타입캐스팅 후 강제 언랩핑
let secondInput = Int(arrayInput[1])!   //String 값 정수형으로 타입캐스팅 후 강제 언랩핑
print(firstInput - secondInput)


# import Foundation을 안쓰는 방법 (8ms)

var input = readLine()! //String?에서 String으로 강제 언랩핑
let arrayInput = input.split(separator: " ")    // separator로 받은 string값 공백 단위로 문자열 쪼개기(Split)
let firstInput = Int(arrayInput[0])!    //String 값 정수형으로 타입캐스팅 후 강제 언랩핑
let secondInput = Int(arrayInput[1])!   //String 값 정수형으로 타입캐스팅 후 강제 언랩핑
print(firstInput - secondInput)

