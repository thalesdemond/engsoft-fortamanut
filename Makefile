SOURCE=Grupo\ 4\ -\ Controle\ de\ Frota.odt
OUTPUT_PDF=$(SOURCE:.odt=.pdf)
OUTPUT_MD=$(SOURCE:.odt=.md)

BUILD_DIR=./build

all:$(BUILD_DIR)/$(OUTPUT_PDF) $(BUILD_DIR)/$(OUTPUT_MD)

$(BUILD_DIR)/$(OUTPUT_PDF):$(SOURCE)
	libreoffice --headless --convert-to pdf:draw_pdf_Export --outdir $(BUILD_DIR) "$<"

$(BUILD_DIR)/$(OUTPUT_MD):$(SOURCE)
	pandoc "$<" -t markdown --extract-media=$(BUILD_DIR) -o "$@"
