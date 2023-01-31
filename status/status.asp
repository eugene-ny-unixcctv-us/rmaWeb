<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<HEAD>
	<META NAME="Author" CONTENT="PilDog">
	<META NAME="GENERATOR" CONTENT="NotePad">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<TITLE>RMA Number 102938</TITLE>
	<LINK rel="stylesheet" type="text/css" href="style.css">
<script language="Javascript1.2">
<!--
	
var uhour=13;
var umin=38;
var usec=51; 

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
var resultwindow=0;

var z=function(str){return document.getElementById(str)};

function validateForm(action) {
	var companyname = document.getElementById('companyname');

	if(companyname.value == '') {
		alert("You have to provide company name to update");
		return false;
	}
	document.update_rma.method.value = action
	document.update_rma.submit(); 
	return true;
}
function show(CurrElem) { z(CurrElem).style.visibility = "visible"; }
function hide(CurrElem) { z(CurrElem).style.visibility = "hidden"; }
function ToggleResultWindow(windowname) {

	if (windowname == "current_result") {
		show("current_result");
		hide("result_history");
		if (resultwindow == 1) resultwindow = 0;
	}
	if (windowname == "result_history") {
		show("result_history");
		hide("current_result");
		if (resultwindow == 0) resultwindow = 1;
	}
}
</script>


<FORM NAME="update_rma" ACTION="/status.asp" METHOD=post>
<INPUT TYPE="HIDDEN" NAME="rmanum" VALUE="102938">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="">
<TABLE CELLPADDING=0 CELLSPACING=0 WIDTH=900 BORDER=0>
<TR>
	<TD height=20 align=right valign=middle BGCOLOR=#0066FF>
		<DIV ID="clock"></div>
	</TD>
</TR>

<TR BGCOLOR=#0099FF><TD><TABLE CELLPADDING=3 CELLSPACING=0 BORDER=0 WIDTH=100%%<TR><TD ALIGN=RIGHT CLASS=sidetitle><FONT COLOR=WHITE><A HREF='rma_main.asp'>RMA Department</A> - RMA Number 102938 Status</FONT></TD></TR></TABLE></TD></TR>
<tr bgcolor="#eeeeee" height=400>
	<td align=center valign=top>
		<table cellpadding=0 cellspacing=0 width=100%><tr><td height=5></td></tr></table>
		<table cellpadding=0 cellspacing=0 width=90%>
		<tr>
			<td valign=top>				
				<table cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td>
					<table cellpadding="5" cellspacing="0" width="100%">
					<tr>
						<td width="35%" class=rma_number align="left">
							RMA Number 102938
						</td>
						<td width="65%" align=right>
							<INPUT TYPE=button CLASS=btn VALUE="Back to Home" style="width:100px" onclick="window.location.href='/'">
							<INPUT TYPE=button CLASS=btn VALUE="Update" style="width:100px" onclick="validateForm('update_p');">
							<input type=button class=btn style="width:100px" style="width:70px" value="Save & Print" onclick="validateForm('updateandprint');">
						</td>
					</tr>
					<tr>
					<td colspan="2" align="left">Last Updated Date : 11/16/2022 / Issued Date : 11/16/2022 / Issued Location : TX        </td></tr>

					</table><div id="rma_status_box" class="RMAStatusClose">
					<div class="statustext"><div class="vAlign">Close : Finshed</div></div>
					<div class="statuschangebutton"><input type=button class=btn style="height:100%;" value="Save & mark NOT FINISHED" onClick="validateForm('openrma');"></div>
					</div>
					<table cellpadding="5" cellspacing="0" width="100%">
					<tr>
						<td width="70%" class=sidetitle align="left">
						Company (Please check company name with our accounting software first)<br/>
						<INPUT TYPE=TEXT CLASS=input_text id="companyname" NAME=company style="width:100%" MAXLENGTH=40 value="UNLIMITED INTEGRATION LLC">
						</td>
						<td width="30%" class=sidetitle align="left">
						Name<br/>
						<input type=text class=input_text name=firstname style="width:40%" maxlength=15 value="TROY">
						<input type=text class=input_text name=middlename style="width:10%" maxlength=2 value="">
						<input type=text class=input_text name=lastname style="width:39%" maxlength=15 value="">
						</td>
					</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td>
					<table cellpadding="5" cellspacing="0" width="100%">
					<tr>
						<td width="57%" class=sidetitle align="left">
						Address<br/>
						<input type=text class=input_text name=staddr1 style="width:100%" maxlength=50 value="">
						</td>
						<td width="20%" class=sidetitle align="left">
						City<br/>
						<INPUT TYPE=TEXT CLASS=input_text NAME=city style="width:100%" MAXLENGTH=25 value="">
						</td>
						<td width="8%" class=sidetitle align="left">
						State<br/>
						<INPUT TYPE=TEXT CLASS=input_text NAME=state style="width:100%" MAXLENGTH=3 value="">
						</td>
						<td width="15%" class=sidetitle align="left">
						ZipCode<br/>
						<INPUT TYPE=TEXT CLASS=input_text NAME=zipcode style="width:100%" MAXLENGTH=10 value="77477">
						</td>
					</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td>
					<table cellpadding="5" cellspacing="0" width="100%">
					<tr>
						<td width="20%" class=sidetitle align="left">
						Tel<br/>
						<input type=text class=input_text name=tel style="width:100%" maxlength=12 value="8322121122">
						</td>
						<td width="20%" class=sidetitle align="left">
						Fax<br/>
						<input type=text class=input_text name=fax style="width:100%" maxlength=12 value="">
						</td>
						<td width="30%" class=sidetitle align="left">
						E-Mail<br/>
						<input type=text class=input_text name=email style="width:100%" maxlength=30 value="paul@unlimitedintegration.com">
						</td>
						<td width="30%" class=sidetitle align="left">
						Issued by<br/>
						<input type=text class=input_text name=request style="width:100%" maxlength=10 value="KIM">
						</td>
					</tr>
					</table>
					</td>
				</tr>
				</table>
				<table cellpadding="5" cellspacing="0" width="100%">
				<tr>
					<td width="33%" class=sidetitle valign="top" align="left">
					<div style="height:20px">Items</div>
					<textarea class=input_text name=items style="width:100%;height:350px" wrap="virtual">3560349 / 10/15/20
