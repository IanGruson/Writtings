.so ./macros.ms
.TL
Cheatsheet on ports and iptables
.AU
Ian Gruson

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

.NH
Setup a firewall with iptables
.PP
Quick reminder on firewall types : 
.BL 
Packet-Filtering Firewall :
.PP
Monitors the network traffic by filtering the incoming packets according to the
information they carry. It is implement by default on all modern Linux kernels
.BL

