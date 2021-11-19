/*
나머지

# 문제
(A+B)%C는 ((A%C) + (B%C))%C 와 같을까?

(A×B)%C는 ((A%C) × (B%C))%C 와 같을까?

세 수 A, B, C가 주어졌을 때, 위의 네 가지 값을 구하는 프로그램을 작성하시오.

# 입력
첫째 줄에 A, B, C가 순서대로 주어진다. (2 ≤ A, B, C ≤ 10000)

# 출력
첫째 줄에 (A+B)%C, 둘째 줄에 ((A%C) + (B%C))%C, 셋째 줄에 (A×B)%C, 넷째 줄에 ((A%C) × (B%C))%C를 출력한다.
*/

# import Foundation을 사용하는 방법 (12ms)

import Foundation

var input = readLine()

if let input = input{
    let arrayInput = input.components(separatedBy: " ") // separated에 의해 받은 인수를 배열 리턴
    let firstInput = Int(arrayInput[0])!    // firstInput에 0번째 인수 String으로 강제 언랩핑 후 정수형 타입캐스팅
    let secondInput = Int(arrayInput[1])!   // 위와 같음
    let thirdInput = Int(arrayInput[2])!    // 위와 같음
    let firstQuestion = (firstInput + secondInput) % thirdInput
    let secondQuestion = ((firstInput % thirdInput) + (secondInput % thirdInput)) % thirdInput
    let thirdQuestion = (firstInput * secondInput) % thirdInput
    let fourthQuestion = ((firstInput % thirdInput) * (secondInput % thirdInput)) % thirdInput
    print(firstQuestion, secondQuestion,thirdQuestion, fourthQuestion, separator: "\n")
}

# import Foundation을 안쓰는 방법 (8ms)

var input = readLine()! // String?을 강제 언랩핑하여 String으로 받기

let arrayInput = input.split(separator: " ")
let firstInput = Int(arrayInput[0])!    // firstInput에 0번째 인수 String으로 강제 언랩핑 후 정수형 타입캐스팅
let secondInput = Int(arrayInput[1])!   // 위와 같음
let thirdInput = Int(arrayInput[2])!    // 위와 같음
let firstQuestion = (firstInput + secondInput) % thirdInput
let secondQuestion = ((firstInput % thirdInput) + (secondInput % thirdInput)) % thirdInput
let thirdQuestion = (firstInput * secondInput) % thirdInput
let fourthQuestion = ((firstInput % thirdInput) * (secondInput % thirdInput)) % thirdInput
print(firstQuestion, secondQuestion,thirdQuestion, fourthQuestion, separator: "\n")
