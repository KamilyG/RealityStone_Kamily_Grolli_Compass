class Calculadora
    def soma(numero1, numero2)
        if numero1.class == String || numero2.class == String
            return 'Não é possível somar algo que não seja número!'
        end
        resultado_soma = numero1 + numero2
        resultado_soma.round(1)
    end

    def subtrai(numero1, numero2)
        if numero1.class == String || numero2.class == String
            return 'Não é possível subtrair algo que não seja número!'
        end
        resultado_subtracao = numero1 - numero2
        resultado_subtracao.round(1)    
    end

    def multiplica(numero1, numero2)
        if numero1.class == String || numero2.class == String
            return 'Não é possível multiplicar algo que não seja número!'
        end
        resultado_multiplicacao = numero1 * numero2
        resultado_multiplicacao.round(1)
    end

    def divide(numero1, numero2)
        return 'Não é possível dividir por 0!' if numero2 == 0
        if numero1.class == String || numero2.class == String
            return 'Não é possível dividir algo que não seja número!'
        end
        resultado_divisao = numero1 / numero2
        resultado_divisao.round(1)
    end
end