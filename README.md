This tiny tool lists the absolute URLs of the available fonts.  It requires at
least OS X 10.6.  The output is unsorted.  Each line contains exactly one URL
pointing to a font file.  The URLs are encoded according to RFC 1738 and of the
form

    file://PATH#postscript-name=PSNAME

where `PATH` and `PSNAME` are the absolute file path and the PostScript name of
the font, respectively.
