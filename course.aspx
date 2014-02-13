<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
	<link type="text/css" rel="stylesheet" href="css/typography.css"/>
	<link type="text/css" rel="stylesheet" href="css/courses_table.css"/>
	<link type="text/css" rel="stylesheet" href="css/SearchBoxTins.css"/>
	<link type="text/css" rel="stylesheet" href="css/accordion.css"/>
	<link rel="stylesheet" href="css/calendarview.css"/>
	<script src="js/argiepolicarpio.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/application.js" type="text/javascript" charset="utf-8"></script>
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,600' rel='stylesheet' type='text/css' />
	<title>Courses | GNWBLC</title>
	
	<!--For PCalendar-->
    <script src="js/prototype.js"></script>
    <script src="js/calendarview.js"></script>
    
    <script type="text/javascript">
      function setupCalendars() {
        // Embedded Calendar
        Calendar.setup(
          {
            dateField: 'embeddedDateField',
            parentElement: 'embeddedCalendar'
          }
        )
      }

      Event.observe(window, 'load', function() { setupCalendars() })
    </script>
</head>
<body>
	<form id="form1" runat="server">
	<!--For Search-->
	<script src="/../../../../../../http:/www.google.com/jsapi" type='text/javascript'></script>
	<script type='text/javascript'>
	google.load('search', '1', {language: 'en', style: google.loader.themes.V2_DEFAULT});
	google.setOnLoadCallback(function() {
	  var customSearchOptions = {};
	  var orderByOptions = {};
	  orderByOptions['keys'] = [{label: 'Relevance', key: ''} , {label: 'Date', key: 'date'}];
	  customSearchOptions['enableOrderBy'] = true;
	  customSearchOptions['orderByOptions'] = orderByOptions;
	  customSearchOptions['overlayResults'] = true;
	  var customSearchControl =   new google.search.CustomSearchControl('015662392703032799914:8ew4iphao1q', customSearchOptions);
	  customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
	  var options = new google.search.DrawOptions();
	  options.setAutoComplete(true);
	  customSearchControl.draw('cse', options);
	}, true);
	</script>
	<div id="top_bg">
		<div id="header">
			<div id="logo">
				<img alt="GN Logo" src="images/logo.png"/>
				<p>Web based learning <br/><span>environment</span></p>
			</div>
			<ul id="top_nav">
				<li><a href="">Account Settings</a></li>
				<li><a href="">Sign out</a></li>
				<li><a href="">Help</a></li>
			</ul>
			<h2>my workstation</h2>
			<div id="calendar">
				<div id="embeddedExample">
				<div id="embeddedCalendar"></div>
			</div>
			</div>
			<nav>
				<ul id="navBar">
					<li><a href="default.html">Dashboard</a></li>
					<li class="active"><a href="course.aspx">Courses</a></li>
					<li><a href="library.html">Library</a></li>
					<li><a href="achievements.html">Achievements</a></li>
					<li><a href="chat.html">Chat</a></li>
					<li><a href="reminder.html">Reminders</a></li>
					<li><div id='cse' style='width: 100%;'>Loading...</div></li>
				</ul>
			</nav>
		</div>
	</div>
 	<center><img src="images/shadow.png" alt="shadow" /></center>
 	<div id="mainContent">
 		<div id="stats">
 			<h6>My statistics</h6>
 			<ul class="left">
 				<li>Name: Jemyma Randy-Cofie</li>
 				<li>Comapny: Qualtek Ghana</li>
 				<li>Title: Manager</li>
 			</ul>
 			<ul class="right">
 				<li>Overall performance: 90% passed</li>
 			</ul>
 		</div>
 		
 		<div id="course_list">
 			<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
			<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
			<script>
				$(function() {
					$( "#accordion" ).accordion({
					  heightStyle: "content",
					  collapsible: true,
		              active:false,
		              activate:"refresh",
		              animate:true
					});
				});
			</script>
 			<table id="resultTable" class="course_list">
 				<thead>
 					<tr id="table_header2">
 						<th class="set_width">Training modules</th>
 						<th>Internal trainer name</th>
 						<th>Chat</th>
 						<th>Lesson type</th>
 						<th>Completion Status</th>
 						<th>Completion date</th>
 					</tr>
 				</thead>
 				<tbody>
 					<tr class="record">
 						<td>
 							<div id="accordion">
  								<h3><a href="lesson_view_text.html">Microsoft Office 2007 Suite</a></h3>
  								<div>
    								<p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
  								</div>
  							</div>
  						</td>
 						<td><asp:TextBox runat="server" Text="Philip Sowah" Enabled="false" ID="txtTrainer"></asp:TextBox></td>
 						<td>
 							<script src="https://apis.google.com/js/platform.js"></script>
							<div id="placeholder-div1"></div>
							<script>
							  gapi.hangout.render('placeholder-div1', {
							    'render': 'createhangout',
							    'initial_apps': [{'app_id' : '184219133185', 'start_data' : 'dQw4w9WgXcQ', 'app_type' : 'ROOM_APP' }]
							  });
							</script>
 						</td>
 						<td>
 							<asp:DropDownList runat="server" ID="txtCourseType" Enabled="false">
 								<asp:ListItem Selected="True" Text="Video" Value="Video">Video</asp:ListItem>
 								<asp:ListItem Text="Slideshow" Value="Slideshow">Slideshow</asp:ListItem>
 								<asp:ListItem Text="Text" Value="Text">Text</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td>
 							<asp:DropDownList runat="server" ID="txtCourseStatus">
 								<asp:ListItem Selected="True" Text="Register" Value="Register">Register</asp:ListItem>
 								<asp:ListItem Text="Course on-going" Value="Course on-going">Course on-going</asp:ListItem>
 								<asp:ListItem Text="Take Test" Value="Take Test">Take Test</asp:ListItem>
 								<asp:ListItem Text="Completed" Value="Completed">Completed</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td><asp:TextBox Text="31/03/2014" runat="server" Enabled="false"></asp:TextBox></td>
 					</tr>
 					<tr class="record">
 						<td>
 							<div id="accordion">
  								<h3><a href="lesson_view_text.html">Financial Management</a></h3>
  								<div>
    								<p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
  								</div>
  							</div>
  						</td>
 						<td><asp:TextBox runat="server" Text="Philip Sowah" Enabled="false"></asp:TextBox></td>
 						<td></td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Video" Value="Video">Video</asp:ListItem>
 								<asp:ListItem Text="Slideshow" Value="Slideshow">Slideshow</asp:ListItem>
 								<asp:ListItem Text="Text" Value="Text">Text</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Register" Value="Register">Register</asp:ListItem>
 								<asp:ListItem Text="Course on-going" Value="Course on-going">Course on-going</asp:ListItem>
 								<asp:ListItem Text="Take Test" Value="Take Test">Take Test</asp:ListItem>
 								<asp:ListItem Text="Completed" Value="Completed">Completed</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td><asp:TextBox Text="31/03/2014" runat="server" Enabled="false"></asp:TextBox></td>
 					</tr>
 					<tr class="record">
 						<td>
 							<div id="accordion">
  								<h3><a href="lesson_view_text.html">Risk Management</a></h3>
  								<div>
    								<p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
  								</div>
  							</div>
  						</td>
 						<td><asp:TextBox runat="server" Text="Philip Sowah" Enabled="false"></asp:TextBox></td>
 						<td>
 							<script src="https://apis.google.com/js/platform.js"></script>
							<div id="placeholder-div1"></div>
							<script>
							  gapi.hangout.render('placeholder-div1', {
							    'render': 'createhangout',
							    'initial_apps': [{'app_id' : '184219133185', 'start_data' : 'dQw4w9WgXcQ', 'app_type' : 'ROOM_APP' }]
							  });
							</script>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Video" Value="Video">Video</asp:ListItem>
 								<asp:ListItem Text="Slideshow" Value="Slideshow">Slideshow</asp:ListItem>
 								<asp:ListItem Text="Text" Value="Text">Text</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Register" Value="Register">Register</asp:ListItem>
 								<asp:ListItem Text="Course on-going" Value="Course on-going">Course on-going</asp:ListItem>
 								<asp:ListItem Text="Take Test" Value="Take Test">Take Test</asp:ListItem>
 								<asp:ListItem Text="Completed" Value="Completed">Completed</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td><asp:TextBox Text="31/03/2014" runat="server" Enabled="false"></asp:TextBox></td>
 					</tr>
 					<tr class="record">
 						<td>
 							<div id="accordion">
  								<h3><a href="lesson_view_text.html">Tax Reliefs, Accessibility, Frequency and Application</a></h3>
  								<div>
    								<p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
  								</div>
  							</div>
  						</td>
 						<td><asp:TextBox runat="server" Text="Philip Sowah" Enabled="false"></asp:TextBox></td>
 						<td>
 							<script src="https://apis.google.com/js/platform.js"></script>
							<div id="placeholder-div1"></div>
							<script>
							  gapi.hangout.render('placeholder-div1', {
							    'render': 'createhangout',
							    'initial_apps': [{'app_id' : '184219133185', 'start_data' : 'dQw4w9WgXcQ', 'app_type' : 'ROOM_APP' }]
							  });
							</script>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Video" Value="Video">Video</asp:ListItem>
 								<asp:ListItem Text="Slideshow" Value="Slideshow">Slideshow</asp:ListItem>
 								<asp:ListItem Text="Text" Value="Text">Text</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Register" Value="Register">Register</asp:ListItem>
 								<asp:ListItem Text="Course on-going" Value="Course on-going">Course on-going</asp:ListItem>
 								<asp:ListItem Text="Take Test" Value="Take Test">Take Test</asp:ListItem>
 								<asp:ListItem Text="Completed" Value="Completed">Completed</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td><asp:TextBox Text="31/03/2014" runat="server" Enabled="false"></asp:TextBox></td>
 					</tr>
					<tr class="record">
 						<td>
 							<div id="accordion">
  								<h3><a href="lesson_view_text.html">Insurance</a></h3>
  								<div>
    								<p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
  								</div>
  							</div>
  						</td>
 						<td><asp:TextBox runat="server" Text="Philip Sowah" Enabled="false"></asp:TextBox></td>
 						<td>
 							<script src="https://apis.google.com/js/platform.js"></script>
							<div id="placeholder-div1"></div>
							<script>
							  gapi.hangout.render('placeholder-div1', {
							    'render': 'createhangout',
							    'initial_apps': [{'app_id' : '184219133185', 'start_data' : 'dQw4w9WgXcQ', 'app_type' : 'ROOM_APP' }]
							  });
							</script>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Video" Value="Video">Video</asp:ListItem>
 								<asp:ListItem Text="Slideshow" Value="Slideshow">Slideshow</asp:ListItem>
 								<asp:ListItem Text="Text" Value="Text">Text</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Register" Value="Register">Register</asp:ListItem>
 								<asp:ListItem Text="Course on-going" Value="Course on-going">Course on-going</asp:ListItem>
 								<asp:ListItem Text="Take Test" Value="Take Test">Take Test</asp:ListItem>
 								<asp:ListItem Text="Completed" Value="Completed">Completed</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td><asp:TextBox Text="31/03/2014" runat="server" Enabled="false"></asp:TextBox></td>
 					</tr>
					<tr class="record">
 						<td>
 							<div id="accordion">
  								<h3><a href="lesson_view_text.html">Media(Radio and TV)</a></h3>
  								<div>
    								<p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
  								</div>
  							</div>
  						</td>
 						<td><asp:TextBox runat="server" Text="Philip Sowah" Enabled="false"></asp:TextBox></td>
 						<td>
 							<script src="https://apis.google.com/js/platform.js"></script>
							<div id="placeholder-div1"></div>
							<script>
							  gapi.hangout.render('placeholder-div1', {
							    'render': 'createhangout',
							    'initial_apps': [{'app_id' : '184219133185', 'start_data' : 'dQw4w9WgXcQ', 'app_type' : 'ROOM_APP' }]
							  });
							</script>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Video" Value="Video">Video</asp:ListItem>
 								<asp:ListItem Text="Slideshow" Value="Slideshow">Slideshow</asp:ListItem>
 								<asp:ListItem Text="Text" Value="Text">Text</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Register" Value="Register">Register</asp:ListItem>
 								<asp:ListItem Text="Course on-going" Value="Course on-going">Course on-going</asp:ListItem>
 								<asp:ListItem Text="Take Test" Value="Take Test">Take Test</asp:ListItem>
 								<asp:ListItem Text="Completed" Value="Completed">Completed</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td><asp:TextBox Text="31/03/2014" runat="server" Enabled="false"></asp:TextBox></td>
 					</tr>
					<tr class="record">
 						<td>
 							<div id="accordion">
  								<h3><a href="lesson_view_text.html">Real Estate/Maintenace/facility Management</a></h3>
  								<div>
    								<p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
  								</div>
  							</div>
  						</td>
 						<td><asp:TextBox runat="server" Text="Philip Sowah" Enabled="false"></asp:TextBox></td>
 						<td>
 							<script src="https://apis.google.com/js/platform.js"></script>
							<div id="placeholder-div1"></div>
							<script>
							  gapi.hangout.render('placeholder-div1', {
							    'render': 'createhangout',
							    'initial_apps': [{'app_id' : '184219133185', 'start_data' : 'dQw4w9WgXcQ', 'app_type' : 'ROOM_APP' }]
							  });
							</script>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Video" Value="Video">Video</asp:ListItem>
 								<asp:ListItem Text="Slideshow" Value="Slideshow">Slideshow</asp:ListItem>
 								<asp:ListItem Text="Text" Value="Text">Text</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Register" Value="Register">Register</asp:ListItem>
 								<asp:ListItem Text="Course on-going" Value="Course on-going">Course on-going</asp:ListItem>
 								<asp:ListItem Text="Take Test" Value="Take Test">Take Test</asp:ListItem>
 								<asp:ListItem Text="Completed" Value="Completed">Completed</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td><asp:TextBox Text="31/03/2014" runat="server" Enabled="false"></asp:TextBox></td>
 					</tr>
					<tr class="record">
 						<td>
 							<div id="accordion">
  								<h3><a href="lesson_view_text.html">Hospitality Management</a></h3>
  								<div>
    								<p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
  								</div>
  							</div>
  						</td>
 						<td><asp:TextBox runat="server" Text="Philip Sowah" Enabled="false"></asp:TextBox></td>
 						<td>
 							<script src="https://apis.google.com/js/platform.js"></script>
							<div id="placeholder-div1"></div>
							<script>
							  gapi.hangout.render('placeholder-div1', {
							    'render': 'createhangout',
							    'initial_apps': [{'app_id' : '184219133185', 'start_data' : 'dQw4w9WgXcQ', 'app_type' : 'ROOM_APP' }]
							  });
							</script>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Video" Value="Video">Video</asp:ListItem>
 								<asp:ListItem Text="Slideshow" Value="Slideshow">Slideshow</asp:ListItem>
 								<asp:ListItem Text="Text" Value="Text">Text</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td>
 							<asp:DropDownList runat="server">
 								<asp:ListItem Selected="True" Text="Register" Value="Register">Register</asp:ListItem>
 								<asp:ListItem Text="Course on-going" Value="Course on-going">Course on-going</asp:ListItem>
 								<asp:ListItem Text="Take Test" Value="Take Test">Take Test</asp:ListItem>
 								<asp:ListItem Text="Completed" Value="Completed">Completed</asp:ListItem>
 							</asp:DropDownList>
 						</td>
 						<td><asp:TextBox Text="31/03/2014" runat="server" Enabled="false"></asp:TextBox></td>
 					</tr>
 				</tbody>
 			</table>
 		</div>
	</div>
 	<div id="footer">
 		<div class="divider"></div>
    	<ul id="footer_links">
        </ul>
	    <div id="footer_copyright">
			<span id="c1">&copy; 2013 AMANSAM TELEVISION. ALL RIGHTS RESERVED.</span>
	        <span id="c2">DESIGNED AND DEVELOPED BY QUALTEK GHANA.</span>
	    </div>
 	</div>
 	</form>
</body>

</html>
