#!/usr/bin/perl

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
