{
	// Init
	
	mFileDir = "Src\Outside\Lighthouse\Init.gm";
	
	if(file_exists(mFileDir))
    {
		mFile = file_text_open_read(mFileDir);
		
		mNbLig = 0;
		mText[0] = " ";
		index =0;
		while(!file_text_eof(mFile))
		{
			text = file_text_read_string(mFile);
			var i;
			for(i=0; i < 3; i+=1)
			{
				pos = string_pos(";",text);
				mText[mNbLig,i] = string_copy(text, index, pos-1) ;
				text = string_delete(text,1,pos);
			}
			
			file_text_readln(mFile);
			mNbLig += 1;
		}
		
		mDecal[0] = 0;
		mDecal[1] = 50;
		mDecal[2] = 120;
		
		file_text_close(mFile);
	}
	
	mColor1 = make_color_rgb(220,209,97);
    mColor2 = make_color_rgb(220,209,97);
    mColor3 = make_color_rgb(220,209,97);
    mColor4 = make_color_rgb(220,209,97);
	mA = 1;
	
	
}