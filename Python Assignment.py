# Perfect Number 

num = int(input())  # 28

result = 0
for counter in range(1, num):
    if num % counter == 0:
        #   print(counter)
          result += counter
          
# print(result)

output = f'{num} is not a perfect number'
if num == result:
    output = f"{num} is a perfect number"

print(output)