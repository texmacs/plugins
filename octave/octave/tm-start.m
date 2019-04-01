d=getenv("TEXMACS_PATH");

if (length(d) > 0)
    %% add texmacs .m files to octave's load path
    if d(length(d)) == filesep()
	sep = "";
    else
	sep = filesep();
    endif
    addpath([d sep "plugins/octave/octave/tm"]);

    tmrepl
endif
