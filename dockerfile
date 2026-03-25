FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3","-c", "def isHappy(n):\n    if n < 1 or n > 2**31 - 1:\n        return False\n    Set = set()\n    while n != 1 and n not in Set:\n        Set.add(n)\n        n = sum(int(d) ** 2 for d in str(n))\n    return n == 1    \nprint(isHappy(19))    \nprint(isHappy(2))"]