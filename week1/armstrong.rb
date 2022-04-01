# An n-digit number that is the sum of the nth powers of its digits is called an n-narcissistic number. It is also known as an Armstrong number.
#
# For example,
# 153 = 1^3 + 5^3 + 3^3
#
# `n` is a number provided to you as input.
#
# Your output should be `true` if the number is an Armstrong number
# and `false` otherwise.

def armstrong_number(n)
    if n<=0
        return false
    else
        number = n
        power = n.to_s.length
        sum=0
        for i in 1..power do
            sum+=(number%10)**power
            number=number/10
        end
        if sum==n
            return true
        else
            return false
        end
    end    
end
