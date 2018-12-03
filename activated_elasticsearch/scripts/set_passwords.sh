#!/usr/bin/expect -f

set timeout -1
spawn /usr/share/elasticsearch/bin/elasticsearch-setup-passwords interactive -s
match_max 100000
expect -exact "Please confirm that you would like to continue \[y/N\]"
send -- "y\r"
expect -exact "y\r
Enter password for \[elastic\]: "
send -- "secret\r"
expect -exact "\r
Reenter password for \[elastic\]: "
send -- "secret\r"
expect -exact "\r
Enter password for \[apm_system\]: "
send -- "secret\r"
expect -exact "\r
Reenter password for \[apm_system\]: "
send -- "secret\r"
expect -exact "\r
Enter password for \[kibana\]: "
send -- "secret\r"
expect -exact "\r
Reenter password for \[kibana\]: "
send -- "secret\r"
expect -exact "\r
Enter password for \[logstash_system\]: "
send -- "secret\r"
expect -exact "\r
Reenter password for \[logstash_system\]: "
send -- "secret\r"
expect -exact "\r
Enter password for \[beats_system\]: "
send -- "secret\r"
expect -exact "\r
Reenter password for \[beats_system\]: "
send -- "secret\r"
expect -exact "\r
Enter password for \[remote_monitoring_user\]: "
send -- "secret\r"
expect -exact "\r
Reenter password for \[remote_monitoring_user\]: "
send -- "secret\r"
expect eof