all:
	valac *.vala -o csv_to_latex_table -X -O3
install:
	cp csv_to_latex_table /bin/csv_to_latex_table
clean:
	rm csv_to_latex_table