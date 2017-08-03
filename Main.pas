Program Main;
uses crt;	   							// lo escribi en sublime text 3 y lo compile con dev_pascal 


	function Apuesta(Nombre:string;Numero,FichasJudor:integer):integer;
		var
			SiNo:string;			                    //para saber si desea continuar o no
			NumApostado:integer;						//numero que el jufador eligio
			NumFichasApostadasUnNumero: integer;    //cantidad de fichas que aposto el jugador al apostar a los numeros
			Par:integer;							//numero de fichas apostadas a par
			Inpar:integer;							//numero de fichas apostadas a inpar
			Pasa:integer;							//cantidad de fichas que apuesta por "pasa"
			Falta:integer;							//cantidad de fichas que apuesta por "falta"
			Docena1:integer;					    //cantidad de fichas que apuesta a la 1er docena		
			Docena2:integer;						//cantidad de fichas que apuesta a la 2da docena
			Docena3:integer;						//cantidad de fichas que apuesta a la 3er docena

			begin
			
			NumFichasApostadasUnNumero:=0;						//inicializo las variables a 0
			Par:= 0;
			Inpar:= 0;
			Pasa:= 0;
			Falta:= 0;
			Docena1:= 0;
			Docena2:= 0;
			Docena3:= 0;


			Writeln(Nombre , ' decea hacer una apuestas ?(s/n)');
			readln(SiNo);															
			
			if (SiNo = 's') then
			

				Writeln('desea apostar a algun numero (s/n)');
				readln(SiNo);                                                              //le pregunto si quiere apsotar algun numero del tablero
				
				if (SiNo = 's') then
				begin
				
					repeat  
					Writeln('ingrese el numero al que desea apostar (elija un numero del 0 al 36, para apostar al 00 ingrese "37")');       //le pido que elija el numeroa apostar
					readln(NumApostado);

					Until ((NumApostado > 0) and (NumApostado < 37));                                      //lo pongo en un repetir para que vuelva a introducir el numero si es que ingresa uno incorrecto

					repeat
					
					Writeln('ingrese la cantidad de fichas que desea apsotar , recuerde que actualmente usted tiene: ' , FichasJudor , ' fichas');          
					readln (NumFichasApostadasUnNumero);                                                            //le pido que ingrese la cantidad de fichas que desea apotsar
					
					until (NumFichasApostadasUnNumero <= FichasJudor);                                            //un repetir para asegurar que ingrese un valor valido

					FichasJudor:= FichasJudor - NumFichasApostadasUnNumero;											// actualizo la cantidad de fichas del jugador
					Writeln(FichasJudor ,' te quedan ' , FichasJudor , ' fichas');										// se lo informo										
				end;

				Writeln('desea apostar si el resultado sera par ? (s/n)');                         //le pregunto si quiere apostar por un resultado par
				readln(SiNo);
				if (SiNo = 's') then 
				begin
					

					repeat
					
					Writeln('ingrese la cantidad de fichas que desea apsotar , recuerde que actualmente usted tiene: ' , FichasJudor , ' fichas');          
					readln (Par);                                                            //le pido que ingrese la cantidad de fichas que desea apotsar
					
					until (Par <= FichasJudor);                                            //un repetir para asegurar que ingrese un valor valido
					FichasJudor:= FichasJudor - Par;										  // actualizo la cantidad de fichas del jugador
					Writeln(FichasJudor ,' te quedan ' , FichasJudor , ' fichas');									  // se lo informo
				end;

				Writeln('desea apostar si el resultado sera inpar ? (s/n) ');         //le pregunto si quiere apostar por un resultado inpar
				readln (SiNo);

				if (SiNo = 's') then 
				begin
					repeat
					
					Writeln('ingrese la cantidad de fichas que desea apsotar , recuerde que actualmente usted tiene: ' , FichasJudor , ' fichas');          
					readln (Inpar);                                                          //le pido que ingrese la cantidad de fichas que desea apotsar
					
					until (Inpar <= FichasJudor);                                          //un repetir para asegurar que ingrese un valor valido
					FichasJudor:= FichasJudor - Inpar;										// actualizo la cantidad de fichas del jugador
					Writeln(FichasJudor ,' te quedan ' , FichasJudor ,  'fichas');									// se lo informo
				end;

				Writeln('desea aposar desea apostar si el numero va a salir en la docena 1? (s/n) ');       //le pregunto si quiere apostar a que el numero salga en la primer docena
				readln (SiNo);

				if (SiNo = 's') then 
				begin
					repeat
					
					Writeln('ingrese la cantidad de fichas que desea apsotar , recuerde que actualmente usted tiene: ' , FichasJudor , ' fichas');          
					readln (Docena1);                                                          //le pido que ingrese la cantidad de fichas que desea apotsar
					
					until (Docena1 <= FichasJudor);                                          //un repetir para asegurar que ingrese un valor valido
					FichasJudor:= FichasJudor - Docena1;										// actualizo la cantidad de fichas del jugador
					Writeln(FichasJudor ,' te quedan ' , FichasJudor , ' fichas');									// se lo informo
				end;

				Writeln('desea aposar desea apostar si el numero va a salir en la docena 2? (s/n) ');       //le pregunto si quiere apostar a que el numero salga en la segunda docena
				readln (SiNo);

				if (SiNo = 's') then 
				begin
					repeat
					
					Writeln('ingrese la cantidad de fichas que desea apsotar , recuerde que actualmente usted tiene: ' , FichasJudor , ' fichas');          
					readln (Docena2);                                                          //le pido que ingrese la cantidad de fichas que desea apotsar
					
					until (Docena2 <= FichasJudor);                                          //un repetir para asegurar que ingrese un valor valido
					FichasJudor:= FichasJudor - Docena2;										// actualizo la cantidad de fichas del jugador
					Writeln(FichasJudor ,' te quedan ' , FichasJudor , ' fichas');									// se lo informo
				end;


				Writeln('desea aposar desea apostar si el numero va a salir en la docena 3? (s/n) ');       //le pregunto si quiere apostar a que el numero salga en la tercer docena
				readln (SiNo);

				if (SiNo = 's') then 
				begin
					repeat
					
					Writeln('ingrese la cantidad de fichas que desea apsotar , recuerde que actualmente usted tiene: ' , FichasJudor , ' fichas');          
					readln (Docena3);                                                          //le pido que ingrese la cantidad de fichas que desea apotsar
					
					until (Docena3 <= FichasJudor);                                          //un repetir para asegurar que ingrese un valor valido
					FichasJudor:= FichasJudor - Docena3;									 // actualizo la cantidad de fichas del jugador
					Writeln(FichasJudor ,' te quedan ' , FichasJudor , ' fichas');				 // se lo informo
				end;

				Writeln('desea aposar desea apostar si "falta" (queda entre 1-18)(s/n) ');       //le pregunto si quiere apostar a que el numero queda en la primer mitad del tablero
				readln (SiNo);

				if (SiNo = 's') then 
				begin
					repeat
					
					Writeln('ingrese la cantidad de fichas que desea apsotar , recuerde que actualmente usted tiene: ' , FichasJudor , ' fichas');          
					readln (Falta);                                                          //le pido que ingrese la cantidad de fichas que desea apotsar
					
					until (Falta <= FichasJudor);                                          //un repetir para asegurar que ingrese un valor valido
					FichasJudor:= FichasJudor - Falta;									   // actualizo la cantidad de fichas del jugador
					Writeln(FichasJudor ,' te quedan ' , FichasJudor , ' fichas');			   // se lo informo
				end;

				Writeln('desea aposar desea apostar si "pasa" (queda entre 19-36)(s/n)');       //le pregunto si quiere apostar a que el numero queda en la segunda mitad del tablero
				readln (SiNo);

				if (SiNo = 's') then 
				begin
					repeat
					
					Writeln('ingrese la cantidad de fichas que desea apsotar , recuerde que actualmente usted tiene: ' , FichasJudor , ' fichas');          
					readln (Falta);                                                          //le pido que ingrese la cantidad de fichas que desea apotsar
					
					until (Falta <= FichasJudor);                                          //un repetir para asegurar que ingrese un valor valido
					FichasJudor:= FichasJudor - Falta;									   // actualizo la cantidad de fichas del jugador
					Writeln(FichasJudor ,' te quedan ' , FichasJudor , ' fichas');			   // se lo informo
				end;

				if (Numero = NumApostado) then											//pregunto si el numero que salio es el mismo que eligio el Jugadpr
				begin
					Apuesta:= NumFichasApostadasUnNumero*38;

				end;

				if ((Numero MOD 2 = 0) and (Numero > 0) and (Numero < 37 )) then					//pregunto si el numero que eligio el jugador cumple con los requisitos para ganar fichas 
				begin		
					Apuesta:= Apuesta + Par * 2;													// guardo las fichas que gana el jugador 
				end;

				If ((Numero MOD 2 <> 0) and (Numero > 0) and (Numero < 37 )) then					//pregunto si el numero que eligio el jugador cumple con los requisitos para ganar fichas 	

				begin
					Apuesta:= Apuesta + Inpar * 2;													// guardo las fichas que gana el jugador 
				end;

				if ((Numero < 19) and (Numero > 0 )) then											//pregunto si el numero que eligio el jugador cumple con los requisitos para ganar fichas 
				begin
					Apuesta:= Apuesta + Falta * 2;													// guardo las fichas que gana el jugador 
				end;
				if ((Numero < 37) and (Numero > 18 )) then											//pregunto si el numero que eligio el jugador cumple con los requisitos para ganar fichas
				
				begin 
					Apuesta:= Apuesta + Pasa *2;													// guardo las fichas que gana el jugador 
				end;

				Case Numero of 																		//pregunto si el numero que eligio el jugador cumple con los requisitos para ganar fichas 
					1..12: Apuesta:= Apuesta + Docena1 * 3;											// guardo las fichas que gana el jugador 
					13..24: Apuesta:= Apuesta + Docena2 * 3;										// guardo las fichas que gana el jugador 
					25..36: Apuesta:= Apuesta + Docena3 * 3;										// guardo las fichas que gana el jugador 
				end;

		end;









	procedure Game;  //logica de juego

		var
			Termino: boolean;				// para saber si el juego termino o sigue
			Jugador1: string;               //nombre del jugador 1
			Jugador2: string;				//nombre del jugador 2
            GuardarFichas:integer;          //para guardar las fichas que me pase la funcion apuesta
			SiNo:string;						//para saber si desea continuar o no
			
			FichasJudor1: integer;			//fihcas del jugador1
			FichasJudor2: integer;			//fihcas del jugador2

			Numero: integer;				//el numero que la pelotita "cae" en la ruleta 
			


		begin

			randomize;                                                  //para iniciar el generador de numeros aleatorios, sin el el programa siempre que se ejecute el numero que genere siemrpe sera el mismo
			Termino:= FALSE;
			Writeln('ingrese el nombre del jugador N1: ');
			readln (Jugador1);														//guardo el nombre del jugador 1

			FichasJudor1:= 20;													//le asigno las fichas iniciales al jugador 1			
			

			Writeln('ingrese el nombre del jugador N2: ');
			readln (Jugador2);                                                     //guardo el nombre del jugador 2

			FichasJudor2:= 20;													//le asigno las fichas iniciales al jugador 2
			

			repeat 
			begin
				Writeln(Jugador1 , 'ahora posee ' , FichasJudor1 , ' fichas para apostar');		//les informo de su estado actual a los jugadores
				Writeln(Jugador2 , 'ahora posee ' , FichasJudor2 , ' fichas para apostar');


			
				Writeln('| ----------------------------------------------- TABLERO DE LA RULETA ---------------------------------------------|');
				Writeln('| -----------------------  _______________________________________________________________  ------------------------|');
				Writeln('| -----------------------  | 00 | 3 | 6 | 9 | 12 | 15 | 18 | 21 | 24 | 27 | 30 | 33 | 36 |  ------------------------|');
				Writeln('| -----------------------  |----| 2 | 5 | 8 | 11 | 14 | 17 | 20 | 23 | 26 | 29 | 32 | 35 |  ----------------------- |');
				Writeln('| -----------------------  |  0 | 1 | 4 | 7 | 10 | 13 | 16 | 19 | 22 | 25 | 28 | 31 | 34 |  ----------------------- |');
				Writeln('| -----------------------  |---------------------|-------------------|-------------------|  ----------------------- |');
				Writeln('| -----------------------  |      1 DOCENA       |      2 DOCENA     |      3 DOCENA     |  ----------------------- |');
				Writeln('| -----------------------  |---------------------|-------------------|-------------------|  ----------------------- |');
				Writeln('| -----------------------  |   1 - 18 |   PAR    |                   |  IMPAR  |  19-36  |  ----------------------- |');
				Writeln('| -----------------------  ---------------------------------------------------------------  ----------------------- |');



				Numero:= random (38);             //selecciona un numero random del 0 al 37 sel numero 37 seria "00"(doble cero) 

				Writeln('es el turno de ',Jugador1);										//empiza el turno del jugador N1
				GuardarFichas:=  Apuesta(jugador1,Numero,FichasJudor1);		//guargo el total de fichas con las que quedaron despues de la apuesta y haber perdido o ganado
                FichasJudor1:= FichasJudor1 + GuardarFichas;

				Writeln('es el turno de ',Jugador2);                                        //empiza el turno del jugador N2
				GuardarFichas:= Apuesta(jugador2,Numero,FichasJudor2);			//guargo el total de fichas con las que quedaron despues de la apuesta y haber perdido o ganado
                FichasJudor2:= FichasJudor2 + GuardarFichas;

				if (Numero = 37) then 														//para informarles el nuemro que salio 
				begin
					Writeln('ah salido el Numero "00"');									//  si salio 37 que seria 00
				end

				else 
 			begin
					Writeln('ah salido el Numero"',Numero,'"');								// cualuiera del 1 al 36
				end;
				Writeln(Jugador1,' ahora posee ',FichasJudor1,' Fichas');					//les informo de sua actuado actual al jugador 1
				
				Writeln(Jugador2,' ahora posee ',FichasJudor2,' Fichas');					//les informo de sua actuado actual al jugador 2

				if ((FichasJudor1 > 0) and (FichasJudor2 > 0))then								// pregunto si alguno de los jugadores llego a la cantidad de 0 fichas
				begin
					Writeln('ambos jugadores desean seguir jugando?(s/n) ');					//al ser una competencia si o si tienen que seguir jugnado ambos jugadores si no termina el juego
					readln (SiNo);
					
					if (SiNo = 's') then
					begin
						Termino:= FALSE;													//modifico la variable segun la desicion de los jugadores
					end
					
					else 
					begin
						termino:= TRUE;														
					end
                end
				
				else
				begin
					Termino:= TRUE;															//modifico la variable segun si alguno de los 2 quedo con 0 fichas
				end;

				end;

			Until Termino;

			if (FichasJudor1 < FichasJudor2) then					//comparo la cantidad de fichas de ambos jugadores para saver quien fue el ganador 
			begin
				Writeln('el ganador es ',jugador2,' con un total de ',FichasJudor2,' Fichas Felicidades!!');			//en caso de que el jugador N 2 halla ganado
			end
			
			else
			begin
				Writeln('el ganador es ',jugador1,' con un total de ',FichasJudor1,' Fichas Felicidades!!');            	//en caso de que el jugador N 1 halla ganado
			end;

			Writeln('muchas gracias haber jugado ');

		End;














