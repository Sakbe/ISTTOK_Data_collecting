function [dataArray, timeVector]=LoadSdasData(client, channelID, shotnr)
	dataStruct=client.getData(channelID,'0x0000', shotnr);
	dataStruct=dataStruct(1);
	dataArray=dataStruct.getData;
	len=length(dataArray)
	tstart = dataStruct.getTStart;
	tend = dataStruct.getTEnd;
	tbs= (tend.getTimeInMicros - tstart.getTimeInMicros)/len;
	events = dataStruct.getEvents;
	tevent = events(1).getTimeStamp;
	delay = tstart.getTimeInMicros - tevent.getTimeInMicros;
	timeVector = delay:tbs:delay+tbs*(len-1);
	
