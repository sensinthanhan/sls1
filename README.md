# ADDING CODE
Line 1115: dang o state_hello, thi chay ham tcpip_handler_hello(), ham nay tuong tu tcpip_handler, khac o ham check_packet_for_node_hello(&cmd, key_begin)
Luc nay ham su dung key_begin do minh tu dat. Sau khi duoc ma hoa, gui toi process_hello_cmd, thi node se reply lai cho gw bang ham send_reply_hello
Ham send_reply_hello tuong tu send_reply, nhung se co ham make_packet_for_node_hello de tao goi tin duoc encrypt voi key_begin (thay vi la make_packet_for_node)
