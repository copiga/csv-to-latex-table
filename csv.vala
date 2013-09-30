using GLib;

class csv : Object
{
	public static FileStream in;
	
	public static int get_columns(FileStream in)
	{
		char totest;
		int columns;
		
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
		char totest;
		int rows;
		
		in.rewind();
		
		while(!in.eof())
		{
			if((totest = (char)in.getc()) == '\n')
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
