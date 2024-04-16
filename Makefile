TARGET=articles/product-topology-and-borel-algebra.md
SRC=$(TARGET:.md=.typ)

.PHONY: all clean
all: $(TARGET)
$(TARGET): $(SRC)
	articles/typst-to-mathlog $< $@
	@perl -pi -e 's/→/\\to /g; s/↦/\\mapsto /g; s/…/\\cdots /g; s/∀/\\forall /g; s/≤/\\leq /g; s/≥/\\geq /g; s/⟺/\\Longleftrightarrow /g;' $@

clean:
	@rm -f $(TARGET)
