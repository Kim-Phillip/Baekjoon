/*
A / B

# 문제
두 정수 A와 B를 입력받은 다음, A/B를 출력하는 프로그램을 작성하시오.

# 입력
첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)

# 출력
첫째 줄에 A/B를 출력한다. 실제 정답과 출력값의 절대오차 또는 상대오차가 10-9 이하이면 정답이다.
*/

# import Foundation을 사용하는 첫번째 방법 (12ms)

import Foundation

var input = readLine()    // 변수 input에 한줄 입력 받기

if let input = input{
    let arrayInput = input.components(separatedBy: " ")        // separated로 받은 인수를 String으로 나눠 배열 리턴(components)
    let division = Double(arrayInput[0])! / Double(arrayInput[1])!    // String?에서 String으로 강제 언랩핑 후 실수형으로 타입캐스팅하여 나눗셈
    print(division)
}


# import Foundation을 사용하는 두번째 방법 (12ms)

import Foundation

var input = readLine()!	// 변수 input에 한줄 입력 받기

let arrayInput = input.components(separatedBy: " ")		// separated로 받은 인수를 String으로 나눠 배열 리턴(components)
let firstInput = Double(arrayInput[0])!	// firstInput에 arrayInput[0]을 String으로 강제 언랩핑하고 실수형으로 타입캐스팅하여 넣기
let secondInput = Double(arrayInput[1])!	// secondInput에 arrayInput[1]을 String으로 강제 언랩핑하고 실수형으로 타입캐스팅하여 넣기
let division = firstInput / secondInput
print(division)


# import Foundation을 안쓰는 방법 (8ms)

var input = readLine()!    // 변수 input에 한줄 입력 받기

let arrayInput = input.split(separator: " ")    // separator로 받은 인수를 String으로 나눠 배열 리턴(split)
let firstInput = Double(arrayInput[0])!     // firstInput에 arrayInput[0]을 String으로 강제 언랩핑 후 실수형으로 타입캐스팅하여 넣기
let secondInput = Double(arrayInput[1])!    // secondInput에 arrayInput[1]을 String으로 강제 언랩핑 후 실수형으로 타입캐스팅하여 넣기
let division = firstInput / secondInput
print(division)

