
<HTML>
<HEAD>
	<META NAME="Author" CONTENT="PilDog">
	<META NAME="GENERATOR" CONTENT="NotePad">
	<TITLE>UNIX CCTV RMA Department - Generate RMA Numbers</TITLE>
	<LINK rel="stylesheet" type="text/css" href="style.css">
</HEAD>


<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 onLoad="ShowTime()">

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