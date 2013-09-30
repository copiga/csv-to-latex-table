using GLib;

class csv : Object
{
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
		
		while(!in.eof)
		{
			if((totest = in.getc()) == '\n')
				rows++
		}
		
		return rows;
	}
}
