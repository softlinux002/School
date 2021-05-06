<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>School Management</title>

  <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="rJsi1iwFKKriYdhrUe6g1cZC0xwVBOOjRVgpfEY/iuOW/SlGOrYxscnJW3brZ5v2tdhsjkXGmnZgX9IrzMGYrA==" />
  <link href="https://creativeitem.zendesk.com/hc/en-us/requests/new" rel="canonical" />

  <!-- Entypo pictograms by Daniel Bruce — www.entypo.com -->
  <link rel="stylesheet" media="all" href="//p5.zdassets.com/hc/assets/application-cd5d52abfbdefe6ef1710140bc8d5175.css" id="stylesheet" />
  <link rel="stylesheet" type="text/css" href="//p5.zdassets.com/hc/themes/817195/204468907/style-9ed6a26ed429fec1c5d8a7430d4dd22b.css?brand_id=542027&amp;locale=en-us"></link>
  <link rel="shortcut icon" href="//p5.zdassets.com/hc/settings_assets/817195/200158687/mxfyoTstmmv1IqYHLex3Ug-logo_youtube.png"></link>

  <!--[if lt IE 9]>
  <script>
    //Enable HTML5 elements for <IE9
    'abbr article aside audio bdi canvas data datalist details dialog \
    figcaption figure footer header hgroup main mark meter nav output \
    progress section summary template time video'.replace(/\w+/g,function(n){document.createElement(n)});
  </script>
<![endif]-->

  <script src="//p5.zdassets.com/hc/assets/jquery-2da8424aeb207c0c71a855063580a28b.js"></script>

  <!-- add code here that should appear in the document head -->
  <script type="text/javascript" src="//p5.zdassets.com/hc/themes/817195/204468907/script-9ed6a26ed429fec1c5d8a7430d4dd22b.js?brand_id=542027&amp;locale=en-us"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
<%--    <header class="header">
  <div class="header-inner clearfix">
    <div class="logo"><a title="Home" href="Default.aspx">
      <img src="logoerp.png" style="display: table;height: 75px;margin-top:7px;width: 207px;"/>
   
    </a></div>
    <nav class="user-nav">
      
  

    </nav>
  </div>
</header>--%>
<header class="top-head nav-2" data-sticky="true" style="background: rgba(255, 186, 164, 0.82);z-index: 10;">
				    <div class="container">
					    <div class="row">
					    	<div class="fere">
                            
    
       <div class="logo"><a title="Home" href="Default.aspx">
    <img src="logoerp.png" style="display: table;height: 75px;margin-top:7px;width: 207px;"/>
						    	<a href="#"></a>
						    </div>
						    <div class="cell-9 top-menu">
							    
							    <!-- top navigation menu start -->
							    <nav class="top-nav">
								    <ul>
									  
								    </ul>
							    </nav>
							   
							</div>
					    </div>
				    </div>
			    </header>

  <main role="main">
    <!--<div class="search-box">
  <form role="search" class="search" data-search="" action="/hc/en-us/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><input type="search" name="query" id="query" placeholder="Search" />
<input type="submit" name="commit" value="Search" /></form>
</div>-->
<nav class="sub-nav">
  <ol class="breadcrumbs">
  
    <li title="Creativeitem Help Center">
      
        <a href="#">School ERP</a>
      
    </li>
  
    <li title="Submit a request">
      
        Demo
      
    </li>
  
</ol>

</nav>
<div class="clearfix">

  <section class="main-column">
    <h1>Demo Request </h1>
    
    <div class="form">
      <div id="new_request" data-form="" class="request-form" action="/hc/en-us/requests" accept-charset="UTF-8" method="post"><input name="utf8" 
      type="hidden" value="&#x2713;" />
      <input type="hidden" name="authenticity_token" value="zYjNDqVEyQts7dzZeMmkfgP5phmFE6MaC49wkelPyvT37saes/fQEEdFX8TCQJ9dcGMZi9XR2s8uiIvGY7HYuw==" />

  <div class="form-field string required request_anonymous_requester_email"><label for="request_anonymous_requester_email">Name</label>
 <asp:TextBox ID="text_name" runat="server"></asp:TextBox>
 </div>
  
    <div class="form-field string  required  request_custom_fields_27914747" >
      <label for="request_custom_fields_27914747">Contact </label>
     <asp:TextBox ID="Text_contact" runat="server"></asp:TextBox>
    </div>
  
    <div class="form-field string  required  request_custom_fields_30438327" >
      <label for="request_custom_fields_30438327">Email</label>
   <asp:TextBox ID="Text_email" runat="server"></asp:TextBox>
      
    </div>

    <div class="form-field string  required  request_subject" >
      <label for="request_subject">Subject</label>
     <asp:TextBox ID="Text_subject" runat="server"></asp:TextBox>
      
    </div>

    
      <span data-hc-class="searchbox" data-hc-suggestion-list="true"></span>
    <div class="form-field text  required  request_description" >
      <label for="request_description">Description</label>
     <asp:TextBox ID="Text_desc" runat="server" TextMode="MultiLine"></asp:TextBox>
    </div>

  <footer>
  <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"></asp:Button>
  </footer>

