using GLib;

class latex : Object
{
	public static void write_header(FileStream table, int columns)
	{
		int i;

		table.printf("\\begin{table}[h!]\n");
		table.printf("\\begin{tabular}{");

		for(i=0;i<columns;i++)
			table.printf("|l");

		table.printf("|}\n");
	}

	public static void write_title_row(FileStream table, string[] columns)
	{
		int i;
		
		table.printf("\\hline{}");
		for(i=0;i<columns.length();i++)
		{
			table.printf("{\\bfseries %s} & ", columns[i]);
		}
		
		table.printf("\b\b\b\\\\\n");	//remove last 3 chars and then newline(both LaTeX and textfile)
		
	}

	public static void write_row(FileStream table, string[] columns)
	{
		int i;
		
		table.printf("\\hline{}");
		for(i=0;i<columns.length();i++)
		{
			table.printf("%s & ", columns[i]);
		}
		
		table.printf("\b\b\b\\\\\n");	//remove last 3 chars and then newline(both LaTeX and textfile)
		
	}
	
	public static void end_table(Filestream table)
	{
		table.printf("\\end{tabular}\n")
		table.printf("\\end{table}\n");
	}
}