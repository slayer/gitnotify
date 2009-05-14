SUMMARY
=======

gitnotify is a simple shell script designed to send nice HTML diff from hooks.
It was based on HTML and CSS code from svnnotify http://search.cpan.org/dist/SVN-Notify/ and unknown diff2html shell script

QUICK START
===========

Running from sources (latest and greatest features)
---------------------------------------------------

1. Clone the git repo

        git clone git://github.com/slayer/gitnotify.git

2. Make symlink to your script directory (eg ~/bin)
        ln -s path/to/gitnotify/gitnotify ~/bin

3. Edit .git/hooks/post-commit script
        echo '[ -x ~/bin/gitnotify/gitnotify ] && ~/bin/gitnotify/gitnotify -m your@email.address -s "[DIFF] My repo notify"' >>.git/hooks/post-commit
 
4. Add execute bit to scripts

        chmod a+x ~/bin/gitnotify
        chmod a+x .git/hooks/post-commit

5. Enjoy


OPTIONS
=======


