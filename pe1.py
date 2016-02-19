mults = []
nums = range(1, 1000)

for i in nums:
    if i % 3 == 0:
        mults.append(i)
    elif i % 5 == 0:
        mults.append(i)

total = 0
for num in mults:
    total += num

print total
