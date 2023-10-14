class User < ApplicationRecord
    validates :name, presence: {
        message: "NOME NÃO INSERIDO!"
    }
    validates :email, presence: {
        message: "EMAIL NÃO INSERIDO!"
    }, uniqueness: true, format:{
        with: URI::MailTo::EMAIL_REGEXP,
        message: "FORMATO DE EMAIL INVÁLIDO!"
    }
    validates :phone, presence: {
        message: "CELULAR NÃO INSERIDO!"
    }, uniqueness:true, format:{
        with: /\A\d{11}\z/,
        message: "FORMATO DE CELULAR INVÁLIDO (dica: adicione o DDD do seu estado)"
    }
    validates :cpf, presence: {
        message: "CPF NÃO INSERIDO!"
    }, uniqueness: true, format:{
        with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/,
        message: "FORMATO DE CPF INVÁLIDO!"
    }
end