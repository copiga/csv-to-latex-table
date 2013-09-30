using GLib;

int main(string[] argv)
{
	FileStream in, out;

	in = FileStream.open(argv[1], "r");
	out = FileStream.open(argv[2], "w");
	
	if(in==null || out == null)
	{
		return 1;
	}
	
	int csvrows, csvcolumns;
	int i;
	string[]? row;

	csvrows = csv.get_rows(in);
	csvcolumns = csv.get_columns(in);
	
	csv.in = in;
	latex.table = out;

	latex.write_header(csvcolumns);
	row = csv.get_row_as_array();
	if(row != null)
	       latex.write_title_row(row);
	while((row = csv.get_row_as_array()) != null)
	{
		latex.write_row(row);
	}
	
	latex.end_table();

	return 0;
}