#  Second version of Prime numbers

require 'prime'

def get_user_input
    print 'Please, enter the number: '
    gets.chomp.to_i
end

def prime_sifting (user_number = get_user_input())
    prime_array = []

    Prime.each(user_number) do |prime|
        prime_array.push(prime)
         
    end
    p prime_array.join(',')
end
