<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Online Banking ..</title>
<script type="text/javascript">
	function ctck() {
		var sds = document.getElementById("dum");

	}
</script>
<style type="text/css">
body{
	    background-color: #2b4162;
background-image: linear-gradient(315deg, #2b4162 0%, #12100e 74%);
	    

		background-repeat: no-repeat;
  		background-attachment: fixed;
}
div, h1, h2, h3, h4, p, form, label, input, textarea, img, span{
	margin:0; padding:0;
}

ul{
	margin:0; 
	padding:0; 
	list-style-type:none;
	font-size:0;
	line-height:0;
}


.spacer{
	clear:both; 
	font-size:0; 
	line-height:0;
}
.more
{
font:normal 11px/18px Arial, Helvetica, sans-serif;
color:#00d09d;
text-decoration:none;
padding-left:230px;
}
.style1{color:#00d09d;}
/*------------------------------------------------body--------------------*/

#top_links
{
margin:0 auto;
padding:0px;
width:900px;
height:40px;
}
#top_linksin
{
padding:10px 0 0 0;
width:310px;
height:18px;
float:right;
}

#top_linksin ul
{
list-style:none;
margin:0 0 0 40px;
}
#top_linksin ul li
{
font:normal 11px/10px Arial, Helvetica, sans-serif;
color:#FFFFFF;
border-right:#7f7f7f 1px solid;
padding:0 15px;
float:left;
}
#top_linksin ul li a
{
text-decoration:none;
display:block;
color:#7f7f7f;
}
#top_linksin ul li a:hover
{
text-decoration:none;
display:block;
color:#FFFFFF;
}

#header
{
margin:0 auto;
background:#000 url(./Images/globe_03.gif) 0 0 no-repeat;
width:897px;
height:282px;
}
#header h1
{
font:bold 44px/18px Arial, Helvetica, sans-serif;
color:#FFFFFF;
padding:100px 0 0 380px;
}
#header h2
{
font:bold italic 24px/18px Arial, Helvetica, sans-serif;
color:#ababab;
padding:20px 0 0 380px;
}

#navigation
{
margin:0 auto;
width:896px;
height:40px;
background:#000;
border:1px solid #282828;
}
#navigation ul
{
list-style:none;
}
#navigation ul li
{
color:#adadad;
float:left;
text-align:center;
font:bold 15px/40px Arial, Helvetica, sans-serif;
width:127px;
border-right:1px solid #282828;
}
#navigation ul li a
{
text-decoration:none;
display:block;
color:#adadad;
}
#navigation ul li a:hover
{
color:#FFFFFF;
}
#navigation ul li.last
{
border:none;
float:left;
}

#content1
{
width:897px; 
margin:0 auto; 
background:url(./images/globe_05.jpg) 0 0 repeat-y;
}
#content1 h1
{
font:bold italic 22px/79px Arial, Helvetica, sans-serif;
color:#ffffff;
padding-left:30px;
}
#content1 p
{
font:normal 12px/18px Arial, Helvetica, sans-serif;
color:#b2b2b2;
padding:5px 15px 0 15px;
}
.con
{
background:url(./images/globe_06.jpg) 0 0 repeat-y;
width:290px;
}
#heade1
{
width:167px;
height:79px;
background:url(./images/image_03.gif) 20px 10px no-repeat;
padding-left:90px;
}
#heade2
{
width:167px;
height:79px;
background:url(./images/image_04.gif) 20px 10px no-repeat;
padding-left:90px;
}
#heade3
{
width:167px;
height:79px;
background:url(./images/image_05.gif) 20px 5px no-repeat;
padding-left:90px;
}
#services
{
width:257px;
padding:10px;
}
#services h1
{
font:bold italic 20px/25px Arial, Helvetica, sans-serif;
color:#333333;
}
#services ul
{
list-style:none;
margin-left:8px;
}
#services ul li
{
font:normal 12px/22px Arial, Helvetica, sans-serif;
color:#FFFFFF;
display:block;
padding:0 0 4px 16px;
background:url(./images/bullet.png) left center no-repeat;
}
#services ul li a
{
text-decoration:none;
display:block;
color:#7f7f7f;
}
#services ul li a:hover
{
text-decoration:none;
display:block;
color:#000000;
}
#welcome
{
width:287px;
padding:10px;
}
#welcome h1
{
font:bold italic 20px/25px Arial, Helvetica, sans-serif;
color:#333333;
}
#welcome p
{
font:normal 12px/18px Arial, Helvetica, sans-serif;
color:#7f7f7f;
}
#news
{
width:257px;
padding:10px;
}
#news h1
{
font:bold italic 20px/25px Arial, Helvetica, sans-serif;
color:#333333;
}
.img
{
float:left;
padding-right:10px;
}
#news h2
{
font:bold 12px/18px Arial, Helvetica, sans-serif;
color:#333333;
}
#news p
{
font:normal 12px/18px Arial, Helvetica, sans-serif;
color:#7f7f7f;
}

#footer_navigation
{
width:500px;
height:30px;
margin:0 auto;
}
#footer_navigation ul li
{
width:80px;
font: normal 12px/30px Arial, Helvetica, sans-serif;
color:#7d9942;
float:left;
}
#footer_navigation ul li a
{
text-decoration:none;
color:#7f7f7f;
height:30px;
}
#footer_navigation ul li a:hover
{
text-decoration:none;
color:#ffffff;
height:49px;
}
#footer_copyright
{
color: #7f7f7f;
font: normal 11px/30px Arial, Helvetica, sans-serif;
margin:0 auto;
text-align:center;
}

#footer_design
{
color: #ffffff;
font: normal 11px/25px Arial, Helvetica, sans-serif;
margin:0 auto;
text-align:center;
width:100%;
background:#000000;
}
#footer_design a
{
color: #b6ff06;
text-decoration:none;
}
#footer_design a:hover
{
color: #b6ff06;
text-decoration:underline;
}
</style>
</head>

<body>

	<div id="top_links">


		<div id="header">
			<h1>
				J&Q Spiders Bank<span class="style1"></span>
			</h1>
			<h1>
				Co.Ltd<span class="style1"></span>
			</h1>
			<h2>Extra Ordinary Service</h2>

		</div>

		<div id="navigation">
			<ul>
				<li><a href="login.html">SIGN-IN</a></li>
				<li><a href="signup.html">SIGN-UP</a></li>
				<li><a href="admin.html">ADMIN</a></li>
			</ul>
		</div>

		<table cellpadding="0" cellspacing="0" id="content1">
			<tr align="justify">
				<td class="con" valign="top">
					<div id="heade1">
						<h1>Results</h1>
					</div>
					<p>
						Jspeders Limited (JSP) on Friday reported a 178.24 per cent year-on-year (YoY) rise in standalone net profit at Rs 16,884.29 crore for the June quarter compared with Rs 6,068.08 crore in the same quarter last year. This was fourth straight quarter of record profits for the public sector lender. The profit figure also 
					</p>
				</td>

				<td class="con" valign="top">
					<div id="heade2">
						<h1>Opportunities</h1>
					</div>
					<p>
						Sectoral/Thematic : The fund has 89.51% investment in domestic equities of which 61.39% is in Large Cap stocks, 1.81% is in Mid Cap stocks, 15.62% in Small Cap stocks.The fund has 0.92% investment in Debt, of which 0.92% in Government securities.

Suitable For : Investors who have advanced knowledge of macro trends

					</p>
				</td>

				<td class="con" valign="top">
					<div id="heade3">
						<h1>Solutions</h1>
					</div>
					<p>
						We are an integrated service company that provide strategic planning for business on the most critical areas.  Our services are focused on achieving results. Side by side with you and your staff, we construct action plans your needs. Then we go one step further - we help you execute those plans. Often, it’s this 
				</td>
			</tr>
		</table>

		<table style="width: 897px; background: #FFFFFF; margin: 0 auto;">
			<tr align="justify">
				<td width="299" valign="top"
					style="border-right: #666666 1px dotted;">
					<div id="services">
						<h1>Services</h1>
						<br>
						<ul>
							<li><a href="#">www.jspiders.com</a></li>
							<li><a href="#">www.jspiders/instgram.com </a></li>
							<li><a href="#">www.jspiders/youtube.com</a></li>
						</ul>

					</div>
				</td>

				<td width="299" valign="top">
					<div id="welcome" style="border-right: #666666 1px dotted;">
						<h1>Welcome</h1>
					
						<p>We are an integrated service company that provide strategic planning for business on the most critical areas. Our services are focused on achieving results. Side by side with you and your staff, we construct action plans your needs. Then we go one step further - we help you execute those plans..</p>

					</div>
				</td>

				<td width="299" valign="top">
					<div id="news">
						<h1>News &amp; Events</h1>
						<br>
						<div class="img">
						</div>
						<h2>Nov. 17, 2023.</h2>
						<p>Get your dream web banking at no cost, no extra manpower for
							your professional website.</p>
						<br>
						<div class="img">
						</div>
						<h2>Nov. 17, 2023.</h2>
						<p>Get your dream web banking at no cost, no extra manpower for
							your professional website.</p>

					</div>

				</td>
			</tr>
		</table>

		<div id="footer_top">
			<div id="footer_navigation"></div>

			<div id="footer_copyright">

				<center>
				</center>
				<br>
				<p>Jspiders Bank of India never ask for your user id / password / pin no. through phone call / SMSes / e-mails. Any such phone call / SMSes / e-mails asking you to reveal credential or One Time Password through SMS could be attempt to withdraw money from your account.NEVER share these details to anyone. State Bank of India wants you to be secure. If you come across any such instances please inform us through e-mail to the following address-</p>

				Copyright © QJspiders
			</div>
		</div>

		<script type="text/javascript">
			document.onload = ctck();
		</script>
	</div>

</body>
</html>