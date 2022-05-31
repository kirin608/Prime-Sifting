require_relative '../prime_sifting'

RSpec.describe '#prime_sifting' do
    describe 'prime_sifting' do
    it ('returns list of numbers  prime numbers less than that number') do
        expect(prime_sifting(6)).to(eq("2,3,5"))
    end
    it ('returns number polindrome words') do
        expect(prime_sifting(20)).to(eq("2,3,5,7,11,13,17,19"))
    end
    it ('returns number polindrome words') do
        expect(prime_sifting(50)).to(eq("2,3,5,7,11,13,17,19,23,29,31,37,41,43,47"))
    end
    end
end