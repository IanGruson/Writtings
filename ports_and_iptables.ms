.so ./macros.ms
.TL
Cheatsheet on ports and iptables
.AU
Meedos

.NH
Standard ports
.PP
These are some of the most known standard ports :  
.TS
expand tab(@);
c s s 
l l l .
Standard ports
_
Port@Service@Use
_
20@FTP Data@The opened port by the FTP Server to send data to the FTP Client
21@FTP@The default port that FTP servers bind to
22@SSH@Secure Shell for remote connection
23@Telnet@Remote connection using Telnet
25@SMTP@Simple Mail Transfer Protocol, used for email routing between mail servers
53@DNS@The Port the Domain Name Service listens to DNS requests
68@DHCP@The port used by the Dynamic Host Configuration Protocol server to give out IP addresses
79@Finger@Used to identify users on the system
80@HTTP@Hypertext Transfer Protocol
113@Auth@The port the indent server users to verify users are coming from the IP address they claim to be
389@LDAP@Lightweight Directory Access Protocol
5432@PostgreSQL@The port the postgreSQL database uses
6667@IRC@Internet Relay Chat server
.TE

.NH 1
Setup a firewall with iptables
.PP
There are different types of firewalls that don't work the same, some may also
use up more CPU than others.
Quick reminder on firewall types : 
.SH 2
Packet-Filter :
.PP
Monitors the network traffic by filtering the incoming packets according to the
information they carry. It checks for the destination and source port and IP
address. It is implement by default on all modern Linux kernels
.SH 2
Connection tracking 
.PP
Exemple of the stateful firewall : 
This firewall keeps track of the state of each connection in a table such as
LISTEN, ESTABLISHED and CLOSING. This table keeps track of TCP and UDP transfer
protocols
.NH 2
iptables
.NH 3
Tables
.PP There are three tables in iptables 
.BL
table NAT (Network Address Translation) : used for port and IP translation
.BL
table 
.B "table Filter" :
it is the default table when none are specified. This table
contains all the filtering rules. There are 3 channels : FOWARD for all packets
traversing the firewall, INPUT for the entering packets and OUTPUT for the
packets exiting. 
.BL
table MANGLE (Not very used apparently)
.NH 3
Main commands
.LP 
-A --append 
.EX
iptables
.LP 
-D --delete 
.EX
iptables -D INPUT


