SOURCE=Grupo\ 4\ -\ Controle\ de\ Frota.odt
OUTPUT=$(SOURCE:.odt=.pdf)
BUILD_DIR=./build

all:$(BUILD_DIR)/$(OUTPUT)

$(BUILD_DIR)/$(OUTPUT):$(SOURCE)
	libreoffice --headless --convert-to pdf:draw_pdf_Export --outdir $(BUILD_DIR) "$<"
