#!/usr/bin/perl 
die "Required arguments not found\n" unless @ARGV == 2;
my $file = $ARGV[0];
my $site_name = $ARGV[1];
my $found;

open FH, "<$file" or die "can't open $file. $! \n";

my ($name, $location, $mapref, $type, $description);

while (FH) {
    chop;
    ($name, $location, $mapref, $type, $description) = split(/:/, $_);

    if($name eq $site_name) {
        $found = $.;
        last;
    }

}
if($found) {
    print "location: $name on the line $found\n";
    print "information on $name($type)\n";
    print "Map: $mapref";
    print "Description: $description";
}

close FH;

exit;
