from distutils.command.config import config


#Enviando o job pelo oozie
sudo ozzie job -oozie http://localhost:11000/oozie -config
examples/apps/map-reduce/job.properties - run

job id: 0000000-190727045839257-oozie-oozi-W

#Verificando o Status

oozie job -oozie http://localhost:11000/oozie -info 0000000-190727045839257-oozie-oozi-W

#Suspendendo o job
oozie job -oozie http://localhost:11000/oozie suspend 0000000-190727045839257-oozie-oozi-W


