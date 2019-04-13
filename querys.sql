use system_fifinances;

select * from users;

select * from tb_conta;

select * from tb_conta_fixa;

select * from tb_anotacoes;

SELECT tb_conta.nome, tb_conta.valor, users.name
FROM tb_conta
INNER JOIN users
ON tb_conta.codigo_user_conta_simples = users.id where users.id = 1;

truncate tb_conta;
truncate users;
alter table tb_conta add column created_at TIMESTAMP after pagamento;
alter table tb_conta add column updated_at TIMESTAMP;

CREATE TABLE `tb_conta` (
  `id` int(11) NOT NULL PRIMARY KEY,
  `codigo_user_conta_simples` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `pagamento` enum('Crédito','Débito','Dinheiro') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*===query de desativar chave===*/
SET foreign_key_checks = 0;
DELETE FROM users where id > 1;
SET foreign_key_checks = 1;

select * from `tb_conta` inner join `users` on `tb_conta`.`codigo_user_conta_simples` = `users`.`id` where `users`.`id` = 1