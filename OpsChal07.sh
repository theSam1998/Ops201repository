#!/bin/bash



#Main

echo "pc name"
lshw | grep -A1 "overlord"
echo ""
echo "cpu info" 
lshw | grep -A5 "Intel(R)"
echo ""
echo "RAM info"
lshw | grep -A3 "*-memory"
echo ""
echo "display adapter info"
lshw | grep -A12 "*-display"
echo ""
echo "network adapter info"
lshw | grep -A15 "*-network"



#End