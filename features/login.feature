#language: pt

Funcionalidade: Login

    Esquema do Cenario: Tentanto Logar

        Dado que acesso a página Login
        Quando eu submeto as minhas credenciais "<email>" e "<senha>"
        Então devo ver a seguinte mensagem de alerta:
        """
        Atenção: Seus dados de acesso não estão corretos. Se você tem certeza que o e-mail está correto, solicite uma nova senha.
        """

        Exemplos: 
        | email                 | senha  |
        | joao@yahoo.com.br     | abc123 |
        |                       |        |
        | joao@gmail.com        |        |
        | fulano%hotmail.com    | abc123 | 