</div>

    </div>
  </section>

</div>


  </main>

  <footer class="footer">
  <div class="footer-inner">
    <!-- Footer content -->
  </div>
</footer>

    <%--<div class="powered-by-zendesk">
  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
   viewBox="0 0 20.1 19.3" style="enable-background:new 0 0 20.1 19.3;" xml:space="preserve">
    <g>
      <g>
        <g>
          <path d="M8.2,5.3C9,5.4,9.9,5.8,10.3,6.6c0.2-0.5,0.6-0.8,1-1c0-0.1,0-0.1,0-0.2c0-0.8-0.2-1.5-0.5-2.1
            c0,0,0,0,0.1,0c0-0.1-0.1-0.2-0.1-0.3c-0.1-0.1-0.1-0.2-0.2-0.3c-0.1-0.2-0.3-0.5-0.5-0.7C9.9,1.9,9.7,1.7,9.4,1.5
            C8.4,0.6,7,0.1,5.7,0.1c-0.1,0-0.1,0-0.2,0c-0.9,1-1.4,2.2-1.4,3.7c0.1,0,0.1,0,0.2,0C5.8,3.8,7.2,4.4,8.2,5.3z"/>
          <path d="M10.3,14.2C10.3,14.2,10.3,14.1,10.3,14.2c-0.2-0.2-0.2-0.3-0.3-0.4c0-0.1-0.1-0.1-0.1-0.2v-0.1
            c-0.5-0.2-1.6-0.9-2.7-1.8c-0.4,0.8-0.6,1.6-0.6,2.5c0,0.7,0.2,1.5,0.5,2.2c0,0,0,0,0,0.1c0,0,0,0.1,0.1,0.1
            c0.6,1.2,1.7,2.2,2.9,2.7c1.3-0.6,2.3-1.5,2.9-2.8C11.8,16,10.9,15.2,10.3,14.2z"/>
          <path d="M15,12.2c-0.6,0-1.2-0.1-1.7-0.3c-0.9,0.8-2,1.4-2.5,1.7c0,0.1,0.1,0.1,0.1,0.2c0.7,1,1.8,1.8,3.2,2.1
            c0.4,0.1,0.9,0.2,1.3,0.2c1,0,1.9-0.3,2.8-0.7c0.1-0.4,0.2-0.9,0.2-1.4c0-0.9-0.2-1.7-0.6-2.5C16.9,12,16,12.2,15,12.2z"/>
          <path d="M6.8,11.3c-0.4-0.4-0.7-0.9-1-1.4c-0.2-0.3-0.3-0.7-0.4-1c-1.2,0.4-2.3,1.3-3,2.5C2,12.3,1.7,13.1,1.7,14
            c0,0.5,0.1,1,0.2,1.5c0.9,0.4,1.8,0.6,2.7,0.6c0.5,0,0.9,0,1.4-0.1c-0.1-0.5-0.2-1-0.2-1.5C5.8,13.3,6.1,12.2,6.8,11.3z"/>
          <path d="M11.5,2.7C11.8,3.5,12,4.3,12,5.1v0.3c0.2-0.1,0.5-0.1,0.7-0.1h0.1c0.9,0,1.7,0.4,2.2,1.2
            c0.5-0.8,0.8-1.8,0.8-2.8c0-0.9-0.2-1.7-0.6-2.3c0,0,0,0,0.1,0c0-0.1-0.1-0.1-0.1-0.2C15,1.2,15,1,14.9,0.9
            c-0.1-0.2-0.3-0.4-0.4-0.6c-0.1-0.1-0.2-0.2-0.3-0.3h-0.1c-1.3,0-2.4,0.5-3.5,1.4c0.1,0.1,0.1,0.1,0.2,0.2
            C11.1,2,11.3,2.3,11.5,2.7z"/>
          <path d="M16.8,4.6c-0.1,0-0.1,0-0.2-0.1c-0.2,1.1-0.6,2-1.3,2.8c0,0.2,0.1,0.4,0.1,0.6c0,1.3-0.7,2.4-1.5,3.2h0.7
            c1.2,0,2.4-0.4,3.4-1.1c1.2-0.7,1.9-2,2.1-3.3C19.3,5.7,18.1,5,16.8,4.6z"/>
          <path d="M5.3,8.2c0-0.1,0-0.1,0-0.2c0-1.5,0.9-2.4,2-2.6C6.5,4.9,5.5,4.7,4.5,4.7c-0.3,0-0.7,0-1,0.1
            C2,5,0.8,5.8,0,6.8c0,0.3,0.1,0.6,0.2,0.9c0.3,1,1,1.9,1.9,2.5C2.9,9.2,4.1,8.5,5.3,8.2z"/>
          <polygon points="7.5,5.4 7.5,5.4 7.5,5.4"/>
          <polygon points="7,16.5 7,16.5 7,16.5 7,16.5 7,16.5"/>
          <polygon points="7.5,5.4 7.5,5.4 7.5,5.4"/>
          <polygon points="7,16.5 7,16.5 7,16.5 7,16.5 7,16.5"/>
        </g>
      </g>
    </g>
  </svg>

  <a href="https://www.zendesk.com/help-center/?utm_source=helpcenter&utm_medium=poweredbyzendesk&utm_campaign=text&utm_content=Creativeitem" target="_blank" >Powered by Zendesk</a>
