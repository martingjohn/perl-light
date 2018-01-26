# perl-light
Lightweight perl container as I was astounded that the size of the default perl container was 879 MB, this is 38MB

If run with no arguments it prints the perl version

    docker run --rm martinjohn/perl-light
    
    This is perl 5, version 26, subversion 1 (v5.26.1) built for x86_64-linux-thread-multi
    
    Copyright 1987-2017, Larry Wall
    
    Perl may be copied only under the terms of either the Artistic License or the
    GNU General Public License, which may be found in the Perl 5 source kit.
    
    Complete documentation for Perl, including FAQ lists, should be found on
    this system using "man perl" or "perldoc perl".  If you have access to the
    Internet, point your browser at http://www.perl.org/, the Perl Home Page.

This can either run perl commands from the commandline

    docker run --rm martinjohn/perl-light -MData::Dumper -e 'print Dumper @INC;'
    $VAR1 = '/usr/local/lib/perl5/site_perl';
    $VAR2 = '/usr/local/share/perl5/site_perl';
    $VAR3 = '/usr/lib/perl5/vendor_perl';
    $VAR4 = '/usr/share/perl5/vendor_perl';
    $VAR5 = '/usr/lib/perl5/core_perl';
    $VAR6 = '/usr/share/perl5/core_perl';

Or run a perl script

    docker run --rm -v ${PWD}/hello.pl:/root/hello.pl martinjohn/perl-light /root/hello.pl
    Hello world

Using work dir of /tmp

    docker run --rm -v ${PWD}/hello.pl:/tmp/hello.pl martinjohn/perl-light hello.pl
    Hello world

Or even more briefly

    docker run --rm -v ${PWD}:/tmp martinjohn/perl-light hello.pl
    Hello world

Obviously you can also use it to build other Docker images on
