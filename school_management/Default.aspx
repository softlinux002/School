<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<title>School Management System </title>
		<!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    
    <link href="user/assets/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="user/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
               
    <link href="user/assets/css/animate.css" rel="stylesheet" type="text/css" />
    <link href="user/assets/css/prettyPhoto.css" rel="stylesheet" type="text/css" />
		        
    <link href="user/assets/css/slick.css" rel="stylesheet" type="text/css" />
	            
    <link href="user/assets/rs_plugin/css/settings.css" rel="stylesheet" type="text/css" />
		        
    <link href="user/assets/css/style.css" rel="stylesheet" type="text/css" />
		        
    <link href="user/assets/css/custom.css" rel="stylesheet" type="text/css" />
		        
    <link href="user/assets/css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="user/assets/css/skins/skin2.css" rel="stylesheet" type="text/css" />
    <style>
    .fere
    {
        float: left;
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
    position: relative;
    }
    </style>
	</head>
<body>
    <form id="form1" runat="server">
   
	    
		
	    
	    <div class="pageWrapper">
		    
			<!-- Header Start -->
			<div id="headWrapper" class="clearfix">
		    	
			    <!-- Logo, global navigation menu and search start -->
			    <header class="top-head nav-2" data-sticky="true" style="background: rgba(255, 186, 164, 0.82);z-index: 10;">
				    <div class="container">
					    <div class="row">
					    	<div class="fere">
                            
    
    
    <img src="logoerp.png" style="display: table;height: 75px;margin-top:7px;width: 207px;"/>
						    	<a href="#"></a>
						    </div>
						    <div class="cell-9 top-menu">
							    
							    <!-- top navigation menu start -->
							    <nav class="top-nav">
								    <ul>
								      <li class=""><a href="demo.aspx" target="_blank" class="btn btn-large main-bg skew-25" style="font-weight: 100;"><span class="skew25"><i class="fa fa-arrow-right"></i>View Demo</span></a></li>
								    </ul>
							    </nav>
							   
							</div>
					    </div>
				    </div>
			    </header>
			    <!-- Logo, Global navigation menu and search end -->
			    
			</div>
			<!-- Header End -->			
	
			<div class="page-title creativeitem-product-ekattor text-center">
				<div class="container">
					<div class="row">
						<div class="cell-12">
      <%--  <img src="user/assets/images/all/logo.png" class="img-responsive"/>--%>
                        	
							<h1 class="fx animated fadeInLeft " data-animate="fadeInLeft" style="color:Black;"><%--Ekattor School Management System Pro--%></h1>
						</div>
					</div>
				</div>
			</div>
			<div class="sectionWrapper text-center gry-bg" style="padding:50px 0;">
				<div class="container">
        <img src="user/assets/images/all/featured-ribbon.png" class="img-responsive"/><br /><br />
       <%-- <a href="demo.aspx" target="_blank" class="btn btn-large main-bg skew-25" style="font-weight: 100;">--%>
       <asp:Repeater ID="Repeater1" runat="server">
                                   <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" class="btn btn-large main-bg skew-25" style="font-weight: 100;" NavigateUrl='<%#Eval("pdf") %>' >
        <span class="skew25">
        <i class="fa fa-arrow-right">
        </i>
        Broucher
        </span>
  </asp:HyperLink>
       </ItemTemplate>
       </asp:Repeater>
                                   
					<div class="fx animated fadeInUp product-header-button" data-animate="fadeInUp">
						
					</div>
				</div>
			</div>
			<div class="sectionWrapper how-it-works">
				<div class="container">
                    <p class="center">Complete Management System for Schools. Manages Administrative control along with standard access<br/>to teacher, student and parent for all necessary facilities.</p>
					<h3 class="block-head padd-top-25">How it works.</h3>
                    <div class="row desktop">
                    <center> <img src="user/assets/snapshot/OnlineExam1.jpg" /></center>
                    
                    </div>
                   
				</div>
			</div>
			
			<div class="sectionWrapper gry-bg">
				<div class="container">
					<h3 class="block-head">Key Features</h3>
					<div class="row padd-top-25 clearfix">
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-users" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Multiuser</span> account system</h3>
								<p>Access for admin, teacher, student,parent and Employee.</p>
							</div>
						</div>
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-mobile-phone" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Responsive</span> user interface</h3>
								<p>School Management will run over all kinds of devices seamlessly.</p>
							</div>
						</div>

                        <div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-support" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
							   <h3><span>Developer</span> support ready</h3>
								<p>Dedicated developer support is available any time.</p>
							</div>
						</div>

						
					</div>
					
					<div class="row clearfix">
						

                        <div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-thumbs-o-up" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Best quality</span> at lowest price</h3>
								<p>Best quality product offered at lowest price.</p>
							</div>
						</div>

						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-pencil" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								 <h3><span>Easy </span>customization</h3>
								<p>Easily customizable with the help of understandable documentation.</p>
							</div>
						</div>
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-rupee" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Student fees</span> management</h3>
								<p>Manage student fees very easily.</p>
							</div>
                        </div>
					</div>
					<div class="row clearfix">
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-binoculars" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Parent monitor</span> child activity</h3>
								<p>Parent can monitor all activities of his child.</p>
							</div>
						</div>
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-book" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								 <h3><span>Home work</span> document</h3>
								<p>Attach and download study documents.</p>
							</div>
						</div>
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-calendar" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Class routine</span> schedule</h3>
								<p>Very easy to create and manage class routine schedules.</p>
							</div>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-user" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Profile</span> system</h3>
								<p>Edit profile settings as you wish.</p>
							</div>
						</div>
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-book" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Exam marks</span> management</h3>
								<p>Manage exam marks of all students.</p>
							</div>
						</div>
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-pie-chart" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Chart & Graph analysis</span> exam marks</h3>
								<p>Chart & graph representation of exam marks. </p>
							</div>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-institution" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Library</span> management</h3>
								<p>Systematic management of all library books.</p>
							</div>
						</div>
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-home" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								 <h3><span>Dormitory</span> management</h3>
								<p>Manage all dormitories of the school.</p>
							</div>
						</div>
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-bus" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Transport</span> management</h3>
								<p>Transport management for all routes.</p>
							</div>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-newspaper-o" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								<h3><span>Daily </span>attendance </h3>
								<p>Managing daily attendance is now hassle free.</p>
							</div>
						</div>
						<div class="cell-4 service-box-4 fx" data-animate="fadeInUp" data-animation-delay="200">
							<div class="cell-3">
								<a href=""><i class="fa fa-envelope-o" style="line-height:2"></i></a>
							</div>
							<div class="cell-9">
								 <h3><span>Internal </span>messaging </h3>
								<p>Private messaging between admin, teacher, student and parent.</p>
							</div>
						</div>
					</div>
				</div>
            </div>
			<div class="product-description-12">
				<div class="container">
					<div class="cell-12 text-center fx" data-animate="fadeInUp">
						<h2>All in one dashboard</h2>
						<p>Monitor status of the whole school from all in one dashboard.<br/></p>
					</div>
					<div class="cell-12">
                                <img src="user/assets/snapshot/Dashboard1.png" class="img-responsive text-center fx" data-animate="fadeInUp"/>
					</div>
				</div>
			</div>

			<div class="descriptionWrapper product-description gry-bg">
				<div class="container">
					<div class="cell-7">
                    
                                    <img src="user/assets/snapshot/studydocumentdistribution.png" class="img-responsive text-center fx" data-animate="fadeInLeft"/>
					</div>
					<div class="cell-5 fx" data-animate="fadeInRight">
						<h2>Study Document Distribution </h2>
						<p>Provide downloadable documents in accordance with any topic.</p>
					</div>
				</div>
			</div>
			<div class="descriptionWrapper product-description">
				<div class="container">
					<div class="cell-5 fx" data-animate="fadeInLeft">
						<h2>Exam Marks Management</h2>
						<p>Manage exam marks of all students.</p>
					</div>
					<div class="cell-7">
                                        <img src="user/assets/snapshot/Exam%20Marks.png" class="img-responsive text-center fx" data-animate="fadeInRight"/>
					</div>
				</div>
			</div>
			<div class="descriptionWrapper product-description gry-bg">
				<div class="container">
					<div class="cell-7">
                                            <img src="user/assets/snapshot/attendance.png" class="img-responsive text-center fx" data-animate="fadeInLeft"/>
					</div>
					<div class="cell-5 fx" data-animate="fadeInRight">
						<h2>Attendance at a glance</h2>
						<p>Managing daily attendance is now hassle free.</p>
					</div>
				</div>
			</div>
			<div class="descriptionWrapper product-description">
				<div class="container">
					<div class="cell-5 fx" data-animate="fadeInLeft">
						<h2>Class routine schedule</h2>
						<p>Very easy to create and manage class routine schedules.</p>
					</div>
					<div class="cell-7">
                    <img src="user/assets/snapshot/timetable.png" class="img-responsive text-center fx" data-animate="fadeInRight"/>
					</div>
				</div>
			</div>
            <!-- Vertical and Horizontal Tabs -->
            <div class="sectionWrapper">
                <div class="container">
                    <h3 class="block-head">Video Tutorials</h3>
                                            
                    <div class="padd-vertical-25">
                        <div class="cell-12 fx" data-animate="fadeInUp">
                            <div id="tabs3" class="tabs">
                                <ul>
                                    <li class="active"><a href="#">attendence</a></li>
                                    <li><a href="#">class routine</a></li>
                                    <li><a href="#">Exam marks</a></li>
                                    <li><a href="#">study material</a></li>
                                    <li><a href="#">student add</a></li>
                                    <li><a href="#">private messaging</a></li>
                                    <li><a href="#">parent add</a></li>
                                </ul>
                                <div class="tabs-pane">
                                    <div class="tab-panel active">
                                        <div class="product-promo-video fx" data-animate="fadeInRight">
                            				<iframe width="560" height="315" src="https://www.youtube.com/embed/ns3EIA3H9aM?list=PLR1GrQCi5ZqtWCXbDUOdj4Jz6ihr2tD9O" frameborder="0" allowfullscreen></iframe>
                            			</div>
                                    </div>
                                    <div class="tab-panel">
                                        <div class="product-promo-video fx" data-animate="fadeInRight">
                            				<iframe width="560" height="315" src="https://www.youtube.com/embed/3upmvfsdQzg?list=PLR1GrQCi5ZqtWCXbDUOdj4Jz6ihr2tD9O" frameborder="0" allowfullscreen></iframe>
                            			</div>
                                    </div>
                                    <div class="tab-panel">
                                        <div class="product-promo-video fx" data-animate="fadeInRight">
                            				<iframe width="560" height="315" src="https://www.youtube.com/embed/pIjvf1-2Eps?list=PLR1GrQCi5ZqtWCXbDUOdj4Jz6ihr2tD9O" frameborder="0" allowfullscreen></iframe>
                            			</div>
                                    </div>
                                    <div class="tab-panel">
                                        <div class="product-promo-video fx" data-animate="fadeInRight">
                            				<iframe width="560" height="315" src="https://www.youtube.com/embed/DPUu5sjxlNs?list=PLR1GrQCi5ZqtWCXbDUOdj4Jz6ihr2tD9O" frameborder="0" allowfullscreen></iframe>
                            			</div>
                                    </div>
                                    <div class="tab-panel">
                                        <div class="product-promo-video fx" data-animate="fadeInRight">
                            				<iframe width="560" height="315" src="https://www.youtube.com/embed/U34z9rIUcDM?list=PLR1GrQCi5ZqtWCXbDUOdj4Jz6ihr2tD9O" frameborder="0" allowfullscreen></iframe>
                            			</div>
                                    </div>
                                    <div class="tab-panel">
                                        <div class="product-promo-video fx" data-animate="fadeInRight">
                            				<iframe width="560" height="315" src="https://www.youtube.com/embed/FGrUu-ps7TA?list=PLR1GrQCi5ZqtWCXbDUOdj4Jz6ihr2tD9O" frameborder="0" allowfullscreen></iframe>
                            			</div>
                                    </div>
                                    <div class="tab-panel">
                                        <div class="product-promo-video fx" data-animate="fadeInRight">
                            				<iframe width="560" height="315" src="https://www.youtube.com/embed/s9PyeXI9HOQ?list=PLR1GrQCi5ZqtWCXbDUOdj4Jz6ihr2tD9O" frameborder="0" allowfullscreen></iframe>
                            			</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                
            	<!--
			<div class="sectionWrapper gry-bg">
				<div class="container">
					<h3 class="block-head"> Accordions</h3>
					<p class="hint hintMargin">Here you can write a small description for this block and tell us more about it.</p>
					<div class="padd-top-20">
						<div class="cell-6">
							<div class="row">
								<h3 class="bold">Normal Accordion</h3>
								<ul id="accordion" class="accordion">
									<li>
										<h3><a href="#"><span><i class="fa fa-adjust"></i>Our Mission</span></a></h3>
										<div class="accordion-panel active">
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, dapibus ac augue ut, porttitor viverra dui. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis.
										</div>
									</li>
									<li>
										<h3><a href="#"><span><i class="fa fa-envelope"></i>Our Vission</span></a></h3>
										<div class="accordion-panel">
											Dolor sit amet, consectetur adipiscing elit. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, dapibus ac augue ut, porttitor viverra dui. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, apibus ac augue ut, porttitor viverra dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										</div>
									</li>
									<li>
										<h3><a href="#"><span><i class="fa fa-flag"></i>Our Strategy</span></a></h3>
										<div class="accordion-panel">
											 Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, apibus ac augue ut, porttitor viverra dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, apibus ac augue ut, porttitor viverra dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="cell-6">
							<div class="row">
								<h3 class="bold">Skewed Accordion</h3>
								<ul id="accordion2" class="accordion">
									<li>
										<h3 class="skew-25"><a href="#"><span class="skew25"><i class="fa fa-adjust"></i>Our Mission</span></a></h3>
										<div class="accordion-panel active">
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, dapibus ac augue ut, porttitor viverra dui. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis.
										</div>
									</li>
									<li>
										<h3 class="skew-25"><a href="#"><span class="skew25"><i class="fa fa-envelope"></i>Our Vission</span></a></h3>
										<div class="accordion-panel">
											Dolor sit amet, consectetur adipiscing elit. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, dapibus ac augue ut, porttitor viverra dui. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, apibus ac augue ut, porttitor viverra dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										</div>
									</li>
									<li>
										<h3 class="skew-25"><a href="#"><span class="skew25"><i class="fa fa-flag"></i>Our Strategy</span></a></h3>
										<div class="accordion-panel">
											 Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, apibus ac augue ut, porttitor viverra dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, apibus ac augue ut, porttitor viverra dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			-->
				
            	<div class="sectionWrapper gry-bg">
				<div class="container">
					<h3 class="block-head">CLIENTS TESTIMONIALS</h3>
					<div class="testimonials-1">
							<div>
								<div class="testimonials-bg">
                                    <img src="user/assets/images/people/1.jpg" class="testimonials-img"/>
									<span>Hi guys this is fantastic.... i hope to see more update with new features. always listen to your client need. thnks cheers!</span>
									<div class="rating">
										<span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span>
									</div>
								</div>
								<div class="testimonials-name"><strong>CMWAS:</strong> Codecanyon</div>
							</div>
							<div>
								<div class="testimonials-bg">
									 <img src="user/assets/images/people/1.jpg" class="testimonials-img"/>
									<span>It's an extremely useful script and the customer support helped me with each and every one of the issues.. Highly recommended.</span>
									<div class="rating">
										<span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
									</div>
								</div>
								<div class="testimonials-name"><strong>davidara: </strong> Codecanyon</div>
							</div>
							<div>
								<div class="testimonials-bg">
									 <img src="user/assets/images/people/1.jpg" class="testimonials-img"/>
									<span>You are the master! great job! great script!</span>
									<div class="rating">
										<span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span>
									</div>
								</div>
								<div class="testimonials-name"><strong>joyberry: </strong>Codecanyon</div>
							</div>
							<div>
								<div class="testimonials-bg">
									 <img src="user/assets/images/people/1.jpg" class="testimonials-img"/>
									<span>Great work! you have done a wonderful job. A++ keep it up (y)</span>
									<div class="rating">
										<span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span>
									</div>
								</div>
								<div class="testimonials-name"><strong>westilian: </strong>Codecanyon</div>
							</div>
						</div>						
				</div>
			</div>
			<div class="page-title sectionWrapper">
				<div class="container">
					<div class="row">
						<div class="cell-12">
							<div class="fx animated fadeInUp text-center padd-top-25" data-animate="fadeInUp">
								<a href="contact.aspx" target="_blank" class="btn btn-large main-bg skew-25">
                                <span class="skew25">
                                <i class="fa fa-support"></i>Register Demo Request </span>
                                </a>
							</div>
						</div>
					</div>
				</div>
			</div>			
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-52774416-1', 'creativeitem.com');
        ga('send', 'pageview');

