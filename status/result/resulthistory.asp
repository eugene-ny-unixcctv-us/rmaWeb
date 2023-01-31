
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">


<HEAD>
	<META NAME="Author" CONTENT="PilDog">
	<META NAME="GENERATOR" CONTENT="NotePad">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<TITLE>RMA Number 102938</TITLE>
	<LINK rel="stylesheet" type="text/css" href="style.css">
	 <script type="text/javascript" src="jquery.js"></script>
<script language="Javascript1.2">
<!--
	
var uhour=13;
var umin=38;
var usec=52; 

function ShowTime() {
	usec++;
	if (usec >= 60){
		usec='00';
		umin++;
		if (umin >=60){
			umin='00';
			uhour++;
		}
		else if (umin<10){
			umin="0" + umin;
		}
	}
	else if (usec <10){
		usec="0"+ usec;
	}
 	var disp= ((uhour<10)? "0" : "") + uhour + ":" + ((umin<10)? "0" : "") + umin + ":" + usec;
	document.getElementById("clock").innerHTML = "<font color=#ffffff STYLE=\"font-size : 7pt;line-height : 10px;font-family : Tahoma;\"><B>Server Time - 11/16/2022,"+ disp +"</B></font>";
	setTimeout("ShowTime()",1000);
}

function confirm_delete()
{
	if(confirm("Are you sure?"))
	{ 
		document.rma.method.value = "Delete";
		document.rma.submit();
	}
	else
	{ return false; }
	
}

function insertfield(el, Date) {
	var textfield = document.getElementById(el);
	textfield.value = Date	
}

/**
 * DHTML date validation script. Courtesy of SmartWebby.com (http://www.smartwebby.com/dhtml/)
 */
// Declaring valid date character, minimum year and maximum year
var dtCh= "/";
var minYear=1900;
var maxYear=2100;

function isInteger(s){
	var i;
    for (i = 0; i < s.length; i++){   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
    // All characters are numbers.
    return true;
}

function stripCharsInBag(s, bag){
	var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++){   
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function daysInFebruary (year){
	// February has 29 days in any year evenly divisible by four,
    // EXCEPT for centurial years which are not also divisible by 400.
    return (((year % 4 == 0) && ( (!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28 );
}

function DaysArray(n, year) {
	var days;
	days=31;
	if (n==4 || n==6 || n==9 || n==11) {days = 30;}
	if (n==2) {days = daysInFebruary(year);}
   return days
}

function gettotalday(dtStr){
	var pos1=dtStr.indexOf(dtCh)
	var pos2=dtStr.indexOf(dtCh,pos1+1)
	var strMonth=dtStr.substring(0,pos1)
	var strDay=dtStr.substring(pos1+1,pos2)
	var strYear=dtStr.substring(pos2+1)
	var totalday=0
	strYr=strYear
	if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1)
	if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1)
	for (var i = 1; i <= 3; i++) {
		if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1)
	}
	month=parseInt(strMonth)
	day=parseInt(strDay)
	year=parseInt(strYr)
	
	if (pos1==-1 || pos2==-1){
		alert("The date format should be : mm/dd/yyyy")
		return 0
	}
	if (strMonth.length<1 || month<1 || month>12){
		alert("Please enter a valid month")
		return 0
	}
	if (strDay.length<1 || day<1 || day>31 || (month==2 && day>daysInFebruary(year)) || day > DaysArray(month, year)){
		alert("Please enter a valid day")
		return 0
	}
	if (strYear.length != 4 || year==0 || year<minYear || year>maxYear){
		alert("Please enter a valid 4 digit year between "+minYear+" and "+maxYear)
		return 0
	}
	if (dtStr.indexOf(dtCh,pos2+1)!=-1 || isInteger(stripCharsInBag(dtStr, dtCh))==false){
		alert("Please enter a valid date")
		return 0
	}
	
	totalday = year * 365
	for (var m=1; m < month; m++) {
		totalday += DaysArray(m,year);
	}
	totalday += day

	return totalday
}

//-->
</script>
</HEAD>

<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0>
<div style="width:260px">

<div id="log1">
<b>Saved on : 11/16/2022 6:04:00 AM</b><br/><br/>
<div style="background-color:#eeeeee;">
# DIAGNOSIS ####################<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/># SOLUTION #####################<br/><br/>NIU E4032-W28 X1 EXCHANGED FROM NIU E4032-W36<br/><br/>NIU E4032-W28 X1 REPLACED.<br/>
</div></div>
<a onclick="jQuery('html, body').animate( { scrollTop: 0 }, 'slow' );" href="javascript:void(0);"><font size="1.0em"><b>TOP</b></font></a>
<hr class="blackline">

<div id="log2">
<b>Saved on : 11/16/2022 5:58:00 AM</b><br/><br/>
<div style="background-color:#eeeeee;">
<br/><br/># DIAGNOSIS ####################<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/># SOLUTION #####################<br/><br/>NIU E4032-W28 X1 EXCHANGED FROM NIU E4032-W36<br/><br/>NIU E4032-W28 X1 REPLACED.<br/>
</div></div>
<a onclick="jQuery('html, body').animate( { scrollTop: 0 }, 'slow' );" href="javascript:void(0);"><font size="1.0em"><b>TOP</b></font></a>
<hr class="blackline">

<div id="log3">
<b>Saved on : 11/16/2022 5:58:00 AM</b><br/><br/>
<div style="background-color:#eeeeee;">
<br/># DIAGNOSIS ####################<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/># SOLUTION #####################<br/><br/>NIU E4032-W28 X1 EXCHANGED FROM NIU E4032-W36<br/><br/>NIU E4032-W28 X1 REPLACED.<br/>
</div></div>
<a onclick="jQuery('html, body').animate( { scrollTop: 0 }, 'slow' );" href="javascript:void(0);"><font size="1.0em"><b>TOP</b></font></a>
<hr class="blackline">


</div>
</BODY>
</HTML>