require "socket"

s = Socket.new(Socket::AF_INET, Socket::SOCK_RAW, Socket::IPPROTO_ICMP)

s.bind(Socket.pack_sockaddr_in(0,"0.0.0.0"))

puts "binded"
loop do
    data, sender = s.recvfrom(1024)
    t = Socket.unpack_sockaddr_in(sender)
    puts data, t
end