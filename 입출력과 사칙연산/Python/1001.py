"""
# A-B(1001번)

# 문제
두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.

# 입력
첫째 줄에 A와 B가 주어진다.(0<A, B<10)

# 출력
첫째 줄에 A-B를 출력한다

"""
def imsum(a, b):              # 빼기 함수
	return a-b

a, b = input().split()      # 연속적으로 입력 받기(리스트)
print(imsum(int(a), int(b)))  # a, b 문자열을 int형으로 캐스팅

