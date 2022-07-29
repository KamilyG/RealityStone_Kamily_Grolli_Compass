require 'rspec'
require 'pry'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new

# soma
    it('Deve somar dois inteiros positivos') do
        expect(calculadora.soma(4, 5)).to eq 9
        end
    
    it('Deve somar dois decimais positivos') do
        expect(calculadora.soma(4.02, 5.7)).to eq 9.7
        end

    it('Deve somar um número qualquer com 0') do
        expect(calculadora.soma(9, 0)).to eq 9
        end

    it('Deve somar dois números negativos') do
        expect(calculadora.soma(-9, -10)).to eq -19
        end

    it('Deve somar um número negativo com um positivo') do
        expect(calculadora.soma(9, -10)).to eq -1
        end

    it('Não deve somar um número com uma letra') do
        expect(calculadora.soma(9, 'k')).to eq 'Não é possível somar algo que não seja número!'
    end
    
    it('Não deve somar duas letras') do
        expect(calculadora.soma('a', 'k')).to eq 'Não é possível somar algo que não seja número!'
    end

# subtrai
    it('Deve subtrair dois inteiros positivos') do
        expect(calculadora.subtrai(8, 2)).to eq 6
        end

    it('Deve subtrair dois decimais positivos') do
        expect(calculadora.subtrai(6.4, 1.1)).to eq 5.3
        end

    it('Deve subtrair um número qualquer com 0') do
        expect(calculadora.subtrai(8, 0)).to eq 8
        end

    it('Deve subtrair 0 com um número qualquer') do
        expect(calculadora.subtrai(0, 8)).to eq -8
        end

    it('Deve subtrair dois números negativos') do
        expect(calculadora.subtrai(-2, -8)).to eq 6
        end

    it('Não deve subtrair um número com uma letra') do
        expect(calculadora.subtrai(9, 'k')).to eq 'Não é possível subtrair algo que não seja número!'
    end
    
    it('Não deve subtrair duas letras') do
        expect(calculadora.subtrai('a', 'k')).to eq 'Não é possível subtrair algo que não seja número!'
    end

# multiplica
    it('Deve multiplicar dois inteiros positivos') do
        expect(calculadora.multiplica(8, 2)).to eq 16
        end

    it('Deve multiplicar dois decimais positivos') do
        expect(calculadora.multiplica(2.4, 1.3)).to eq 3.1
        end
        
    it('Deve multiplicar um número qualquer com 0') do
        expect(calculadora.multiplica(8, 0)).to eq 0
        end

    it('Deve multiplicar um número qualquer com 1') do
        expect(calculadora.multiplica(1, 8)).to eq 8
        end

    it('Deve multiplicar dois números negativos') do
        expect(calculadora.multiplica(-2, -8)).to eq 16
        end
        
    it('Deve multiplicar um número positivo com um número negativo') do
        expect(calculadora.multiplica(2, -8)).to eq -16
        end
    
    it('Não deve multiplicar um número com uma letra') do
        expect(calculadora.multiplica(9, 'k')).to eq 'Não é possível multiplicar algo que não seja número!'
    end
    
    it('Não deve multiplicar duas letras') do
        expect(calculadora.multiplica('a', 'k')).to eq 'Não é possível multiplicar algo que não seja número!'
    end

# divide
    it('Deve dividir dois inteiros positivos') do
        expect(calculadora.divide(8, 2)).to eq 4
        end

    it('Deve dividir dois decimais positivos') do
        expect(calculadora.divide(8.0, 2.2)).to eq 3.6
        end

    it('Deve dividir um número qualquer com 0') do
        expect(calculadora.divide(8, 0)).to eq 'Não é possível dividir por 0!'
        end

    it('Deve dividir um número qualquer com 1') do
        expect(calculadora.divide(8, 1)).to eq 8
        end

    it('Deve dividir dois números negativos') do
        expect(calculadora.divide(-8, -2)).to eq 4
        end
        
    it('Deve dividir um número positivo com um número negativo') do
        expect(calculadora.divide(-8, 2)).to eq -4
        end

    it('Não deve dividir um número com uma letra') do
        expect(calculadora.divide(9, 'k')).to eq 'Não é possível dividir algo que não seja número!'
    end
    
    it('Não deve dividir duas letras') do
        expect(calculadora.divide('a', 'k')).to eq 'Não é possível dividir algo que não seja número!'
    end

end