options {
        directory "/var/cache/bind";
        forwarders {
                192.168.4.2;
          };
        dnssec-validation no;
        listen-on-v6 { ::1; };
        allow-query { any; };
        #allow-query { 192.168.0.0; };
        #allow-recursion { 192.168.0.0; };
};

