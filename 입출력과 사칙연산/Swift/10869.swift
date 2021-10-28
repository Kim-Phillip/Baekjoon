/*
사칙연산

# 문제
두 자연수 A와 B가 주어진다. 이때, A+B, A-B, A*B, A/B(몫), A%B(나머지)를 출력하는 프로그램을 작성하시오. 

# 입력
두 자연수 A와 B가 주어진다. (1 ≤ A, B ≤ 10,000)

# 출력
첫째 줄에 A+B, 둘째 줄에 A-B, 셋째 줄에 A*B, 넷째 줄에 A/B, 다섯째 줄에 A%B를 출력한다.
*/

import Foundation을 사용하는 첫번째 방법 (12ms)

import Foundation

var input = readLine()

if let input = input{
    let arrayInput = input.components(separatedBy: " ")     //separated로 받은 인수를 String으로 나눠 배열 리턴
    let addition = Int(arrayInput[0])! + Int(arrayInput[1])!    // addition에 강제언랩핑 후 정수형 타입캐스팅하여 덧셈
    let subtraction = Int(arrayInput[0])! - Int(arrayInput[1])!     // 뺄셈
    let multiplication = Int(arrayInput[0])! * Int(arrayInput[1])!  // 곱셈
    let division = Int(arrayInput[0])! / Int(arrayInput[1])!    // 나눗셈
    let modulo = Int(arrayInput[0])! % Int(arrayInput[1])!      // 나머지
    print(addition,"\n",subtraction,"\n",multiplication,"\n",division,"\n",modulo, separator:  "") // separator로 첫줄 공백 제거
}

# import Foundation을 사용하는 두번째 방법 (12ms)

import Foundation

var input = readLine()!

let arrayInput = input.components(separatedBy: " ")
let firstInput = Int(arrayInput[0])!
let secondInput = Int(arrayInput[1])!
let addition = firstInput + secondInput
let substraction = firstInput - secondInput
let multiplication = firstInput * secondInput
let division = firstInput / secondInput
let modulo = firstInput % secondInput
print(addition,substraction,multiplication,division,modulo,separator: "\n")	//separator를 이용해 띄어쓰기

# import Foundation을 안쓰는 방법 (8ms)

var input = readLine()!

let arrayInput = input.split(separator: " ")
let firstInput = Int(arrayInput[0])!
let secondInput = Int(arrayInput[1])!
let addition = firstInput + secondInput
let substraction = firstInput - secondInput
let multiplication = firstInput * secondInput
let division = firstInput / secondInput
let modulo = firstInput % secondInput
print(addition,substraction,multiplication,division,modulo,separator: "\n")	//separator를 이용해 띄어쓰기
