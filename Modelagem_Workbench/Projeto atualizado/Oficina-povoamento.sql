use oficina;
show tables;
select * from cliente;
select * from cliente_pj;
select * from oficina_mecanica;
select * from mecanico;
select * from estoque;
select * from os_de_servico;
select * from pagamento;
select * from servico;
select * from status_servico;
select * from os_peca;
-- inserindo dados

insert into cliente values
(1,'Elias','01678963511','são lopoldo 73','1988-08-22','48996452689'),
(2,'Rodigo','01878963501','são bernado 83','1989-05-25','48896452688'),
(3,'Pedro','09678964551','são cristovao 173','1987-07-11','48896452679'),
(4,'Algusto','07678963599','bento 873','1986-08-12','48896452659'),
(5,'Jõa ','03378963531','são miguel 73','1958-09-02','47996432699');

insert into cliente_pj values
(1,'HDL','12394201000108','são lopoldo 73','1988-08-22','48996452689'),
(2,'Expresso são miguel','02394201000133','são bernado 83','1989-05-25','48896452688'),
(3,'rapidex','44394201000129','cristovao 173','1987-07-11','48896452679'),
(4,'Mercado livre','33394201000118','são bento 873','1986-08-12','48896452659'),
(5,'Sonho meu','22394201000188','são miguel 73','1958-09-02','47996432699');

insert into oficina_mecanica values
(1,'Oficina do careca','12394201000108','1988-08-22'),
(2,'oficina dois irmaãos','02394201000133','1989-05-25'),
(3,'Irmaos e peças','44394201000129','1987-07-11'),
(4,'Oficina liberdade','33394201000118','1986-08-12'),
(5,'Oficina PeB','22394201000188','1958-09-02');

insert into mecanico values
(1,1,'João Miguel','01678963511','1988-08-22','48996452689','Mecânico Disel'),
(2,2,'Rodigo Pereira','01878963501','1989-05-25','48896452688','Mecânco caro de luxo'),
(3,3,'Pedro Antunes','09678964551','1987-07-11','48896452679','Motores V8'),
(4,4,'Algusto justos','07678963599','1986-08-12','48896452659','Mecânico de caminhão'),
(5,5,'Jõa lima','03378963531','1958-09-02','47996432699','Sondagem, Reparos');

insert into estoque values
(1,'cilindro',4,445,'2000-08-22','2025-07-22'),
(2,'mangueira de gás',5,150,'2005-05-25','2025-08-22'),
(3,'Motor de arranque',10,350,'2025-07-11','2025-05-22'),
(4,'Bomba de gasolina',5,500,'2012-08-12','2010-06-22'),
(5,'correia dentada',7,150,'2000-09-02','2024-09-22');

insert into servico values
(1,1,1,'Manutenção'),
(2,2,3,'Manutenção'),
(3,3,4,'Revisão'),
(4,4,2,'Manutenção'),
(5,5,5,'Revisão');

insert into os_de_servico values
(1,1,'2025-08-22',500,'Autorizado'),
(2,2,'2025-05-25',300,'Aguardando liberação'),
(3,3,'2024-07-11',6000,'Autorizado'),
(4,4,'2023-08-12',700,'Autorizado'),
(5,5,'2025-09-02',750,'Cancelado');

insert into os_peca values
(1,1,9),
(2,2,8),
(3,3,7),
(4,4,5),
(5,5,3);

insert into status_servico values
(1,1,1,'Finalizado'),
(2,2,2,'Em andamento'),
(3,3,3,'Paralizado'),
(4,4,4,'Cancelado'),
(5,5,5,'Finalizado');

insert into pagamento values
(1,1,1,'Crédito'),
(2,2,2,'Pix'),
(3,3,3,'Débito'),
(4,4,4,'Boleto'),
(5,5,5,'Dinheiro');