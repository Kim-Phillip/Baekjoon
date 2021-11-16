/*
시험 성적

# 문제
시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.

# 입력
첫째 줄에 시험 점수가 주어진다. 시험 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.

# 출력
시험 성적을 출력한다.
*/

var input = readLine()!
let arrayInput = input.split(separator: " ")
let gradesScore = Int(arrayInput[0])!

if gradesScore > 100 {
    print("다시 입력하세요.")
} else if gradesScore >= 90 {
    print("A")
} else if gradesScore >= 80 {
    print("B")
} else if gradesScore >= 70 {
    print("C")
} else if gradesScore >= 60 {
    print("D")
} else {
    print("F")
}
