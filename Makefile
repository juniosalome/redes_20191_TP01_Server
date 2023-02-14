############################# Makefile ##########################
#Variável
CC = gcc
DEPS = server.h  
OBJ = main.o server.o
EXEC = server
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
	
$(EXEC):$(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
	
clean: 
	rm -rf *.o $(EXEC)