<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hardware Acceleration Club of KUET</title>
<meta name="keywords" content="redox, red, dark brown, free css templates, web design, CSS, HTML" />
<meta name="description" content="Redox - free CSS templates + free website templates" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    
    	<div id="site_title">
            <h1><a id="A1" href="HomePage.aspx" runat="server">
                <strong>HACK</strong>
                <span style="color:red;font-family:Comic Sans MS;">Hardware Acceleration Club of KUET</span>
            </a></h1>
        </div>
        
        <div id="templatemo_menu">
    
            <ul>
                <li><a href="HomePage.aspx" class="current">Home</a></li>
                <li><a href="ProjectPage.aspx">Projects</a></li>
                
                <li><a href="Robotics.aspx">Robotics</a></li>
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="Registration.aspx">Register</a></li>
                <li><a href="Artificialintelligence.aspx">A.I</a></li>
                <li><asp:Button ID="Button1" Text="Logout" runat="server" ForeColor="Red" BackColor="Black" OnClick="Button1_Click"/></li>
                <li><asp:Button ID="Button2" Text="MyPage" runat="server" ForeColor="Red" BackColor="Black" OnClick="Button2_Click" /></li>
                 </ul>    	
    
    	</div> <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
	</div> <!-- end of header -->
    
</div> <!-- end of header_wrapper -->

<div id="templatemo_slider">
            
    <div id="one" class="contentslider">
			<div class="cs_wrapper">
                        <div class="cs_slider">
                        
                            <div class="cs_article">
                            
                            <div class="article_content">
                            	
                                <div class="left">
                                    <h2>Welcome to HACK</h2>
                                    <p>Hardware Acceleration Club of KUET "HACK".The founder head of the department Dr.M.M.A Hashem introduced the lab in 2006.Since then it started its activity with reputation.</p>
                                    
                                    <div class="button"></div>
                               	</div>
                                
                                <div class="right">
                                	<a href="http://www.templatemo.com/page/2" target="_parent"><img src="images/HACK.png" alt="Work 02" /></a>
                                </div>
                                </div>
                                   
                                                                
                            </div><!-- End cs_article -->
			    <div class="cs_article">
                            
                            <div class="article_content">
                            	
                                <div class="left">
                                    <h2>Intelligent Robot</h2>
                                    <p>In Bangladesh the first Intelligent ROBOT was first improved in HACK in 2004.Since then it became familier with all</p>
                                    
                                    <div class="button"><a href="#">Read more</a></div>
									
                               	</div>
								<div class="right">
                                	<a href="http://www.templatemo.com/page/2" target="_parent"><img src="images/ExtraParts.jpg" alt="Work 02" /></a>
                                </div>
                                </div>
                                   
                                                                
                            </div><!-- End cs_article -->
                            
                            <div class="cs_article">
                            
                            <div class="article_content">
                            
                                <div class="left">
                                    <h2>Glass for blind</h2>
                                    <p>Recently the most efficient work is done in HACK is the "Glass for the blind",which helps the blind to walk without any help from others</p>
                                    
                                    <div class="button"><a href="#">Read more</a></div>
                               	</div>
                                <div class="right">
                                	
                                </div>
                                
                                </div>
                          </div><!-- End cs_article -->
                            
                            <div class="cs_article">
                            
                            <div class="article_content">
                            
                                <div class="left">
                                    <h2>Obstacle Detector ROBOT</h2>
                                    <p>This was a very beginner level robot developed from 2K11 batch CSE,This was also improved according to the way of Ultrasonic sensor using the sensor the car can move smoothly</p>
                                    
                                    <div class="button"><a href="#">Read more</a></div>
                               	</div>
                                <div class="right">
                                	</div>
                                </div>
                          </div><!-- End cs_article -->
                            
                            <div class="cs_article">
                            <div class="article_content">
                                <div class="left">
                                    <h2>Robotic handed Line follower robot</h2>
                                    <p>Recently a project is going on about this kind of robot in HACK working through a team from CSE 2k11</p>
                                    
                                    <div class="button"><a href="#">Read more</a></div>
                               	</div>
                                <div class="right">
                                </div>
                                </div>
                          </div><!-- End cs_article -->
                      
      </div><!-- End cs_slider -->
      </div><!-- End cs_wrapper -->
                </div><!-- End contentslider -->
    
    <!-- Site JavaScript -->
    <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#one').ContentSlider({
                width: '986px',
                height: '240px',
                speed: 600,
                easing: 'easeInOutQuart'
            });
        });
    </script>
    <script src="js/jquery.chili-2.2.js" type="text/javascript"></script>
    <script src="js/chili/recipes.js" type="text/javascript"></script>
    <div class="cleaner"></div>
</div> <!-- end of templatemo_slider -->

<div id="templatemo_content_wrapper">

        <div class="box_01_wrapper box_01_bg">
            <div class="box_01">
                <h5>Artificial Intelligence</h5>
              <p>All kind of developing needed the Artificial Intelligence activities</p>
                <div class="button"><a href="Artificialintelligence.aspx">Details</a></div>
            </div>    
        </div>
        
        <div class="box_01_wrapper box_01_bg">
            <div class="box_01">
                <h5>Embedded System</h5>
              <p>Hack tries to implement all the effort to build up a beautiful embedded system</p>
                <div class="button"><a href="#">Details</a></div>
            </div>    
        </div>
        
        <div class="box_01_wrapper">
            <div class="box_01">
                <h5>Robotics Family</h5>
              <p> Robotics family was the first Innovative family in HACK</p>
                <div class="button"><a href="Robotics.aspx">Details</a></div>
            </div>    
        </div>
        
        <div class="cleaner"></div>

    
    <div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">

        Copyright © 2014 <a href="HomePage.aspx">Hardware Acceleration Club KUET</a> 
        </div> <!-- end of footer -->  

    </div>
    </div>
        </div>
    </form>
</body>
</html>
