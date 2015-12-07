declaration template quattor/functions/strings;

include { 'pan/functions' };

#version comparison function (should not be here)
function comparever = {
  if(ARGC!=2){
    error("comparever: wrong number of arguments. Required 2, given "+to_string(ARGC)+".");
  };
  version1=matches(ARGV[0],'(\d+)\.+(\d+)\.+(\d+)[-]*(\d*)');
  version2=matches(ARGV[1],'(\d+)\.+(\d+)\.+(\d+)[-]*(\d*)');
  if(version1[4]==''){version1[4]='0'};
  if(version2[4]==''){version2[4]='0'};

  if(length(version1)*length(version2)==0){
    error("comparever: wrong version number format. Expected A.B.C[-D].");
  };
  for(i=1;i<5;i=i+1){
    if(to_long(version1[i])>to_long(version2[i])){
      return(-1);
    };
    if(to_long(version1[i])<to_long(version2[i])){
      return(1);
    };
  };

  return(0);

};
