echo "IPV4"
echo "=============================="
echo ""
sudo lsof -Pnl +M -i4
echo ""
echo ""
echo "IPV6"
echo "=============================="
echo ""
sudo lsof -Pnl +M -i6
