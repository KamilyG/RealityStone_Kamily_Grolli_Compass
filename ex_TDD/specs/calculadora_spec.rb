require'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do
# soma
    it('Deve somar dois inteiros positivos') do
        calculadora = Calculadora.new
        expect(calculadora.soma(4, 5)).to eq 9
        end

    it('Deve somar um número qualquer com 0') do
        calculadora = Calculadora.new
        expect(calculadora.soma(9, 0)).to eq 9
        end

    it('Deve somar dois números negativos') do
        calculadora = Calculadora.new
        expect(calculadora.soma(-9, -10)).to eq -19
        end
    
# subtrai
    it('Deve subtrair dois inteiros positivos') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(8, 2)).to eq 6
        end

    it('Deve subtrair um número qualquer com 0') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(8, 0)).to eq 8
        end

    it('Deve subtrair 0 com um número qualquer') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(0, 8)).to eq -8
        end

    it('Deve subtrair dois números negativos') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(-2, -8)).to eq 6
        end

# multiplica
    it('Deve multiplicar dois inteiros positivos') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(8, 2)).to eq 16
        end

    it('Deve multiplicar um número qualquer com 0') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(8, 0)).to eq 0
        end

    it('Deve multiplicar um número qualquer com 1') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(1, 8)).to eq 8
        end

    it('Deve multiplicar dois números negativos') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(-2, -8)).to eq 16
        end
        
    it('Deve multiplicar um número positivo com um número negativo') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(2, -8)).to eq -16
        end

# divide
    it('Deve dividir dois inteiros positivos') do
        calculadora = Calculadora.new
        expect(calculadora.divide(8, 2)).to eq 4
        end

    it('Deve dividir um número qualquer com 0') do
        calculadora = Calculadora.new
        expect(calculadora.divide(8, 0)).to eq 'Não é possível dividir por 0!'
        end

    it('Deve dividir um número qualquer com 1') do
        calculadora = Calculadora.new
        expect(calculadora.divide(8, 1)).to eq 8
        end

    it('Deve dividir dois números negativos') do
        calculadora = Calculadora.new
        expect(calculadora.divide(-8, -2)).to eq 4
        end
        
    it('Deve dividir um número positivo com um número negativo') do
        calculadora = Calculadora.new
        expect(calculadora.divide(-8, 2)).to eq -4
        end

end