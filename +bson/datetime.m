function timeObj = datetime(time)
% DATETIME Convert UTC timestamp into Matlab dateteime object
%    time = bson.datetiime(utcTime)
%
%    See also: datetime

args = {'convertFrom','posixtime','TimeZone','UTC','Format','dd-MMM-uuuu HH:mm:ssX'};

timeObj = datetime(time,args{:});
