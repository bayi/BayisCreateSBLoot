TARGET=BayisCreateSBLoot.zip

all: $(TARGET)

$(TARGET): src
	@printf "\e[32m [**]   Compiling zip: $@ ...\e[m\n"
	@cd src && zip -r ../${TARGET} .
	@printf "\e[32m [**]   Done.\e[m\n"

clean:
	@printf "\e[32m [**]   Cleaning up...\e[m\n"
	@rm -f ${TARGET}

.PHONY: all $(TARGET) zip
