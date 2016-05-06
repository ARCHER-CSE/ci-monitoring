# ci-monitoring #

Monitoring and benchmarking ARCHER using Jenkins CI. This project is to develop a framework based on the Jenkins CI server that can monitor the ARCHER HPC service (http://www.archer.ac.uk) and also contiuously benchmark the system to generate statistical information on its performance variation.

# Project Plan #

1. Setup VM with Jenkins CI (done): https://archer-ci.epcc.ed.ac.uk
2. Create project and account on ARCHER to run monitoring and benchmarks
3. Create basic monitoring tasks (e.g. working compilers) and integrate into Jenkins
4. Create basic benchmarking tasks (e.g. IOR, ARCHER acceptence benchmarks) and integrate into Jenkins

## 1. Setup VM with Jenkins CI ##

### February 2016 ###

This has been done. The CI server can be found at:

* https://archer-ci.epcc.ed.ac.uk

The server is only visible from the EPCC LAN. Account requests on Jenkins should go to Andy Turner. The initial test tasks run in Andy's personal ARCHER account. This needs to be changed by implementing step 2. below.

## 2. Create Project and Account on ARCHER ##

This has been created as project z17 on ARCHER.

## 3. Create basic monitoring tasks ##

* 2016-03-30 Tasks to monitor the three compiling environments have been created and checked into the repository.

## 4. Create basic monitoring tasks ##

* 2016-03-30 Still exploring best IOR configuration to use for frequent monitoring
* 2016-03-30 Contacted HarveyR about getting access to ARCHER acceptance benchmarks - he is investigating
