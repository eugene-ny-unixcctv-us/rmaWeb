
<HTML>
<HEAD>
	<META NAME="Author" CONTENT="PilDog">
	<META NAME="GENERATOR" CONTENT="NotePad">
	<TITLE>UNIX CCTV RMA Department - Generate RMA Numbers</TITLE>
	<LINK rel="stylesheet" type="text/css" href="style.css">
</HEAD>


<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 onLoad="ShowTime()">
<script language="Javascript1.2">
<!--
	
var uhour=13;
var umin=38;
var usec=5; 

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
<FORM NAME="generate_rma" ACTION="gen_rma_p.asp" METHOD=post>

<TABLE CELLPADDING=0 CELLSPACING=0 WIDTH=900 BORDER=0>

<TR>
	<TD height=20 align=right valign=middle BGCOLOR=#0066FF>
		<DIV ID="clock"></div>
	</TD>
</TR>

<TR BGCOLOR=#0099FF><TD><TABLE CELLPADDING=3 CELLSPACING=0 BORDER=0 WIDTH=100%%<TR><TD ALIGN=RIGHT CLASS=sidetitle><FONT COLOR=WHITE><A HREF=rma_main.asp>RMA Department</A> - Generate RMA Number</FONT></TD></TR></TABLE></TD></TR>

<tr bgcolor="#eeeeee" height=400>
	<td align=center valign=top>
		<table cellpadding=0 cellspacing=0 width=100%><tr><td height=20></td></tr></table>
		<table cellpadding=0 cellspacing=0 width=90%>
		<tr>
			<td valign=top>				
				<table cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td>
					<table cellpadding="5" cellspacing="0" width="100%">
					<tr>
						<td width="70%" class=sidetitle>
						Company (Please check company name with our accounting software first)<br/>
						<INPUT TYPE=TEXT CLASS=input_text NAME=company style="width:100%" MAXLENGTH=80>
						</td>
						<td width="30%" class=sidetitle>
						Name<br/>
						<input type=text class=input_text name=firstname style="width:45%" maxlength=20>
						<input type=text class=input_text name=middlename style="width:10%" maxlength=6>
						<input type=text class=input_text name=lastname style="width:40%" maxlength=20>
						</td>
					</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td>
					<table cellpadding="5" cellspacing="0" width="100%">
					<tr>
						<td width="57%" class=sidetitle>
						Address<br/>
						<input type=text class=input_text name=staddr1 style="width:100%" maxlength=100>
						</td>
						<td width="20%" class=sidetitle>
						City<br/>
						<INPUT TYPE=TEXT CLASS=input_text NAME=city style="width:100%" MAXLENGTH=25>
						</td>
						<td width="8%" class=sidetitle>
						State<br/>
						<INPUT TYPE=TEXT CLASS=input_text NAME=state style="width:100%" MAXLENGTH=3>
						</td>
						<td width="15%" class=sidetitle>
						ZipCode<br/>
						<INPUT TYPE=TEXT CLASS=input_text NAME=zipcode style="width:100%" MAXLENGTH=10>
						</td>
					</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td>
					<table cellpadding="5" cellspacing="0" width="100%">
					<tr>
						<td width="20%" class=sidetitle>
						Tel<br/>
						<input type=text class=input_text name=tel style="width:100%" maxlength=12>
						</td>
						<td width="20%" class=sidetitle>
						Fax<br/>
						<input type=text class=input_text name=fax style="width:100%" maxlength=12>
						</td>
						<td width="30%" class=sidetitle>
						E-Mail<br/>
						<input type=text class=input_text name=email style="width:100%" maxlength=80>
						</td>
						<td width="30%" class=sidetitle>
						Issued by<br/>
						<input type=text class=input_text name=request style="width:100%" maxlength=10>
						</td>
					</tr>
					</table>
					</td>
				</tr>
				</table>
				<table cellpadding="5" cellspacing="0" width="100%">
				<tr>
					<td width="33%" class=sidetitle>
					Items<br/>
					<textarea class=input_text name=items style="width:100%" rows="20" wrap="virtual"></textarea>
					</td>
					<td width="33%" class=sidetitle>
					Symptoms<br/>
					<textarea class=input_text name=description style="width:100%" rows="20" wrap="virtual">










NOTES : </textarea>
					</td>
					<td width="34%" class=sidetitle>
					Results<br/>
					<textarea class=input_text name=notes style="width:100%" rows="20" wrap="virtual">


# DIAGNOSIS ####################









# SOLUTION #####################


</textarea>
					</td>
				</tr>
				</table>
			</td>
		</tr>
		</table>
		<TABLE CELLPADDING=0 CELLSPACING=0 WIDTH=100%><TR><TD HEIGHT=30></TD></TR></TABLE>
		<INPUT TYPE=SUBMIT CLASS=submit_white VALUE="Generate RMA Number with this information!">
		<TABLE CELLPADDING=0 CELLSPACING=0 WIDTH=100%><TR><TD HEIGHT=30></TD></TR></TABLE>
	</TD>
</TR>
<TR><TD HEIGHT=50></TD></TR>
</TABLE>
</FORM>
</BODY>
</HTML>