Program FichaCadastral ;

//ALEXSANDER MARTINS RA: 2220030
//BRAYAN FERREIRA RA: 2220653
//JOAO VITOR EKERT DOS SANTOS RA: 2220831

type

	cadastro = record
	nome : string;
	sobrenome : string;
	cpf : string;
	senha : string;
	
end;
								 
const

MAX = 5;

var

chave : string;
ficha : array[1..MAX] of cadastro;
i,j: integer;
opcao1, opcao2, opcao3 : integer;
opcao10 : string;
senhaIncorreta : boolean;
tentativas : integer;

	
Begin

opcao10 := 'S';
repeat  

	writeln('O que deseja fazer?');	
	writeln;
  writeln('1 - Novo Cadastro');
  writeln('2 - Alterar Cadastro');
  writeln('3 - Apagar Cadastro');
  writeln('4 - Abrir Fechadura');
	writeln;
	writeln('Digite a opção desejada:');
	readln(opcao1);
  clrscr;
  
if opcao1 = 1 then

begin

	for i := 1 to MAX do
	begin
			writeln('Informe um nome para registro:');
			readln(ficha[i].nome);
			writeln; 
		  writeln('Informe seu sobrenome:'); 
			readln(ficha[i].sobrenome); 
			writeln;
			writeln('Informe seu CPF:'); 
			readln(ficha[i].cpf); 
			writeln;
			writeln(ficha[i].nome,', digite uma senha:');
			readln(ficha[i].senha);
			clrscr;
	end;
end;

if opcao1 = 2 then

begin

			writeln('Qual cadastro deseja alterar?');
			writeln;
			writeln('1 - ', ficha[1].nome,' ',ficha[1].sobrenome,' ',ficha[1].cpf,' ',ficha[1].senha);
			writeln('2 - ', ficha[2].nome,' ',ficha[2].sobrenome,' ',ficha[2].cpf,' ',ficha[2].senha);
			writeln('3 - ', ficha[3].nome,' ',ficha[3].sobrenome,' ',ficha[3].cpf,' ',ficha[3].senha);
			writeln('4 - ', ficha[4].nome,' ',ficha[4].sobrenome,' ',ficha[4].cpf,' ',ficha[4].senha);
			writeln('5 - ', ficha[5].nome,' ',ficha[5].sobrenome,' ',ficha[5].cpf,' ',ficha[5].senha);
			readln(opcao2);
			
			clrscr;
			
			if opcao2 = 1 then
			begin
				writeln(ficha[1].nome,', o que deseja alterar?');
				writeln;
				writeln('1 - Nome ');
				writeln('2 - Sobrenome ');
				writeln('3 - CPF ');
				writeln('4 - Senha ');         
				readln(opcao3);
				clrscr;
				
				if opcao3 = 1 then
					begin
				  	writeln('Informe um novo nome para registro:');
						readln(ficha[1].nome);	
					end;
				 if opcao3 = 2 then
				 begin
				 	  writeln('Informe seu sobrenome:'); 
						readln(ficha[1].sobrenome);
				 end;
				if opcao3 = 3 then
				begin
				 		writeln ('Informe seu CPF:'); 
						readln(ficha[1].cpf); 
				end;
				if opcao3 = 4 then
				begin
						writeln(ficha[1].nome,', digite uma senha:');
						readln(ficha[1].senha);
				end;
end;
				
				if opcao2 = 2 then
			begin
				writeln(ficha[2].nome,', o que deseja alterar?');
				writeln;
				writeln('1 - Nome ');
				writeln('2 - Sobrenome ');
				writeln('3 - CPF ');
				writeln('4 - Senha ');         
				readln(opcao3);
				clrscr;
				
				if opcao3 = 1 then
					begin
				  	writeln('Informe um novo nome para registro:');
						readln(ficha[2].nome);	
					end;
				 if opcao3 = 2 then
				 begin
				 	  writeln('Informe seu sobrenome:'); 
						readln(ficha[2].sobrenome);
				 end;
				if opcao3 = 3 then
				begin
				 		writeln('Informe seu CPF:');
						readln(ficha[2].cpf); 
				end;
				if opcao3 = 4 then
				begin
				writeln(ficha[2].nome,', digite uma senha:');
				readln(ficha[2].senha);
				end;
				
			end;

end;

				if opcao2 = 3 then
begin
				writeln(ficha[3].nome,', o que deseja alterar?');
				writeln;
				writeln('1 - Nome ');
				writeln('2 - Sobrenome ');
				writeln('3 - CPF ');
				writeln('4 - Senha ');         
				readln(opcao3);
				clrscr;
				
				if opcao3 = 1 then
					begin
				  	writeln('Informe um novo nome para registro:');
						readln(ficha[3].nome);	
					end;
				 if opcao3 = 2 then
				 begin
				 	  writeln('Informe seu sobrenome:'); 
						readln(ficha[3].sobrenome);
				 end;
				if opcao3 = 3 then
				begin
				 		writeln('Informe seu CPF:');
						readln(ficha[3].cpf); 
				end;
				if opcao3 = 4 then
				begin
				writeln(ficha[3].nome,', digite uma senha:');
				readln(ficha[3].senha);
				end; 
				
end;				
	
					if opcao2 = 4 then
begin
				writeln(ficha[4].nome,', o que deseja alterar?');
				writeln;
				writeln('1 - Nome ');
				writeln('2 - Sobrenome ');
				writeln('3 - CPF ');
				writeln('4 - Senha ');         
				readln(opcao3);
				clrscr;
				
				if opcao3 = 1 then
					begin
				  	writeln('Informe um novo nome para registro:');
						readln(ficha[4].nome);	
					end;
				 if opcao3 = 2 then
				 begin
				 	  writeln('Informe seu sobrenome:'); 
						readln(ficha[4].sobrenome);
				 end;
				if opcao3 = 3 then
				begin
				 		writeln('Informe seu CPF:');
						readln(ficha[4].cpf); 
				end;
				if opcao3 = 4 then
				begin
				writeln(ficha[4].nome,', digite uma senha:');
				readln(ficha[4].senha);
				end; 
				
