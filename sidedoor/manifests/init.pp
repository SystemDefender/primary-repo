# Class: sidedoor
# ===========================
#
#
# Authors
# -------
#
# Author Name usapltrr@verizon.net
#
# Copyright
# ---------
#
# Copyright 2016 Dimndskier, unless otherwise noted.
#
class sidedoor {

#  Create a Group for the localusers to be added to.

	group { 'sidedoor':
	  ensure => 'present',
	  system => 'true',
	  gid    => '300',
	}
	
	user { 'wsf29221':
	  ensure           => 'present',
	  forcelocal       => 'true',
	  password         => '$6$Bw0KWK673BvjQU/W$WAiTDgk7EN3sD02xUaMngmIB02qQ/G4sRTeP6ySZToWylblcawuekIO4WSUgVMllbjrXP2QOLH96jTfA1xdz1/',
	  password_max_age => '180',
	  password_min_age => '0',
	  gid              => '300',
	  uid              => '301',
	  comment          => 'Sidedoor_Acct-Warron',
	  managehome       => 'true',
	  home             => '/home/wsf29221',
	  shell            => '/bin/bash',
	}

	file { '/home/wsf29221':
	  ensure   => 'directory',
	  owner    => '301',
	  group    => '300',
	  mode     => '0750',
	  source   => [ "puppet:///modules/sidedoor/wsf29221", ],
	}

}