NIU E4032-W28 X1
IT240021120203

3551937 / 2/25/20
NIU E4032-W36 X1
IT24003621120164</textarea>
					</td>
					<td width="33%" class=sidetitle valign="top" align="left">
					<div style="height:20px">Symptoms</div>
					<textarea class=input_text name=description style="width:100%;height:350px"  wrap="virtual">
POE NOT WORK



NIGHT VISION NOT CLEAR






NOTES :</textarea>
					</td>
					<td width="34%" class=sidetitle valign="top">
					<div style="height:20px"><input type=button class="submit_white" style="width:130px;height:100%" onClick="ToggleResultWindow('current_result');" value="Edit Current Result">&nbsp;<input type=button class="submit_white"  style="width:130px;height:100%" onClick="ToggleResultWindow('result_history');document.getElementById('result_history_frame').src='/resulthistory.asp?rmanum=102938'" value="View Result History"></div>
					<div id="current_result" style="position :absolute; visibility : hidden;"><textarea class=input_text name=notes style="width:100%;height:350px" wrap="virtual"># DIAGNOSIS ####################









# SOLUTION #####################

NIU E4032-W28 X1 EXCHANGED FROM NIU E4032-W36

NIU E4032-W28 X1 REPLACED.
</textarea></div>
					<div id="result_history" style="position :absolute; visibility : hidden;background-color:#333333;"><iframe id="result_history_frame"></iframe></div>
					<script type="text/javascript">
						show("current_result");
						hide("result_history");
						document.getElementById("result_history_frame").src="/resulthistory.asp?rmanum=102938"
					</script>
									
					</td>
				</tr>
				</table>
				<div style="height:30px"> </div>	
			</td>
		</tr>
		</table>
	</td>
</tr>
</TABLE>
</form>

</BODY>
</HTML>
