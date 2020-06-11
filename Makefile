#############################################################################
# COSC2541 - Programming a freestanding filesystem as a database engine
# RadiiLabs Research 2020 Assignment #4
# Full Name        : Aditya A Sen
# Student Number   : 3324821
#############################################################################

CC=g++
CFLAGS=  -Wall
TARGET= mydb.out
DEPEND = queryUtil.h query.h table.h column.h row.h  
OBJ = queryUtil.o query.o table.o column.o row.o main.o

%.o: %.cpp 
	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET): $(OBJ) $(DEPEND)
	$(CC) -o $@ $^ $(CFLAGS)

clean: 
	rm -f *.o $(TARGET)

archive:
	zip $(USER)-a1.zip queryUtil.o queryUtil.h query.h query.o column.h row.h table.h main.o
