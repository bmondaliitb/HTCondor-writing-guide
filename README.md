### This is a guide in writing correct HTCondor submission file.

* don't forget to use shebang **(#!/usr/bin/env interpretor)** in the executable files that will be executed
* HTCondor has access to the **/afs/** **/eos/** filesystem through the Kerberos authentication. so you can directly read and right to the /afs/ and /eos/. **But always use absolute path**
* if you use any interpretor script, **then dont forget to make it executable by using chmod +x myScript.sh**


In this directory you see one executable file and one submit script. This **compiles** the code **directly reading the source files from the /afs/ volume,** does calculation and directly writes to the **/eos/** volume.



