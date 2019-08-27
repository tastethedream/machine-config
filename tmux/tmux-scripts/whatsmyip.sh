P_ADDR=$(curl -s http://myip.enix.org/REMOTE_ADDR)
[ "$MY_IP_ADDR" ] || {
  echo "?.?.?.?"
  exit 1
}
