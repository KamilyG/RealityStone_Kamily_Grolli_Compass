require'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do
    it('Deve somar dois inteiros positivos') do
    calculadora = Calculadora.new
    expect(calculadora.soma(4, 5)).to eq 9
    end

    it('Deve somar um número qualquer com 0') do
    calculadora = Calculadora.new
    expect(calculadora.soma(9, 0)).to eq 9
    end

    it('Deve somar um números negativos') do
        calculadora = Calculadora.new
        expect(calculadora.soma(-9, -10)).to eq -19
        end
end