</div>--%>


  <!-- / -->

  <script type="text/javascript" src="//p5.zdassets.com/hc/en-us/locales-7f591c7a0b119b994cd21dffade591bec04ce0eb.js"></script>
  <script src="https://creativeitem.zendesk.com/auth/v2/host.js" data-brand-id="542027" data-return-to="https://creativeitem.zendesk.com/hc/en-us/requests/new" data-theme="hc" data-locale="1" data-auth-origin="542027,false,true"></script>
  

  <script type="text/javascript">
      /*

      Greetings sourcecode lurker!

      This is for internal Zendesk and legacy usage,
      we don't support or guarantee any of these values
      so please don't build stuff on top of them.

      */

      HelpCenter = {};
      HelpCenter.account = { "subdomain": "creativeitem", "environment": "production", "name": "Creativeitem" };
      HelpCenter.user = { "identifier": "da39a3ee5e6b4b0d3255bfef95601890afd80709", "email": null, "name": null, "role": "anonymous", "avatar_url": "https://assets.zendesk.com/hc/assets/user_avatar.png", "organizations": [], "groups": [] };
      HelpCenter.internal = { "current_session": { "locale": "en-us", "csrf_token": "mBcSFY5JKlqLa9CxvcFcGBAzwHZqQLDLZnu5Hcre2PeicRmFmPozQaDDU6wHSGc7Y6l/5DqCyR5DfEJKQCDKuA==", "shared_csrf_token": null }, "settings": { "zopim_enabled": false, "spam_filter_enabled": true }, "current_record_id": null, "current_record_url": null, "current_record_title": null, "search_results_count": null, "current_text_direction": "ltr", "current_brand_url": "https://creativeitem.zendesk.com", "current_path": "/hc/en-us/requests/new", "show_new_community_ipm_for_custom_theme": false, "authentication_domain": "https://creativeitem.zendesk.com", "show_autocomplete_breadcrumbs": false, "heap_analytics_id": null };
</script>

  
  <script src="//p5.zdassets.com/hc/assets/vendor_enduser-d74b704a8b456447bc3971ea44f983fe.js"></script>
  <script src="//p5.zdassets.com/hc/assets/hc_enduser-c0a244530ac5bea44e6e34f7f289105a.js"></script>
  

  <script type="text/javascript">
      (function () {
          var Tracker = {};

          Tracker.track = function (eventName, data) {
              var url = "https://creativeitem.zendesk.com/hc/tracking/events?locale=en-us";

              var payload = {
                  "event": eventName,
                  "data": data,
                  "referrer": document.referrer
              };

              var xhr = new XMLHttpRequest();

              xhr.open("POST", url, true);
              xhr.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
              xhr.send(JSON.stringify(payload));
          };

          Tracker.track("submit_request_form_viewed", "BAh7BjoVcGFyZW50X3RpY2tldF9pZDA=--1f67c278ee26e628b2ae01fbc8e0925848d23158");
      })();

  </script>
    </form>
</body>
</html>
