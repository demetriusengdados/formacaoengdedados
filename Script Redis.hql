#instalação
wget http://download.redis.io/releases/redis-5.0.5.tar.gz
tar xzf redis-5.0.5.tar.gz
cd redis-5.0.5
make
#inicia serviço
src/redis-server
#cliente
src/redis-cli

#inclui
SET 1 "Engenharia de Dados"
#retorna
GET 1
#inclui várias chaves
MSET 1040 ANALISTA 1050 GERENTE 1060 TESTADOR
#testa existencia
EXISTS 1
EXISTS 455
#exclui pela chave
DEL 1
#tenta localizar
EXISTS 1
#Verifica tipo da chave
EXISTS 1
#tempo de expiração
SET 1 "ENGENHARIA DE DADOS" EX 60 NX
#expiração posterior
SET 1 "ENGENHARIA DE DADOS"
EXPIRE 1 60
SET 1 "ENGENHARIA DE DADOS"
PEXPIRE 1 500
#tempo para expirar
PTTL 10
TTL 10
#remove expiração
PERSIST 10
#get e getrange
SET 1020 "ENGENHEIRO DE DADOS"
GET 1020
GETRANGE 1020 0 9
#atualiza e retorna o valor antigo
GETSET 1030 "CIENTISTAS DE DADOS"
#retorna várias chaves
MGET 1020 1030
#tamanho do campo valor
STRLEN 1020
#hash
HMSET CADASTRO NOME JOSE PROFISSAO ENGENHEIRO CIDADE "SANTA MARIA"
#exclui
HDEL CADASTRO CIDADE
#retorna todos
HGETALL CADASTRO
#retorna valor de campo
HMGET CADASTRO NOME PROFISSAO
#retorna todos os campos
HVALS CADASTRO
#todo o hash
HGETALL CADASTRO
#verifica chave valor
HEXISTS CADASTRO NOME
HEXISTS CADASTRO NOMES
#retorna número de campos
HLEN CADASTRO
#retonar lista de campos
HKEYS CADASTRO

#inclusão no inicio da lista
LPUSH 4545 SQLSERVER ORACLE POSTGRES MYSQL
#no fim da lista
RPUSH 4545 DB2
#retorna intervalo
LRANGE 4545 0 3
LRANGE 4545 0 4
#insere depois de valor
LINSERT 4545 AFTER ORACLE FIREBIRD
#insere antes de valor
LINSERT 4545 BEFORE FIREBIRD SQLITE
#atualiza
LSET 4545 1 POSTGRESQL
#retorna pelo indíce
LINDEX 4545 0
#comprimento
LLEN 4545
#remove pelo inicio
LPOP 4545
#remove pelo fim
RPOP 4545

#sets
SADD 13 HADOOP SPARK HIVE PIG
SADD 13 FLUME OOZIE SOLR
SADD 13 FLUME
#recupera valores
SMEMBERS 13
#Número de Membros
SCARD 13
#Verifica se um Valor é Membro
SISMEMBER 13 HADOOP
#remove
SREM 13 OOZIE SPARK
#operações sobre conjuntos
SMEMBERS 13
SADD 14 HIVE HADOOP SPARK
SDIFF 13 14
SDIFF 14 13
SINTER 13 14
#ordenados baseados em score
ZADD 35 0 NOSQL
ZADD 35 5 RELACIONAL
ZADD 35 4 DIMENSIONAL
#Número de Elementos
ZCARD 35
#Índice de um membro
ZRANK 35 DIMENSIONAL
#Conta membros com scores entre...
ZCOUNT 35 0 5
#Retorna o score de um membro
ZSCORE 35 RELACIONAL
#Retorna Membros pelo Índice
ZRANGE 35 0 5
ZRANGE 35 0 5 WITHSCORES
#remove
ZREM 35 DIMENSIONAL

#transações
MULTI
SET 145 "REDIS NOSQL"
SET 146 "MONGODB NOSQL"
EXEC
EXISTS 145
MULTI
SET 1213 "REDIS NOSQL"
SET 1214 "MONGODB NOSQL"
DISCARD
EXISTS 1213