Procedure Menu;                //menu del juego-programa 

	Var
		EleccionUsuario: Char; //le puse tipo Char por que si ponia un intriger si el usuario ponia una letra "explotava todo" xD
	Begin
    ClrScr;
	ClrScr;             //limpa la pantalla
		repeat
			Begin
				
                Writeln;               //salto de linea
				Writeln('|------------------------------------------- MENU --------------------------------------------------|');
				Writeln('|----------------------------------- [1] Ingrese al juego ------------------------------------------|');
				Writeln('|----------------------------------- [2] Instrucciones de como se juega ----------------------------|');
				Writeln('|----------------------------------- [3] Creditos --------------------------------------------------|');
				Writeln('|----------------------------------- [4] Salir del juego -------------------------------------------|');
				Writeln;               //salto de linea
				Writeln('Introdusca el numero de la opcion del munu a la que desea acceder');   //opciones del menu

				readln (EleccionUsuario);  //toma la opcion que el usuario ingreso

				Case EleccionUsuario Of
					'1':Begin
                            ClrScr;
							Writeln ('Usted ingreso al juego ');
							Game;				//llamo al procedimiento del juego
							//menu;				//vuelov a entrar al menu
							//Break;				// le pongo un breack por que por alguna razon despues sigue abriendo el menu con esto queda solcionado ese inconveniente
						end;


					'2':Begin    //intrucciones del juego
							Writeln('Estas son las Instrucciones del juego "LA RULETA"');
							Writeln('Es una competencia entre 2 jugadores al tratar de obtener mas fichas que el otro, atraves de apuestas a numeros y otras opciones');
							Writeln('Cada jugador empiza con un total de 20 fichas');
							Writeln('que se usaran para apostar a en el tablero');
							Writeln('el mismo cuenta con una seccion de numeros que va del 00,0 al 36');
							Writeln('en el mismo tambien encontramos una separacion de 3 docenas ');
							Writeln('una seccion para apostar por un resultado par o impar');
							Writeln('y otra para apostar a si el numero elegido queda en "falta" la cual contempla del 1 al 18 y otra de "pasa" el cual se fija si cae dentro del 19 al 36');
							Writeln;
							Writeln('ambos jufadores podran apostar a cualquiera de estas opciones mientras tenga fichas para apostar');
							Writeln('no existe apuesta minima de fichas para apostar');
							Writeln('el ganador sera el jugador que al finalizar el juego posea mas fichas que el otro');
							readkey;            //pone en "pausa" el programa
                            ClrScr;
                            menu;
							Break;				// le pongo un breack por que por alguna razon despues sigue abriendo el menu con esto queda solcionado ese inconveniente 
						end;

					'3':Begin
                            ClrScr;
							Writeln ('Estos son los Creditos del juego');
							Writeln('Sanchez Cristian Mariano: Project Manager(PM), Technical Leader, Software Developer, Tester ');
							readkey;            //pone en "pausa" el programa
                            menu;
						end;

					'4':begin
							Writeln ('Usted ah salido del juego precione "ENTER" para contunuar');
							readkey;            //pone en "pausa" el programa
							exit;               //cierra la consola 
                      end;

                    Else
                        begin             // exepcion (tira un mensaje de "error")
                        	Writeln ('Ah introducido una opcion incorrecta porfavor vuelva a ingresar una opcion correcta');
                        	readln (EleccionUsuario);  // toma la nueva "opcion" del usuario

                        end;
				end;
			
			end;
		Until EleccionUsuario = '4'; //puse esta opcion para asegurarme que nunca salga del repetir
		exit;      //cierra la consola por las dudas de que el usuario salga magicamente del repetir

end;


begin                        //este seria el programa que llamaria al proceso "menu"

    Menu;

End. 
