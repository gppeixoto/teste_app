# README
O projeto encontra-se funcionando no Heroku em produção em: https://blooming-beach-6135.herokuapp.com/ . Através do Heroku é possível verificar o envio de emails sendo utilizado corretamente através do SendGrid/Heroku.

Instruções para rodar o projeto em modo de desenvolvimento, na pasta do projeto:

```
$ git clone https://github.com/gppeixoto/teste_app
$ cd teste_app/
$ bundle install --without production
$ rake db:migrate
$ rails s
```

O projeto estará disponível em http://localhost:3000/.

Alguns testes para os *models* foram implementados, para executá-los:

```
$ bundle exec rake test:models
```

Nesse modo de desenvolvimento, o email de ativação será enviado pelo terminal. Para obter o link, procure no terminal por uma mensagem do tipo:

```
Content-Type: text/html;
 charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <body>
    <p>Hi YOUR_NAME,</p>
<p>
Click on the link below to activate your account:
</p>
<a href="http://localhost:3000/account_activations/Hlh_08mm0e-YKcq2Q7CAuw/edit?email=youremail%40domain.com">Activate</a>
  </body>
</html>
```

Copie e cole o link no navegador para a conta ser ativada.


Guilherme Peixoto
gpp@cin.ufpe.br