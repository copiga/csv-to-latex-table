using GLib;

class latex : Object
{
	public static FileStream table;

	public static void write_header(int columns)
	{
		int i;

		table.printf("\\begin{table}[h!]\n");
		table.printf("\\begin{tabular}{");

		for(i=0;i<=columns;i++)
			table.printf("|l");

		table.printf("|}\n");
	}

	public static void write_title_row(string[] columns)
	{
		int i;
		
		table.printf("\\hline{}");
		for(i=0;i<columns.length;i++)
		{
			if(!(i==columns.length-1))
				table.printf("{\\bfseries %s} & ", columns[i]);
			else
				table.printf("{\\bfseries %s}\\\\\n", columns[i]);
		}	
	}

	public static void write_row(string[] columns)
	{
		int i;
		
		table.printf("\\hline{}");
		for(i=0;i<columns.length;i++)
		{
			if(!(i==columns.length-1))
				table.printf("%s & ", columns[i]);
			else
				table.printf("%s\\\\\n", columns[i]);
		}
	}
	
	public static void end_table()
	{
		table.printf("\\hline\n");
		table.printf("\\end{tabular}\n");
		table.printf("\\end{table}\n");
	}
}