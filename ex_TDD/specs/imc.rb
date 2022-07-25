require'rspec'

def imc(peso, altura)
    imc_calculado = peso / (altura * altura)
    return imc_calculado.round(1)
end

describe('Cálculo IMC') do
    it('Deve calcular o peso e altura corretos') do
        peso = 60
        altura = 1.70
        expect(imc(peso, altura)).to eq 20.8
    end
end