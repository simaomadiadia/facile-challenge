

                                 #Executacao do proecto#
Para efectuar a instalaçao de app, vai ate apasta ./local do Projecto abre o no CMD execute o seguite comado:
yarn start.
                                            ### Rotas
- `GET /encripts/id`: Rota que permite consultar um nome criptografado da base de dados retorando descriptografado,a rota deve receber como parametro da requisiçao id do nome que pretendes consultar;

- `POST /encripts`: A rota deve receber "name" , dentro do corpo da requisicao no formato JSON {"name":"Faz certo - que dá certo!"}, ela tem a finalidade de cadastrar um nome na base de dados, este nome antes de ser salvo no BD ela sera Criptografado.
Apos o cadastro é retornado    id e o nome criptografado, {"id": 62,"encripted_name": "9735690513cd2ce093b871aec9dd70b576eed72d2dcbf0880ed3"}




                                 
