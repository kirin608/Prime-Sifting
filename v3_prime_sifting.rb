# Create a list of numbers from 2 through n: 2, 3, 4, ..., number.
# Initially, let prime equal 2, the first prime number.
# Starting from prime, remove all multiples of prime from the list.
# Increment prime by 1.
# When you reach number, all the remaining numbers in the list are primes.

def get_user_input
    print 'Please, enter the number: '
    gets.chomp.to_i
end

def prime_sifting (user_number = get_user_input())
    user_array = *(2..user_number)
    user_array.each_with_index do |number, index|  
        i = 2
        while i < number  do
            user_array[index] = nil if number % i == 0  
          i += 1
        end
    end  
    p user_array.compact.join(',')
end
prime_sifting
    