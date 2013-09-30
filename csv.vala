using GLib;

class csv : Object
{
	public static FileStream in;
	
	public static int get_columns(FileStream in)
	{
		int totest;
		int columns = 0;
		
		in.rewind();

		while((totest = in.getc()) != '\n')
		{
			if(totest == ',')
				columns++;
		}
		
		return columns;
	}

	public static int get_rows(FileStream in)
	{
		int totest;
		int rows = 0;
		
		in.rewind();
		
		while(!in.eof())
		{
			if((totest = in.getc()) == '\n')
				rows++;
		}
		
		return rows;
	}

	public static string[]? get_row_as_array()
	{
		
		if(in.eof())
		{
			return null;
		}

		string[] toret;
		string row;
		
		row = in.read_line();
		toret = row.split(",");
		
		return toret;
	}
}
