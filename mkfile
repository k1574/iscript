<mkconfig
TGT = $NAME
MKSHELL = rc
install :V: $TGT
	for(i in $prereq){
		cp -f $i.rc $BIN/$i
		chmod 0755 $BIN/$i
	}
% :Q:
	touch $target.rc
