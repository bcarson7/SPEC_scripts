. ./shrc
. ./numa-detection.sh
ulimit -s unlimited
a=`cat /proc/cpuinfo | grep processor | wc -l`
rm -rf topo.txt
specperl nhmtopology.pl
b=`cat topo.txt`
c=`expr $a / 2`
echo "****************************************************************"
echo Running rate with $a copies with a topology of $b
echo "****************************************************************"
if [ $NUMA == 0 ]
then
    runcpu --config=bcarson2 --copies=$a --iterations=1 --size=ref fprate
    runcpu --config=bcarson2 --copies=$a --iterations=1 --size=ref intrate
    runcpu --config=bcarson2 --threads=$a --iterations=1 --size=ref fpspeed
    runcpu --config=bcarson2 --threads=$a --iterations=1 --size=ref intspeed
else
    echo exiting test since NUMA is enabled
fi
