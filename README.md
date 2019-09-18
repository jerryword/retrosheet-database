# retrosheet-database
Retrosheet data in an Oracle 18c XE database provisioned with Vagrant
## Instructions
1. Clone this repository and submodules.  
`git clone --recurse-submodules https://github.com/jerryword/retrosheet-database.git`  
2. Follow the instructions in the oracle18c-xe-vagrant folder.
## PDB description
* PDB: `rs_pdb`
* user/password: `rs/chadwick`
* Table names have the pattern `(ASG/POST/REG)_(COMMENT/DAILY/EVENT/GAME/SUB)_XT`
* Additional tables: `(PARK/PERSON/TEAM)_XT`
* Tables are external, data located at `retrosheet-csv/csv'
* All column data types are `VARCHAR2(4000)`
## References
https://github.com/chadwickbureau/retrosheet.git
http://chadwick.sourceforge.net/doc/index.html
https://www.retrosheet.org
