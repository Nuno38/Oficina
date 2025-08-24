# Sistema de uma Oficina

<h1> Sistema de Gerencia</h1>

° Clientes e veículos
<br>
° Ofcina e Time mecânico
<br>
° Tipo de serviço prestado (" Manutenção ou Revisão")
<br>
° Ordem de serviços
<br>
° Gerenciamento de peças e estoque
<br>
° Verificação de status do serviço
-------------------------------------------------
<h2> Relacionamentos </h2>
° Cliente -> Verículo
<br>
° Ofcina -> Mecânico
<br>
° Veículo -> Os
<br>
° Mecânico -> Serviço
<br>
° Serviço -> Verificações
<br>
° Os -> Peças
<br>
----------update-------------------------
<br>
<h1>Estrutura do Banco de Dados</h1>

As principais tabelas do sistema são:

cliente → Armazena os dados dos clientes da oficina.

funcionario → Cadastro dos funcionários da mecânica.

estoque → Controle de peças e insumos utilizados.

os_de_servico → Representa cada ordem de serviço gerada.

servico_realizado → Detalha os serviços prestados em cada OS.

status_servico → Define se a OS está em andamento, concluída, cancelada etc.

pagamento → Controle de pagamentos realizados pelos clientes.
