#!/system/bin/sh
#
#
#==========================================
#==========================================
# PROJECT DIRECT INJECTION BY EXIT_ONLY ===
#==========================================
#==========================================
#
#

   echo ""
   echo "You selected 'Aggressive' RAM boost..."
sleep 1
   echo ""
   echo "========================================";
   echo "=        Your current RAM amount...    =";
   echo "========================================";
sleep 1
free | awk '/Mem/{print "Free Memory 'RAM' ( Before Aggressive RAM boost by Exit_Only ) : "$4/1024" MB";}'
sync;
echo "3" > /proc/sys/vm/drop_caches;
sleep 1
echo "1" > /proc/sys/vm/drop_caches;
   echo "";
   echo "========================================";
   echo "=     Checking RAM amount again...     =";
   echo "========================================";
sleep 1
   echo "";
   echo "========================================";
   echo "=      Your current RAM amount...      =";
   echo "========================================";
sleep 1
free | awk '/Mem/{print "Free Memory 'RAM' ( After Aggressive RAM boost by Exit_Only ) : "$4/1024" MB";}'