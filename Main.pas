Program Main;
uses crt;
								// lo escribi en sublime text 3 y lo compile con dev_pascal 
Procedure Menu;                //menu del juego-programa 

	Var
		EleccionUsuario: Char; //le puse tipo Char por que si ponia un intriger si el usuario ponia una letra "explotava todo" xD
	Begin
	ClrScr;             //limpa la pantalla
		repeat
			Begin
				
                Writeln;               //salto de linea
				Writeln('|------------------------------------------- MENU --------------------------------------------------|');
				Writeln;               //salto de linea
				Writeln('|----------------------------------- [1] Ingrese al juego ------------------------------------------|');
				Writeln('|----------------------------------- [2] Instrucciones de como se juega ----------------------------|');
				Writeln('|----------------------------------- [3] Creditos --------------------------------------------------|');
				Writeln('|----------------------------------- [4] Salir del juego -------------------------------------------|');
				Writeln;               //salto de linea
				Writeln('Introdusca el numero de la opcion del munu a la que desea acceder');   //opciones del menu

				read (EleccionUsuario);  //toma la opcion que el usuario ingreso

				Case EleccionUsuario Of
					'1':Begin
							Writeln ('Usted ingreso al juego ');
							readkey;            //pone en "pausa" el programa
						end;


					'2':Begin
							Writeln ('Estas son las Instrucciones del juego');
							readkey;            //pone en "pausa" el programa
						end;

					'3':Begin
							Writeln ('Estos son los Creditos del juego');
							readkey;            //pone en "pausa" el programa
						end;

					'4':begin
							Writeln ('Usted ah salido del juego');
							readkey;            //pone en "pausa" el programa						
							exit;               //cierra la consola 
                      end;

                    Else
                        begin             // exepcion (tira un mensaje de "error")
                        	Writeln ('Ah introducido una opcion incorrecta porfavor vuelva a ingresar una opcion correcta');
							readkey;            //pone en "pausa" el programa                        
                        	Menu;
                        end;
				end;
			
			end;
		Until EleccionUsuario = '5';
		exit;      //cierra la consola 

end;


begin                        //este seria el proframa que llamaria al proceso "menu"

    Menu;

End. 
