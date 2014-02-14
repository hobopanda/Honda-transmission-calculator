#!/usr/bin/perl
use strict;
use warnings;

my $inches_in_a_mile = "63360";
my $wheel1 = "72.069";
my $fd_1 = "4.900";
my $fd_2 = "4.250";
my $fd_3 = "4.058";
my $rpm_1 = $ARGV[0];
my $rpm_2 = "7500";
my @gears = (
0.694, 0.702, 0.750, 0.771, 0.823, 0.852, 0.878, 0.909, 0.937,
0.937, 1.000, 1.033, 1.066, 1.172, 1.250, 1.259, 1.346, 1.565,
1.650, 1.761, 1.782, 1.894, 1.900, 1.909, 1.944, 3.083, 3.250,
);

print "+-------+----------+----------+----------+-----------+------------+-----------+\n";
print "| Gear  | $fd_1    | $fd_2    | $fd_3    | Engen RPM | wheel size |           |\n";
print "+-------+----------+----------+----------+-----------+------------+-----------+\n";
foreach my $gearx (@gears) {
     my $speed = (((($rpm_1 / $gearx) / $fd_1) * $wheel1) * 60) / $inches_in_a_mile;
     my $speed2 = (((($rpm_1 / $gearx) / $fd_2) * $wheel1) * 60) / $inches_in_a_mile;
     my $speed3 = (((($rpm_1 / $gearx) / $fd_3) * $wheel1) * 60) / $inches_in_a_mile;
     printf "| %5.3f |  %6.2f  |  %6.2f  |  %6.2f  |  %4.4s     | %6.6s     | %6.2f    |\n",
     $gearx, $speed, $speed2, $speed3, $rpm_1, $wheel1, 0 ;
     }
print "+-------+----------+----------+----------+----------+------------+-----------+\n";
