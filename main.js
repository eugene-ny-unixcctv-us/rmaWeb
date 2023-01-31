
var uhour=9;
var umin=14;
var usec=16; 


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


function checkCompanyName() {
	var companyname = document.getElementById('companyname');
	if(companyname.value.length < 3 && companyname.value.length != 0) {
		companyname.focus();
		alert("Company name should be at least 3 letters");
		return false;
	}
	return true;
}

function checkSearchItem() {
	var searchitem = document.getElementById('items');
	if(searchitem.value.length < 3 && searchitem.value.length != 0) {
		searchitem.focus();
		alert("Search Item should be at least 3 letters");
		return false;
	}
	return true;
}
function checkdate() {
	var datestr;
	var datestrfrom = document.getElementById('searchdatefrom');
	var datestrto = document.getElementById('searchdateto');
	var datearray;
	var totalday = new Array();
	
	if(datestrto.value=='') { datestrto.value = datestrfrom.value; }
	datestr = datestrfrom.value + ' ' + datestrto.value;

	if(datestr!='')
	{
		datearray = datestr.split(" ",2);
		
		for (var i=0;i<datearray.length;i++)
		{
			
			totalday[i] = gettotalday(datearray[i]);
			if (totalday[i]==0)
			{
				datestr.focus();
				return false;
			}
		}
		if(datearray.length==2) {
			if (totalday[0] > totalday[1]) {
				alert(datestrfrom.value + " First date should be earlier than second date is " + datestrto.value);
				return false;
			}
		}
	}
	return true;
}

function validateForm() {
	var rmaform = document.getElementById('rmalist');
	var rmanum = document.getElementById('rmanum');
	var companyname = document.getElementById('companyname');
	var searchdatefrom = document.getElementById('searchdatefrom');
	var searchdateto = document.getElementById('searchdateto');
	var searchitem = document.getElementById('items');
	if(rmanum.value == '' && companyname.value == '' && searchdatefrom.value == '' && searchdateto.value == '' && searchitem == '') {
		alert("You have to fill out at least one field to start a search.");
		return false;
	}	
	if(checkdate() && checkCompanyName() && checkSearchItem()) {
		rmaform.submit(); 
	}
	return true;
}

function submitenter(myfield,e)
{
var keycode;
if (window.event) keycode = window.event.keyCode;
else if (e) keycode = e.which;
else return true;

if (keycode == 13)
   {
   validateForm(myfield);
   return false;
   }
else
   return true;
}