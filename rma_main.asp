<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<HEAD>
	<META NAME="Author" CONTENT="PilDog">
	<META NAME="GENERATOR" CONTENT="NotePad">
	<TITLE>UNIX CCTV RMA Department</TITLE>
	<LINK rel="stylesheet" type="text/css" href="style.css">
	<script language="JavaScript" src="calendar_us.js"></script>
	<link rel="stylesheet" href="calendar.css">
<script language="Javascript1.2">
<!--
	
var uhour=13;
var umin=30;
var usec=53; 

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
<script type="text/javascript">
<!--
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
//-->
</script>

<table cellpadding="10px" cellspacing="0" width="800px" border="0" style="background-color:#0066cc">
<tr>
	<td align="left" height="20px" valign="middle"><font style="font-size:20px;color:white"><b>UNIX CCTV RMA Department</b></font></td>
</tr>
</table>
<div style="width:800px;"> <!-- Main -->
<div style="width:260px;height:750px;padding-left:30px;padding-right:10px;float:left;background-color:#0099ff"> <!-- Menu Left -->
<form name="generate_rma" action="gen_rma.asp" method="get">
<div style="width:100%;height:30px;margin-top:20px;">
<input type="submit" style="height:100%" value="Issue a new RMA" >
</div>
</form>

<!-- DIV Spacer --><div style="width:100%;height:10px;"></div>
<table width="100%" cellspacing="0">
<tr>
	<td align="left" valign="top">
		<form action="listing.asp" method="post" name="rmalist" id="rmalist">
		<font class="sidetitle">RMA Search</font>&nbsp;&nbsp;
		<a href="javascript:void(0);" onclick="insertfield('companyname','');insertfield('items','');">Clear All</a>
		<hr class="whiteline"/>
		<font color="white"><b>by RMA #</b></font><br/>
		<input type="text" class="input_text" name="rmanum" id="rmanum" style="width:100px" maxlength=6 onKeyPress="return submitenter(this,event)">
<!-- DIV Spacer --><div style="height:10px"></div>
		<hr class="whiteline"/>
		<font color=white><b>by date range</b></font><br/>
		<input CLASS="input_text" type="text" name="searchdatefrom" id="searchdatefrom" style="width:60px;height:100%" value="11/16/2022">
		<script language="JavaScript">
		new tcal ({
			'formname': 'rmalist',
			'controlname': 'searchdatefrom',
			'today' : '11/16/2022'
		});
		</script>
		&nbsp;~&nbsp;
		<input class="input_text" type="text" name="searchdateto" id="searchdateto" style="width:60px;height=100%" value="11/16/2022">
		<script language="JavaScript">
		new tcal ({
			'formname': 'rmalist',
			'controlname': 'searchdateto',
			'today' : '11/16/2022'
		});
		</script>
<!-- DIV Spacer --><div style="height:5px"></div>
			<a href="javascript:void(0);" onclick="insertfield('searchdatefrom','11/15/2022');insertfield('searchdateto','11/16/2022');">From Last Business Day</a>&nbsp;|&nbsp;
		<a href="javascript:void(0);" onclick="insertfield('searchdatefrom','11/16/2022');insertfield('searchdateto','11/16/2022');">Today</a>&nbsp;|&nbsp;
		<a href="javascript:void(0);" onclick="insertfield('searchdatefrom','11/9/2022');insertfield('searchdateto','11/16/2022');">From a week ago</a>
<!-- DIV Spacer --><div style="height:5px"></div>
		<font color=white><b>Date Type</b></font><br/>
		 <select name="datetype" class=input_text>
			<option value="issued" selected>Issued Date</option>
			<option value="updated">Updated Date</option>
		</select><br/>
<!-- DIV Spacer --><div style="height:10px"></div>
		<hr class="whiteline"/>
		<font color=white><b>by RMA Status</b></font><br/>
		<select name="statustype" class=input_text>
			<option value="all" selected>Show all</option>
			<option value="open">Open (not finished)</option>
			<option value="closed">Closed (finished)</option>
			<option value="unknown">Unknown</option>
		</select> 
