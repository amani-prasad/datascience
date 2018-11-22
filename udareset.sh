tempv="agnt"
udadpath=$(ps -ef | grep discagnt| grep -o -P '(?<= -d ).*(?=agnt)')
udadpath="$udadpath$tempv"
oldudid=$(grep 'UD_UNIQUE_ID=.*$' ${udadpath}/aioptionrc | cut -c14- )
echo 'old UDA ID:'${oldudid}
udabasedirreveal=$(grep 'BASEDIR=.*$' ${udadpath}/aioptionrc | cut -c9- )
${udabasedirreveal}/bin/discagnt --newuniqueid
newudid=$(grep 'UD_UNIQUE_ID=.*$' ${udadpath}/aioptionrc | cut -c14- )
echo 'new UDA ID:'${newudid}
if [ "${newudid}" == "${oldudid}" ]
then
echo Failed
else echo Resetted
fi
/opt/HP/Discovery/bin/discagnt --newuniqueid
echo Resetted
/usr/lpp/HP/ Discovery/bin/discagnt --newuniqueid
echo Resetted

--TEST 1234

No Idea