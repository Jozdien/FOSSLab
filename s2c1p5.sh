memlimit=10.0;
cpulimit=10.0;
while( true )
do
echo "Script running..."
ps -e -o pmem=,cpu=,pid=,user=,comm= $|$ sort=-pmem $|$
while read size cpu pid user comm
do
kill_mem=0
kill_cpu=0
if [ "\$USER" = "jose" ]
then
echo "Script running..."
kill_mem =` echo "$size$>$$memlimit" $|$ bc `
kill_cpu =` echo "$cpu$>$$cpulimit" $|$ bc `
if [ "$kill_mem = 1" ]
then
echo "Process with PID $pid killed."
kill $pid
elif [ "$kill_cpu = 1" ]
then
echo "Process with PID $pid killed."
kill $pid
else
continue
fi
fi
done
sleep 1
done