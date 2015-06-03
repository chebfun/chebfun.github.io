#!/usr/bin/perl
# strip-mcode-errors.pl -- Strip any MATLAB error output from examples.
# This is a work-around for the fact that we can't prevent MATLAB's publish()
# from printing warning messages about "invalid" LaTeX in the examples (without
# hacking publish() itself, that is, which we can't do on our workstations).
# Written By:  Anthony P. Austin, June 03, 2015.

use warnings;
use strict;

use XML::LibXML;

if (@ARGV < 1) {
	print "Usage:  strip-mcode-error.pl [file]";
	exit(1);
}

my $file = $ARGV[0];

# Load the document.
open (my $fin, "<", $file)
	or die("Could not open $file:  $!");

local $/;
my $raw_doc = <$fin>;

close($fin);

# Insert placeholders for URLs enclosed in angle brackets so the libXML parser
# doesn't choke on them as invalid tags.  (Well, it's not libXML's fault; what
# we're parsing is not really HTML but Markdown.)
my $i = 0;
my @URLs;
while ($raw_doc =~ s/(<http:\/\/[^>]*>)/[[URL:$i]]/s) {
	$URLs[$i++] = $1;
}

# Parse the "HTML".
my $parser = XML::LibXML->new();
my $doc = $parser->parse_html_string($raw_doc);

my $htmlTag = $doc->documentElement();  # Enter the <html> tag.
my $bodyTag = $htmlTag->firstChild();   # Enter the <body> tag.

# Run through the children of <body>, eliminating unwanted objects.
my $n = $bodyTag->firstChild();
while (defined($n)) {
	if ($n->nodeName() eq "p") {
		# Replace <p></p> nodes introduced by libXML.
		my $nn = XML::LibXML::Text->new($n->textContent());
		$bodyTag->replaceChild($nn, $n);
		$n = $nn;
	} elsif ($n->nodeName() eq "pre") {
		# Get rid of MATLAB error messages.
		if ($n->getAttribute("class") eq "mcode-error") {
			my $nn = $n->previousSibling();
			$bodyTag->removeChild($n);
			$n = $nn;
		}
	}

	$n = $n->nextSibling();
}

# Write the fixed document back out, replacing URLs as we go.  We loop through
# the children of <body> instead of just doing $doc->toString() because we
# don't want the <html> and <body> tags themselves to show up.
open (my $fout, ">", $file)
	or die("Could not open $file:  $!");

for ($n = $bodyTag->firstChild(); $n; $n = $n->nextSibling()) {
	my $nextChunk = $n->toString();
	$nextChunk =~ s/\[\[URL:([0-9]+)\]\]/$URLs[$1]/gs;
	print $fout $nextChunk;
}

close($fout);
