# retrosheet-database
* All available Retrosheet data in an Oracle 18c XE database, auto-provisioned with Vagrant.  
* Includes all fields produced by cwtools (ver. 0.8.1).  
* Provides a framework to build schemas tailored to your specific analytic or application requirements.  
## Instructions
1. Clone this repository and submodules.  
`git clone --recurse-submodules https://github.com/jerryword/retrosheet-database.git`  
2. Follow the instructions in the oracle18c-xe-vagrant README.
## PDB description
* PDB is created during vagrant provisioning from `oracle18c-xe-vagrant/userscripts/create_rs_pdb.sql`  
* PDB: `rs_pdb`
* user/password: `rs/chadwick`
* Table names have the pattern `XT_(ASG|POST|REG)_(COMMENT|DAILY|EVENT|GAME|SUB)`
* Additional tables: `XT_(PARK|PERSON|TEAM|FRANCH)`
* All tables are external
* All column data types are `VARCHAR2(4000)`  
## Notes
* Special treatment is necessary for the regular season daily tables `XT_REG_DAILY_(EVX|EDX|EBX)`. The nature of the event (EVX), deduced (EDX), and box score (EBX) files may result in more than one record for a player's daily stats in a single game. These tables need to be merged properly for accurate counts. See https://www.retrosheet.org/events/GameFiles.pdf for an explanation. The script `sql/merge_reg_daily.sql` is an example on how to perform the merge.
## References
* https://github.com/chadwickbureau/retrosheet.git  
* http://chadwick.sourceforge.net/doc/index.html  
* https://www.retrosheet.org  

`The information used here was obtained free of charge from and is copyrighted by Retrosheet. Interested parties may contact Retrosheet at "www.retrosheet.org".`
