FILE := main
OUT  := build

.PHONY: pdf
pdf:
	latexmk -interaction=nonstopmode -outdir="$(OUT)" -pdf -halt-on-error -jobname="$(jobname)" $(FILE)

.PHONY: watch
watch:
	latexmk -interaction=nonstopmode -outdir="$(OUT)" -pdf -pvc -halt-on-error -jobname="$(jobname)" $(FILE)

.PHONY: clean
clean:
	rm -rf $(filter-out $(wildcard $(OUT)/*.pdf), $(wildcard $(OUT)/*)) *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.lof *.log *.lot *.out *.run.xml *.synctex.gz *.toc

.PHONY: purge
purge:
	rm -rf $(OUT)
