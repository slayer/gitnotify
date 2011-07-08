#!/bin/sh

if [ ! -x `which etckeeper` ]; then
    echo "etckeeper is not installed"
    exit 1
fi


if [ ! -d /etc/.git ]; then
    cd /etc
    etckeeper init || exit 1
fi

if [ ! -x /etc/.git/hooks/gitnotify/gitnotify ]; then
    cd /etc/.git/hooks || exit 1
    git clone git://github.com/slayer/gitnotify.git
    echo '[ -x /etc/.git/hooks/gitnotify/gitnotify ] && /etc/.git/hooks/gitnotify/gitnotify -m root@localhost -s "[DIFF] `hostname` /etc"' >>/etc/.git/hooks/post-commit
    echo "Please edit /etc/.git/hooks/post-commit"
    echo "Note: do not forget to install bsd-mailx: apt-get install bsd-mailx"
fi

