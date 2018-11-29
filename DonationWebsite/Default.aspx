<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DonationWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/Site.css" rel="stylesheet" type="text/css" />
    <div id="container">
  <div id="header">
    <img src="../images/header-all.gif" alt="Radio Libertad" border="0" /><br />

    <div id="pointermenu2">
    <ul>
    <li><a href="index.htm" id="selected">Welcome</a></li>
    <li><a href="stations.htm">Radio Stations</a></li>
    <li><a href="coveragemaps.htm">Coverage Maps</a></li>
    <li><a href="personnel.htm">Personnel</a></li>
    <li><a href="events.htm">Events & Concerts</a></li>
    <li><a href="radioschedule.htm">Radio Schedule</a></li>
    <li><a href="prayerrequest.htm">Prayer Request</a></li>
    <li><a href="donations.htm">Donations</a></li>
    <li><a href="#" id="rightcorner">&nbsp;</a></li>
    </ul>
    <br style="clear: left" />
    </div>

  <!-- end #header --></div>
  <div id="rightSidebar">
    <p><img src="../images/sidebar_links_english_top.jpg" width="200" height="372" border="0" usemap="#Map" />
  <map name="Map" id="Map">
    <area shape="rect" coords="145,110,204,191" href="http://rcri1.com:8000/listen.pls" alt="Winamp 128k MP3 Audio" />
    <area shape="rect" coords="73,106,127,189" href="http://rcri3.com:9006/listen.pls" alt="aac Plus Audio" />
    <area shape="rect" coords="1,105,58,188" href="http://rcri1.com:1450/libertad" alt="Windows Media Audio" />
    <area shape="rect" coords="5,253,195,300" href="https://itunes.apple.com/us/app/radio-libertad/id349409494?mt=8" target="_blank" />
    <area shape="rect" coords="1,316,194,366" href="https://play.google.com/store/apps/details?id=com.glowingpigs.radiolibertad&amp;hl=en" target="_blank" />
  </map>
  <br />
  <br />
  <img src="../images/sidebar_links_english_bottom.jpg" width="200" height="169" usemap="#Map2" border="0" />
  <map name="Map2" id="Map2">
    <area shape="rect" coords="6,47,195,97" href="http://www.facebook.com/radiolibertad" target="_blank" />
    <area shape="rect" coords="4,116,194,162" href="http://twitter.com/radio_libertad" target="_blank" />
  </map>
  <br />
  </p>
  </div>
  <!-- end #rightSidebar -->
  <div id="mainContent">
<p><br />
  <br />
  <img src="../images/header-welcome.gif" alt="Welcome to Radio Libertad" /><br />
  <br />
  <img src="../images/header-fadebar.gif" style="padding-bottom:5px;"/><br />
  <br />
  <br />
  Radio Libertad ("Liberty Radio") are Spanish Christian radio stations. The format of these stations is a variety of Spanish Christian music from Conjunto, Tejano, Mariachi, Salsa, Reggaton, Rock, Pop and Rap along with Praise & Worship. </p>
<p><br />
  These stations give the listener a taste of Spanish Christian music from all over the world. Enjoy artists like Marcos Witt, Jesus Adrian Romero, Lilly Goodman, Funky, Ericson Alexander Molano, Julissa, Juan Carlos Alvarado, Lali Torres, Miguel Cassina, Samuel Hernandez, Marco Barrientos, Danny Berrios, Grupo Juda, and many more. </p>
<p>
  <br />
  Radio Libertad programs Spanish Christian music along with daily prayer programs in the Corpus Christi and entire South Texas market. The unique styles of Spanish Christian music and prayer are blended together to make an outstanding format that hundreds of listeners, various churches, and many businesses are enjoying. </p>
<p><br />
  The Worship Center is proud to present these radio stations that will   reach all Hispanic listeners to better serve their spiritual needs and   taste.<br />
  <br />
  <br />
  <img src="../images/header-fadebar.gif" alt="" style="padding-bottom:5px;"/><br />
  
</p>
<br />
<br />
<table width="517" border="0" cellpadding="2">
  <tr>
    <td width="503" style="vertical-align:top"><p align="center"><a href="http://www.radiolibertad.net/english/studiotour.htm"><img src="../images/studio_tour_logo.jpg" alt="Tour the Studios!" border="0" /></a></p></td>
  </tr>
</table>
<br />

<center>
</center><br />
	<!-- end #mainContent --></div>
	<!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats --><br class="clearfloat" />
  <div id="footer">
  <div id="navBottom">
  <p><a href="index.htm">Welcome</a> <img src="../images/bullet.gif"> <a href="stations.htm">Radio Stations</a> <img src="../images/bullet.gif"> <a href="coveragemaps.htm">Coverage Maps</a> <img src="../images/bullet.gif"> <a href="personnel.htm">Personnel</a> <img src="../images/bullet.gif"> <a href="events.htm">Events & Concerts</a> <img src="../images/bullet.gif"> <a href="radioschedule.htm">Radio Schedule</a> <img src="../images/bullet.gif"> <a href="prayerrequest.htm">Prayer Request</a> <img src="../images/bullet.gif"> <a href="donations.htm">Donations</a> <img src="../images/bullet.gif"> <a href="eeo_reports.htm">EEO</a></p>
   </div>
   <br />
   <br />
   <p align="center"><img src="../images/system_seven_banner.jpg" width="300" height="141" usemap="#Map3" border="0" />
     <map name="Map3" id="Map3">
       <area shape="rect" coords="13,56,290,122" href="http://www.systemseven.net" target="_blank" />
     </map>
   </p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</asp:Content>
