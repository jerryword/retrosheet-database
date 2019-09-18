# retrosheet-database
* All available Retrosheet data in an Oracle 18c XE database, auto-provisioned with Vagrant.  
* Includes all fields produced by cwtools (ver. 0.7.2).  
* Provides a framework to build schemas tailored to your specific analytic or application requirements.  
## Instructions
1. Clone this repository and submodules.  
`git clone --recurse-submodules https://github.com/jerryword/retrosheet-database.git`  
2. Follow the instructions in the oracle18c-xe-vagrant README.
## PDB description
* PDB is created during vagrant provisioning from `oracle18c-xe-vagrant/userscripts/create_rs_pdb.sql`  
* PDB: `rs_pdb`
* user/password: `rs/chadwick`
* Table names have the pattern `(ASG/POST/REG)_(COMMENT/DAILY/EVENT/GAME/SUB)_XT`
* Special treatment is given to regular season daily files (see notes)
* Additional tables: `(PARK/PERSON/TEAM)_XT`
* Tables are external, data located at `retrosheet-csv/csv`
* All column data types are `VARCHAR2(4000)`  
## Notes
to-do: add note re: reg daily files...
## References
* https://github.com/chadwickbureau/retrosheet.git  
* http://chadwick.sourceforge.net/doc/index.html  
* https://www.retrosheet.org  
