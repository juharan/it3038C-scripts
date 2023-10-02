cd~ /Desktop
touch coviddata.sh

vim coviddata.sh

#===insert in editor====

#!/bin/bash
# This script downloads cocid data and displays it


POSITIVE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].positivetive') TODAY=$(date)
echo "On $TODAY, there were $POSITVE positive COVID cases"



NEGATIVE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].negative') TODAY=$(date)
echo "On $TODAY, there were $NEGATIVE negative COVID cases"



DEATH=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].death') TODAY=$(date)
echo "On $TODAY, there were $DEATH death COVID cases"



TOTAL=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].total') TODAY=$(date)
echo "On $TODAY, there were $TOTAL total COVID cases"
~                                                                                                                                                                   	 
~
# press esc                                             	
:wq