<!-- DIV Spacer --><div style="height:10px"></div>
		<hr class="whiteline"/>
		<font color=white><b>by Company Name</b></font><br/>
		<input type=text class=input_text name="companyname" id="companyname" size=30> &nbsp;<a href="javascript:void(0);" onclick="insertfield('companyname','');">Clear</a><br/>
<!-- DIV Spacer --><div style="height:10px"></div>
		<hr class="whiteline"/>
		<font color=white><b>by Item</b></font><br/>
		<input type=text class=input_text name="items" id="items" size=30> &nbsp;<a href="javascript:void(0);" onclick="insertfield('items','');">Clear</a>
<!-- DIV Spacer --><div style="height:20px"></div>
		<input type=button value="Search RMA" onclick="validateForm();" style="height:30px">
		</form>
<!-- DIV Spacer --><div style="height:30px"></div>
		<font class="sidetitle">Item Sold Trace</font>&nbsp;&nbsp;
		<a href="javascript:void(0);" onclick="insertfield('customerid','');insertfield('itemid','');">Clear All</a>
		<hr class="whiteline"/>
		<form action="itemsoldtrace.asp" method="get" name="rmalist">
		<!-- DIV Spacer --><div style="width:100%;height:10px;"></div>
		<font color=white><b>Customer ID (ex. 1004123)</b></font><br/>
		<input type=text class=input_text name="customerid" id="customerid" size=30>
		<!-- DIV Spacer --><div style="height:10px"></div>
		<font color=white><b>Item Code</b></font><br/>
		<input type=text class=input_text name="itemid" id="itemid" size=30>
		<!-- DIV Spacer --><div style="height:20px"></div>
		<input type=submit value="Trace" style="height:30px">
		</form>
	</td>
</tr>
</table>
</div> <!-- Menu Left -->
<div style="width:500px;float:left;"> <!-- Menu Right -->
<div style="padding:10px"> <!-- Menu Right padding -->
	<TABLE CELLPADDING=0 CELLSPACING=0 WIDTH=100%>
	<TR><TD HEIGHT=15></TD></TR>
	<TR><TD CLASS=sidetitle>RMA Status for 11/16/2022</TD></TR>
	<TR><TD>
		<TABLE CELLPADDING=1 CELLSPACING=1 WIDTH=100% COLS=3>
		<TR>
			<TD WIDTH=12% CLASS=tiny ALIGN=CENTER BGCOLOR=GRAY><FONT COLOR=WHITE>RMA #</FONT></TD>
			<TD WIDTH=68% CLASS=tiny ALIGN=left BGCOLOR=GRAY><FONT COLOR=WHITE>Name</FONT></TD>
			<TD WIDTH=20% CLASS=tiny ALIGN=left BGCOLOR=GRAY><FONT COLOR=WHITE>Issued</FONT></TD>
		</TR>
		
		<TR>
			<TD CLASS=tiny ALIGN=CENTER><A HREF='status.asp?rmanum=102938'>102938</A></TD>
			<TD CLASS=tiny ALIGN=left>UNLIMITED INTEGRATION LLC</TD>
			<TD CLASS=tiny ALIGN=left>TX        </TD>
		</TR>
		
		<TR>
			<TD CLASS=tiny ALIGN=CENTER><A HREF='status.asp?rmanum=102939'>102939</A></TD>
			<TD CLASS=tiny ALIGN=left>GLOBAL INDUSTRIAL SUPPLY</TD>
			<TD CLASS=tiny ALIGN=left>TX        </TD>
		</TR>
		
		</TABLE>
	</TD></TR>
	</TABLE>
</div> <!-- Menu Right padding -->
</div> <!-- Menu Right -->
</div> <!-- Main -->
<table cellpadding="0" cellspacing="0" width="100%"><tr><td><b>Version 0.1.3.<br/> Read <a href="/patch.html" target="_blank"><b>Patch Note</b></a> for chanages</b></td></tr></table>
<SCRIPT TYPE="text/javascript">
<!--
var rmanum_field = document.getElementById('rmanum');
rmanum_field.focus();
//-->
</SCRIPT>
</BODY>
</HTML>