end;
	
					if opcao2 = 5 then
begin
				writeln(ficha[5].nome,', o que deseja alterar?');
				writeln;
				writeln('1 - Nome ');
				writeln('2 - Sobrenome ');
				writeln('3 - CPF ');
				writeln('4 - Senha ');         
				readln(opcao3);
				clrscr;
				
				if opcao3 = 1 then
					begin
				  	writeln('Informe um novo nome para registro:');
						readln(ficha[5].nome);	
					end;
				 if opcao3 = 2 then
				 begin
				 	  writeln('Informe seu sobrenome:'); 
						readln(ficha[5].sobrenome);
				 end;
				if opcao3 = 3 then
				begin
				 		writeln('Informe seu CPF:');
						readln(ficha[5].cpf); 
				end;
				if opcao3 = 4 then
				begin
				writeln(ficha[5].nome,', digite uma senha:');
				readln(ficha[5].senha);
				end; 
				
end;
	
	if opcao1 = 3 then
	
begin
	
			writeln('Qual cadastro deseja apagar?');
			writeln;
			writeln('1 - ', ficha[1].nome,' ',ficha[1].sobrenome,' ',ficha[1].cpf,' ',ficha[1].senha);
			writeln('2 - ', ficha[2].nome,' ',ficha[2].sobrenome,' ',ficha[2].cpf,' ',ficha[2].senha);
			writeln('3 - ', ficha[3].nome,' ',ficha[3].sobrenome,' ',ficha[3].cpf,' ',ficha[3].senha);
			writeln('4 - ', ficha[4].nome,' ',ficha[4].sobrenome,' ',ficha[4].cpf,' ',ficha[4].senha);
			writeln('5 - ', ficha[5].nome,' ',ficha[5].sobrenome,' ',ficha[5].cpf,' ',ficha[5].senha);
			readln(opcao3);
			clrscr;
			
				if opcao3 = 1 then
				begin
					writeln('Cadastro de ',ficha[1].nome,' ',ficha[1].sobrenome, ' apagado com sucesso!!!');
					ficha[1].nome := ' ';
					ficha[1].sobrenome := ' ';
					ficha[1].cpf := ' ';
					ficha[1].senha := ' ';
				delay(3000);				
				end;
				clrscr;
				
				if opcao3 = 2 then
				begin
					writeln('Cadastro de ',ficha[2].nome,' ',ficha[2].sobrenome, ' apagado com sucesso!!!');
					ficha[2].nome := ' ';
					ficha[2].sobrenome := ' ';
					ficha[2].cpf := ' ';
					ficha[2].senha := ' ';				
				end;
				delay(3000);
				clrscr;
				
				if opcao3 = 3 then
				begin
					writeln('Cadastro de ',ficha[3].nome,' ',ficha[3].sobrenome, ' apagado com sucesso!!!');
					ficha[3].nome := ' ';
					ficha[3].sobrenome := ' ';
					ficha[3].cpf := ' ';
					ficha[3].senha := ' ';				
				end;
				delay(3000);
				clrscr;
				
				if opcao3 = 4 then
				begin
					writeln('Cadastro de ',ficha[4].nome,' ',ficha[4].sobrenome, ' apagado com sucesso!!!');
					ficha[4].nome := ' ';
					ficha[4].sobrenome := ' ';
					ficha[4].cpf := ' ';
					ficha[4].senha := ' ';				
				end;
				delay(3000);
				clrscr;
				
				if opcao3 = 5 then
				begin
					writeln('Cadastro de ',ficha[5].nome,' ',ficha[5].sobrenome, ' apagado com sucesso!!!');
					ficha[5].nome := ' ';
					ficha[5].sobrenome := ' ';
					ficha[5].cpf := ' ';
					ficha[5].senha := ' ';				
				end;
				delay(3000);
				clrscr;

end;								

	if opcao1 = 4 then
  begin
  
	 tentativas := 3;
	 
	 senhaIncorreta := true;
	 
   
   while(senhaIncorreta)do
   begin
       writeln('Informe uma senha para abrir a porta:');
       readln(chave);
       if (chave = ficha[1].senha) or (chave = ficha[2].senha) or (chave = ficha[3].senha) or (chave = ficha[4].senha) or (chave = ficha[5].senha) then
       begin
       		 senhaIncorreta := false;
		       writeln('A porta será aberta em 3 segundos.');
		       delay(3000);
		       clrscr;		
       end
       else
       begin
       		dec(tentativas);
          writeln('A senha que você digitou está incorreta, você possui apenas ', tentativas, ' tentativas.');					
       end;       
       if(tentativas = 0)then
       begin
			 		writeln('Suas tentativas acabaram. Senha bloqueada.');			   		 
		   		delay(3000);	   		 
		   		clrscr;
       		break;
       end
       else
       begin
       		if(senhaIncorreta)then
       		begin
          	writeln('Tente novamente em 3 segundos...');			   		 
		   			delay(3000);	   		 
		   		end;
		   		clrscr;
       end;
   end;
   
   clrscr;
   if(tentativas = 0)then
      writeln('Senha bloqueada. Você poderá tentar novamente em 3 horas.')
   else
   	  writeln('Acesso liberado.');	
end;


writeln('Deseja retornar ao menu? (S/N)');
readln(opcao10);
clrscr;
until(opcao10 = 'N');
  	
   
End.