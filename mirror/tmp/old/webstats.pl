#!/usr/bin/perl
#
# STATS: by Jay D. Dyson - 08/18/99
# USAGE: ./stats.pl > stats.rpt 2>&1 &
#
$bin1 = "/bin";       # Binary Directory
$bin2 = "/usr/bin";   # Binary Directory
$path = "/home/web/mirror/attrition";  # Path where file is.
$file = shift(@ARGV);                  # File to analyze
chomp($file);                          # Clip newline from input
$current_month = `$bin1/date +%m`;
$hackcount = 0;       # Total count
$Ax = 0;              # AIX
$Bf = 0;              # FreeBSD
$Bo = 0;              # OpenBSD
$Bn = 0;              # NetBSD
$BI = 0;              # BSDi
$DG = 0;              # Digital Unix
$HP = 0;              # HPUX
$Ir = 0;              # Irix
$Li = 0;              # Linux
$MX = 0;              # MacOSX
$NT = 0;              # Windows NT (or Win95/98)
$OS = 0;              # Digital OSF1
$Sc = 0;              # Sco
$So = 0;              # Solaris
#
if ($file eq "") {
  print "\n- ERROR: No file prefix supplied.\n";
  print "         Run as ./webstats.pl YEAR-MO\n\n";
  exit 1;
}
#
# Dates for a given HTML page appear to always be at line 35 or after.
# Alter head declaration if in error.
#
$head = 35;
#
open(FILE,"$path/$file.html") || die("Could not open file - $path/$file.html.\n");
  $date = `$bin1/head -$head $path/$file.html |$bin2/tail -1 |$bin1/cut -b2-6`; 
  chomp($date);
  @datesplit = split(/\./,$date);
  $file_month = $datesplit[1];
  print "\n";
  print "Index Statistics for $date:\n";
  print "(Analysis of $path/$file.html)\n\n";
  while (<FILE>) {
    if ($_ =~ "$date") { $hackcount = $hackcount + 1; }
    if ($_ =~ " Ax ")  { $Ax = $Ax + 1; }
    if ($_ =~ " Bf ")  { $Bf = $Bf + 1; }
    if ($_ =~ " Bo ")  { $Bo = $Bo + 1; }
    if ($_ =~ " Bn ")  { $Bn = $Bn + 1; }
    if ($_ =~ " BI ")  { $BI = $BI + 1; }
    if ($_ =~ " DG ")  { $DG = $DG + 1; }
    if ($_ =~ " HP ")  { $HP = $HP + 1; }
    if ($_ =~ " Ir ")  { $Ir = $Ir + 1; }
    if ($_ =~ " Li ")  { $Li = $Li + 1; }
    if ($_ =~ " MX ")  { $MX = $MX + 1; }
    if ($_ =~ " NT ")  { $NT = $NT + 1; }
    if ($_ =~ " OS ")  { $OS = $OS + 1; }
    if ($_ =~ " Sc ")  { $Sc = $Sc + 1; }
    if ($_ =~ " So ")  { $So = $So + 1; }
  }
  if ($current_month eq $file_month) {
    $date_span = `$bin1/date +%d`;         # Today's date (day only)
  } else {
    if ($file_month eq "01") { $date_span = "31" }
    if ($file_month eq "02") { $date_span = "28" }
    if ($file_month eq "03") { $date_span = "31" }
    if ($file_month eq "04") { $date_span = "30" }
    if ($file_month eq "05") { $date_span = "31" }
    if ($file_month eq "06") { $date_span = "30" }
    if ($file_month eq "07") { $date_span = "31" }
    if ($file_month eq "08") { $date_span = "31" }
    if ($file_month eq "09") { $date_span = "30" }
    if ($file_month eq "10") { $date_span = "31" }
    if ($file_month eq "11") { $date_span = "30" }
    if ($file_month eq "12") { $date_span = "31" }
  }
  $average = $hackcount / $date_span;
  $rounded = sprintf("%.1f", $average);
  print "Reported Hacks: $hackcount\n";
  if ($Ax > 0) { print " # of AIX     : $Ax\n"; }
  if ($BI > 0) { print " # of BSDi    : $BI\n"; }
  if ($HP > 0) { print " # of HP/UX   : $HP\n"; }
  if ($Ir > 0) { print " # of IRIX    : $Ir\n"; }
  if ($Li > 0) { print " # of Linux   : $Li\n"; }
  if ($Bf > 0) { print " # of FreeBSD : $Bf\n"; }
  if ($Bn > 0) { print " # of NetBSD  : $Bn\n"; }
  if ($Bo > 0) { print " # of OpenBSD : $Bo\n"; }
  if ($OS > 0) { print " # of OSF1    : $OS\n"; }
  if ($DG > 0) { print " # of DigUnix : $DG\n"; }
  if ($Sc > 0) { print " # of SCO     : $Sc\n"; }
  if ($MX > 0) { print " # of MacOSX  : $MX\n"; }
  if ($So > 0) { print " # of Solaris : $So\n"; }
  if ($NT > 0) { print " # of Win-NT  : $NT\n"; }
  print "\n";
  print "Average number of website defacements per day since $date.01: $rounded.\n\n";
close(FILE);
#
# End

