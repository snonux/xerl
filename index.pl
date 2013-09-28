#!/usr/bin/perl

# Xerl (c) 2005-2011, 2013 Dipl.-Inform. (FH) Paul C. Buetow
#
# 	E-Mail: xerl@dev.buetow.org 	WWW: http://xerl.buetow.org
#
# This is free software, you may use it and distribute it under the same
# terms as Perl itself.

use strict;
use warnings;

use Xerl;

use Socket;
use Sys::Hostname;

my $host = hostname();
my $config =
  -e "xerldev.conf"
  ? "xerldev.conf"
  : ( -e "xerl-$host.conf" ? "xerl-$host.conf" : 'config.conf' );

my Xerl $xerl = Xerl->new( config => $config );
$xerl->run();
