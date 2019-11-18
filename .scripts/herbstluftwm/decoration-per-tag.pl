#!/usr/bin/perl
# This script watches for tag changes and gives visual feedback

## Configuration (fill with your tag names)
my %colors = (
	main => '#DD0000',
	devel => '#13B8E0',
	write => '#96E013',
	admin => '#C713E0'
);

## Apply tag color
# Right now we change the active window's border color to the tag's color.
sub redecorate
{
	my ($foo, $activity) = @_;
	system("herbstclient", "set", "window_border_active_color",
		"$colors{$activity}");
}

## main routine
use v5.20;

# set up a pipe for reading hooks
open HOOKS, "herbstclient -i '(tag_changed|reload)'|"
	or die "can't fork: $!";
# process incoming messages
OUTER:
while (<HOOKS>) {
	chomp;
	for ($_) {
		redecorate(split(/\t/)) when /^tag_changed/;
		last OUTER when /^reload/; # quit on reload
	}
}
close HOOKS or die "unfinished love story: $! $?"; # happens on hlwm crash
