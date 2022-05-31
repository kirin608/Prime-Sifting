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
    prime_array = []
    user_array = *(2..user_number)

    user_array.each do |main_number|
        if    main_number < 9
            prime_array.push (main_number) if main_number / 2.0 < 2   || !((main_number/2.0) % 1).zero?
        elsif  main_number % 2 > 0 && main_number % 3 > 0 && main_number % 4 > 0 && main_number % 5 > 0 && 
                main_number % 6 > 0 && main_number % 7 > 0 && main_number % 8 > 0 && main_number % 9 > 0   
            prime_array.push (main_number)
        else nil
        end      
    end
    p prime_array.join(',')
end

    