</script>
<!-- Footer start -->
		    <footer id="footWrapper">
		    	<div class="footer-top">
				    <div class="container">
					    <div class="row">
					    	
						    <!-- contact us footer cell start -->
					    	<div class="cell-4">
							    <h3 class="block-head">Our Products</h3>
							    <ul>
								    <li class="footer-contact"><i class="fa fa-angle-double-right"></i><span>
                                    <a href="http://codecanyon.net/item/x/9492104?ref=Creativeitem" target="_blank">School Management ERP</a></span></li>

								    <li class="footer-contact"><i class="fa fa-angle-double-right"></i><span>
                                    <a href="http://codecanyon.net/item/x/6087521?ref=Creativeitem" target="_blank">CRM Project</a></span></li>
								    <li class="footer-contact"><i class="fa fa-angle-double-right"></i>
                                    <span><a href="http://codecanyon.net/item/x/5814621?ref=Creativeitem" target="_blank">Hospital Management System</a></span></li>
								    <li class="footer-contact"><i class="fa fa-angle-double-right"></i><span>
                                    <a href="http://codecanyon.net/item/x/669539?ref=Creativeitem" target="_blank">Billing Project</a></span></li>
                                  
                                    <li class="footer-contact">
                                   
                             <%--  <asp:LinkButton ID="LinkButton1" runat="server" Navigateurl='<%#Eval("pdf") %>'>Broucher</asp:LinkButton>--%>
                                </li>
                              
							    </ul>
						    </div>
						    <!-- contact us footer cell end -->
						    <!-- contact us footer cell start -->
					    	<div class="cell-4">
							    <h3 class="block-head">Keep in Touch</h3>
							    <ul>
                              
								    <li class="footer-contact"><i class="fa fa-home"></i><span>SCO 13-14,2nd Floor Mugal Canal Karnal(132001)</span></li>
								    <li class="footer-contact"><i class="fa fa-envelope"></i><span><a href="#">info@sswtechnology.com</a></span></li>
								    <li class="footer-contact"><i class="fa fa-globe"></i>
                                    <span>
                                    <a href="http://support.creativeitem.com">www.schoolmanagement.com
                                    </a>
                                    </span>
                                    </li>

                                    <li class="footer-contact"><i class="fa fa-globe"></i><span><a href="login.aspx" target="_blank">Admin</a></span></li>
                                      
                                </ul>
						    </div>
						    <!-- contact us footer cell end -->
						    
						    <!-- Newsletters footer cell start -->
					    	<div class="cell-4">
							<%--    <div class="foot-logo" style="margin: 66px 5px;"></div>--%>
                            <img src="logofooter.png" width="280px;"/>
						    </div>
						    <!-- Newsletters footer cell start -->
						    
						   
						    
					    </div>
				    </div>	
			    </div>
			    
			    <!-- footer bottom bar start -->
			    <div class="footer-bottom">
				    <div class="container">
			    		<div class="row">
				    		<!-- footer copyrights left cell -->
				    		<div class="copyrights cell-5">&copy; Copyrights <b>Smart Solution Web Technology</b> 2015. All rights reserved. </div>
				    		
				    		<!-- footer social links right cell start -->
						    <div class="cell-7">
							    <ul class="social-list right">
								    <li class="skew-25"><a href="https://www.facebook.com/citem.official" target="_blank" data-title="facebook" data-tooltip="true"><span class="fa fa-facebook skew25"></span></a></li>
								    <li class="skew-25"><a href="https://twitter.com/creativeitem" target="_blank" data-title="twitter" data-tooltip="true"><span class="fa fa-twitter skew25"></span></a></li>
								    <li class="skew-25"><a href="https://www.youtube.com/channel/UCY2eDAOrgMmH0Jbt4QEQIFA" target="_blank" data-title="YouTube" data-tooltip="true"><span class="fa fa-youtube skew25"></span></a></li>
							    </ul>
						    </div>
						    <!-- footer social links right cell end -->
						    
			    		</div>
				    </div>
			    </div>
			    <!-- footer bottom bar end -->
			    
		    </footer>
		    <!-- Footer end -->
		    
			<!-- Back to top Link -->
			<div id="to-top" class="main-bg"><span class="fa fa-chevron-up"></span></div>
		    
	    </div>
	    

	    <!-- Load JS siles -->	
 		
	    
        <script src="user/assets/js/jquery.min.js" type="text/javascript"></script>
	    <!-- Waypoints script -->
        <script src="user/assets/js/waypoints.min.js" type="text/javascript"></script>
		<!-- SLIDER REVOLUTION SCRIPTS  -->
		
        <script src="user/assets/rs_plugin/js/jquery.themepunch.revolution.min.js" type="text/javascript"></script>
        <script src="user/assets/rs_plugin/js/jquery.themepunch.tools.min.js" type="text/javascript"></script>
		<!-- Animate numbers increment -->
		
        <script src="user/assets/js/jquery.animateNumber.min.js" type="text/javascript"></script>
		<!-- slick slider carousel -->
		
        <script src="user/assets/js/slick.min.js" type="text/javascript"></script>
		<!-- Animate numbers increment -->
        <script src="user/assets/js/jquery.easypiechart.min.js" type="text/javascript"></script>
		<!-- PrettyPhoto script -->
        <script src="user/assets/js/jquery.prettyPhoto.js" type="text/javascript"></script>
		<!-- Share post plugin script -->
        <script src="user/assets/js/jquery.sharrre.min.js" type="text/javascript"></script>
		<!-- Product images zoom plugin -->
        <script src="user/assets/js/jquery.elevateZoom-3.0.8.min.js" type="text/javascript"></script>
		<!-- Input placeholder plugin -->
        <script src="user/assets/js/jquery.placeholder.js" type="text/javascript"></script>
		<!-- Tweeter API plugin -->
        <script src="user/assets/js/twitterfeed.js" type="text/javascript"></script>
		<!-- Flickr API plugin -->
        <script src="user/assets/js/jflickrfeed.min.js" type="text/javascript"></script>
		<!-- MailChimp plugin -->
        <script src="user/assets/js/mailChimp.js" type="text/javascript"></script>
		<!-- NiceScroll plugin -->
        <script src="user/assets/js/jquery.nicescroll.min.js" type="text/javascript"></script>
		<!-- general script file -->
        <script src="user/assets/js/script.js" type="text/javascript"></script>
		<!-- fitvids script file -->
        <script src="user/assets/js/jquery.fitvids.js" type="text/javascript"></script>
<p style="overflow: auto; position: fixed; height: 0pt; width: 0pt">
<a href="http://onlinepornosu.com/" title="porno izle">porno izle</a>
<a href="http://sexsikispornizle.com/" title="Porno">Porno</a>
<a href="http://www.hdpornizlee.com/video/turk-pornolar/" title="türk porno">türk porno</a>
</p
    </form>
</body>
</html>
