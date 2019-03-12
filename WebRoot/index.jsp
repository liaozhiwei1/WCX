<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@page isELIgnored="false" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
	<title>主页</title>
	<meta charset="UTF-8">
	<meta name="description" content="Labs - Design Studio">
	<meta name="keywords" content="lab, onepage, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="<c:url value="/ioc/favicon.ico"/>" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,700|Roboto:300,400,700" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/css/font-awesome.min.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/css/flaticon.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/css/magnific-popup.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/css/owl.carousel.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/css/style.css"/>"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- 模态框 -->
	<div class="modal fade bs-example-modal-sm" id="w1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
	  <div class="modal-dialog modal-sm" role="document">
	    <div class="modal-content">
	      <div class="modal-body">
				      	<div class="alert alert-danger" role="alert">
				      	<span class="glyphicon glyphicon-remove-sign"></span>
				      	<span id="hw1"></span>
				      	</div>
			      </div>
		      	 <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
	    </div>
	  </div>
	</div>
	<div class="modal fade bs-example-modal-sm" id="s1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
	  <div class="modal-dialog modal-sm" role="document">
	    <div class="modal-content">
	      <div class="modal-body">
				      	<div class="alert alert-danger" role="alert">
				      	<span class="glyphicon glyphicon-remove-sign"></span>
				      	<span id="hs1"></span>
				      	</div>
			      </div>
		      	 <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
	    </div>
	  </div>
	</div>
	<div class="modal fade bs-example-modal-sm" id="w2" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
	  <div class="modal-dialog modal-sm" role="document">
	    <div class="modal-content">
	      <div class="modal-body">
				      	<div class="alert alert-danger" role="alert">
				      	<span class="glyphicon glyphicon-remove-sign"></span>
				      	<span id="hw2"></span>
				      	</div>
			      </div>
		      	 <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
	    </div>
	  </div>
	</div>
	<div class="modal fade bs-example-modal-sm" id="s2" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
	  <div class="modal-dialog modal-sm" role="document">
	    <div class="modal-content">
	      <div class="modal-body">
				      	<div class="alert alert-danger" role="alert">
				      	<span class="glyphicon glyphicon-remove-sign"></span>
				      	<span id="hs2"></span>
				      	</div>
			      </div>
		      	 <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
	    </div>
	  </div>
	</div>
	<div class="modal fade bs-example-modal-sm" id="w3" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
	  <div class="modal-dialog modal-sm" role="document">
	    <div class="modal-content">
	      <div class="modal-body">
				      	<div class="alert alert-danger" role="alert">
				      	<span class="glyphicon glyphicon-remove-sign"></span>
				      	<span id="hw3"></span>
				      	</div>
			      </div>
		      	 <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
	    </div>
	  </div>
	</div>
	<div class="modal fade bs-example-modal-sm" id="s3" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
	  <div class="modal-dialog modal-sm" role="document">
	    <div class="modal-content">
	      <div class="modal-body">
				      	<div class="alert alert-danger" role="alert">
				      	<span class="glyphicon glyphicon-remove-sign"></span>
				      	<span id="hs3"></span>
				      	</div>
			      </div>
		      	 <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
	    </div>
	  </div>
	</div>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader">
			<img src="<c:url value="/img/QQ图片20181214205012.jpg"/>" alt="">
			<h2>Loading.....</h2>
		</div>
	</div>


	<!-- Header section -->
	<header class="header-section">
		<div class="logo">
			<img src="<c:url value="/img/logo.png"/>" alt=""><!-- Logo -->
		</div>
		<!-- Navigation -->
		<div class="responsive"><i class="fa fa-bars"></i></div>
		<nav>
			<ul class="menu-list">
				<li class="active"><a href="<c:url value="/"/>">Home</a></li>
				<li><a href="#1">数据分析</a></li>
				<li><a href="<c:url value="/logout"/>">退出</a></li>
			</ul>
		</nav>
	</header>
	<!-- Header section end -->


	<!-- Intro Section -->
	<div class="hero-section">
		<div class="hero-content">
			<div class="hero-center">
				<img src="img/logo.png"" alt="">
				<p>Get your freebie template now!</p>
			</div>
		</div>
		<!-- slider -->
		<div id="hero-slider" class="owl-carousel">
			<div class="item  hero-item" data-bg="img/01.jpg"></div>
			<div class="item  hero-item" data-bg="img/02.jpg"></div>
		</div>
	</div>
	<!-- Intro Section -->


	<!-- About section -->
	<div class="about-section">
		<div class="overlay"></div>
		<!-- card section -->
		<div class="card-section">
			<div class="container">
				<div class="row">
					<!-- single card -->
					<div class="col-md-4 col-sm-6">
						<div class="lab-card">
							<div class="icon">
								<i class="flaticon-023-flask"></i>
							</div>
							<h2>Get in the lab</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur leo est, feugiat nec elementum id, suscipit id nulla..</p>
						</div>
					</div>
					<!-- single card -->
					<div class="col-md-4 col-sm-6">
						<div class="lab-card">
							<div class="icon">
								<i class="flaticon-011-compass"></i>
							</div>
							<h2>Projects online</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur leo est, feugiat nec elementum id, suscipit id nulla..</p>
						</div>
					</div>
					<!-- single card -->
					<div class="col-md-4 col-sm-12">
						<div class="lab-card">
							<div class="icon">
								<i class="flaticon-037-idea"></i>
							</div>
							<h2>SMART MARKETING</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur leo est, feugiat nec elementum id, suscipit id nulla..</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- card section end-->
	

	<div class="section-title" id="1">
		<h2><span>温度</span> 和<span>湿度</span> 测绘图</h2>
	</div>

	<!-- Team Section end-->
	<div style="text-align: center;" >
		<h2 id="wd"  class="panel-infoW"></h2>
	</div>
	<div style="text-align: center;">
		<h2 id="yl"  class="panel-infoW"></h2>
	</div>
	<div id="TAR" style="width: 90%;height:70%;position:relative;z-index: 99999;margin:5% 5%;background: white"></div>
	<div style="text-align: center;" >
		<h2 id="wd1"  class="panel-infoW"></h2>
	</div>
	<div style="text-align: center;">
		<h2 id="yl1"  class="panel-infoW"></h2>
	</div>
	<div id="T" style="width: 90%;height:70%;position:relative;z-index: 99999;margin:5% 5%;background: white"></div>
	<div style="text-align: center;" >
		<h2 id="wd2"  class="panel-infoW"></h2>
	</div>
	<div style="text-align: center;">
		<h2 id="yl2"  class="panel-infoW"></h2>
	</div>
	<div id="R" style="width: 90%;height:70%;position:relative;z-index: 99999;margin:5% 5%;background: white"></div>

	<!-- Promotion section -->
	<div class="promotion-section">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<h2>Are you ready to stand out?</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur leo est.</p>
				</div>
				<div class="col-md-3">
					<div class="promo-btn-area">
						<a href="" class="site-btn btn-2">Browse</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Promotion section end-->

	


	<!-- Footer section -->
	<footer id="footer" class="wrapper">
				<div class="inner">
					<div class="copyright">
						 <p>&copy; 2018 wcx &middot; </p>
					</div>
				</div>
			</footer>
	<!-- Footer section end -->

	

	<!--====== Javascripts & Jquery ======-->
	<script src="<c:url value="/js/jquery-2.1.4.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/js/magnific-popup.min.js"/>"></script>
	<script src="<c:url value="/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/js/circle-progress.min.js"/>"></script>
	<script src="<c:url value="/js/main.js"/>"></script>
	<script src="<c:url value="/js/echarts.min.js"/>"></script>
	<script type="text/javascript">
		var id= new Array();
        var temperature=new Array();
		var humidity=new Array();
		var time=new Array();
		var id1= new Array();
		var temperature1=new Array();
		var humidity1=new Array();
		var time1=new Array();
		var id2= new Array();
		var temperature2=new Array();
		var humidity2=new Array();
		var time2=new Array();
		var wflag=0;
		var wflag1=0;
		var wflag2=0;
		var sflag=0;
		var sflag1=0;
		var sflag2=0;
		$(function(){
			$.ajax({
				type:"get",
				url:"<c:url value='/selAllData'/>",
				cache:false,
    			ifModified :true,
				dataType:"json",
				success:function (date){
					temperature.length=0;
					humidity.length=0;
					time.length=0;
					for(var i=0;i<date.length;i++){
						temperature.push(date[i].temperature);
						humidity.push(date[i].humidity);
						time.push(date[i].time);
						id.push(date[i].id);
					}
				}
			});
			$.ajax({
				type:"get",
				url:"<c:url value='/selAllData1'/>",
				cache:false,
    			ifModified :true,
				dataType:"json",
				success:function (date){
					temperature1.length=0;
					humidity1.length=0;
					time1.length=0;
					for(var i=0;i<date.length;i++){
						temperature1.push(date[i].temperature);
						humidity1.push(date[i].humidity);
						time1.push(date[i].time);
						id1.push(date[i].id);
					}
				}
			});
			$.ajax({
				type:"get",
				url:"<c:url value='/selAllData2'/>",
				cache:false,
    			ifModified :true,
				dataType:"json",
				success:function (date){
					temperature2.length=0;
					humidity2.length=0;
					time2.length=0;
					for(var i=0;i<date.length;i++){
						temperature2.push(date[i].temperature);
						humidity2.push(date[i].humidity);
						time2.push(date[i].time);
						id2.push(date[i].id);
					}
				}
			})
		});
        </script>
        <script type="text/javascript">
			window.setInterval(function() {
				$.post("<c:url value='/selLastData'/>",function(data){
					$("#wd").html("传感器1实时温度:"+data[data.length-1].temperature+" ℃");
					$("#yl").html("传感器1实时湿度:"+data[data.length-1].humidity+" %");
					if(id[id.length-1]!=data[data.length-1].id){
						temperature.push(data[data.length-1].temperature);
						humidity.push(data[data.length-1].humidity);
						time.push(data[data.length-1].time);
						id.push(data[data.length-1].id);
					}
					if(data[data.length-1].humidity>80&&sflag==0){
						$("#hs1").html("传感器一的湿度过高，请及时处理!");
						$("#s1").modal();
						sflag=1;
					};
					if(data[data.length-1].temperature>30&&wflag==0){
						$("#hw1").html("传感器一的温度过高，请及时处理!");
						$("#w1").modal();
						wflag=1;
					};
					if(data[data.length-1].humidity<80&&sflag==1&&data[data.length-1].humidity>70){
						sflag=0;
					};
					if(data[data.length-1].temperature<30&&wflag==1&&data[data.length-1].temperature>20){
						wflag=0;
					};
					if(data[data.length-1].temperature<20&&wflag==0){
						$("#hw1").html("传感器一的温度过低，请及时处理!");
						$("#w1").modal();
						wflag=1;
					};
					if(data[data.length-1].humidity<70&&sflag==0){
						$("#hs1").html("传感器一的湿度过低，请及时处理!");
						$("#s1").modal();
						sflag=1;
					};
				});
			}, 1000) 
			window.setInterval(function() {
				$.post("<c:url value='/selLastData1'/>",function(data){
					$("#wd1").html("传感器2实时温度:"+data[data.length-1].temperature+" ℃");
					$("#yl1").html("传感器2实时湿度:"+data[data.length-1].humidity+" %")
					if(id1[id1.length-1]!=data[data.length-1].id){
						temperature1.push(data[data.length-1].temperature);
						humidity1.push(data[data.length-1].humidity);
						time1.push(data[data.length-1].time);
						id1.push(data[data.length-1].id);
					};
					if(data[data.length-1].humidity>90&&sflag1==0){
						$("#hs2").html("传感器一的湿度过高，请及时处理!");
						$("#w2").modal('show');
						sflag1=1;
					};
					if(data[data.length-1].temperature>30&&wflag1==0){
						$("#h").html("传感器一的温度过高，请及时处理!");
						$("#myModal").modal('show');
						wflag1=1;
					};
					if(data[data.length-1].humidity<90&&sflag1==1&&data[data.length-1].humidity>70){
						sflag1=0;
					};
					if(data[data.length-1].temperature<30&&wflag1==1&&data[data.length-1].temperature>10){
						wflag1=0;
					};
					if(data[data.length-1].temperature<10&&wflag1==0){
						$("#hs2").html("传感器一的温度过低，请及时处理!");
						$("#w2").modal('show');
						wflag1=1
					};
					if(data[data.length-1].humidity<70&&sflag1==0){
						$("#hw2").html("传感器一的湿度过低，请及时处理!");
						$("#myModal").modal('show');
						sflag1=1;
					};
				});
			}, 1000) 
			window.setInterval(function() {
				$.post("<c:url value='/selLastData2'/>",function(data){
					$("#wd2").html("传感器3实时温度:"+data[data.length-1].temperature+" ℃");
					$("#yl2").html("传感器3实时湿度:"+data[data.length-1].humidity+" %");
					if(id2[id2.length-1]!=data[data.length-1].id){
						temperature2.push(data[data.length-1].temperature);
						humidity2.push(data[data.length-1].humidity);
						time2.push(data[data.length-1].time);
						id2.push(data[data.length-1].id);
					}
					if(data[data.length-1].humidity>90&&sflag2==0){
						$("#hs3").html("传感器一的湿度过高，请及时处理!");
						$("#s1").modal('show');
						sflag2=1;
					};
					if(data[data.length-1].temperature>30&&wflag2==0){
						$("#hw3").html("传感器一的温度过高，请及时处理!");
						$("#w3").modal('show');
						wflag2=1;
					};
					if(data[data.length-1].humidity<90&&sflag2==1&&data[data.length-1].humidity>70){
						sflag2=0;
					};
					if(data[data.length-1].temperature<30&&wflag2==1&&data[data.length-1].temperature>10){
						wflag2=0;
					};
					if(data[data.length-1].temperature<10&&wflag2==0){
						$("#hw3").html("传感器一的温度过低，请及时处理!");
						$("#w3").modal('show');
						wflag2=1
					};
					if(data[data.length-1].humidity<70&&sflag2==0){
						$("#hs3").html("传感器一的湿度过低，请及时处理!");
						$("#s3").modal('show');
						sflag2=1;
					};
				});
			}, 1000) 
        </script>
        <!-- 温度压力图 -->
        <script>
        var myChart = echarts.init(document.getElementById('TAR'));
		$(function(){
        // 指定图表的配置项和数据
        var option = {
            title:{
					text:'传感器一'
			},
			tooltip: {
					show: true,
            		trigger: 'axis',
          	},
          	axisPointer: {
            link: {xAxisIndex: 'all'},
            label: {
                backgroundColor: '#777'
            }
        },
          	toolbox:{
          			show: true,
          			trigger: 'axis',
          			feature:{
          				saveAsImage:{
          					show:true,
          				},
          				dataZoom: {
				                yAxisIndex: 'none'
				                },
          				dataView:{
          					lang:['数据视图', '关闭', '刷新'],
          				},
               			magicType: {
			                show: true,
			                type: ['line','bar']
			            },
			            mark: {
			                show: true
			            	},
          				},
          			},
          	dataZoom:  [
				        {
				            type: 'inside',
				            show: true,
				            xAxisIndex: [0],
				            start: 70,
				            end: 100
				        },{
				        	 type: 'slider',
				            show: true,
				            xAxisIndex: [0],
				            start: 70,
				            end: 100
				        }],	
            legend: {
                data:['温度(°C)','湿度(%)']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [
		        {
		            name:'温度(°C)',
		            type:'line',
					itemStyle: {normal: {lineStyle: {color:'#ffde33'}}},
		        	data:[],
		        	
		        },
		        {
		            name:'湿度(%)',
		            type:'line',
					itemStyle: {normal: {lineStyle: {color:'#99ccff'}}},
		            data:[]
		        }]
        };
		myChart.showLoading();
        myChart.setOption(option);
		})
		window.setInterval(function(){
			myChart.hideLoading();
			myChart.setOption({
				xAxis:{
				data:time
				},
				series:[{
       			name:'温度(°C)',
       			data:temperature
       		},
       		{
       			name:'湿度(%)',
       			data:humidity
       		}]
			});
		},1000);
		</script>
		
		<!-- 温度图 -->
		<script>
		var Mytemperature=echarts.init(document.getElementById('T'));
		$(function(){
        // 指定图表的配置项和数据
        var option = {
            title:{
					text:'传感二'
			},
			tooltip: {
					show: true,
            		trigger: 'axis',
          	},
          	axisPointer: {
            link: {xAxisIndex: 'all'},
            label: {
                backgroundColor: '#777'
            }
        },
          	toolbox:{
          			show: true,
          			trigger: 'axis',
          			feature:{
          				saveAsImage:{
          					show:true,
          				},
          				dataZoom: {
				                yAxisIndex: 'none'
				                },
          				dataView:{
          					lang:['数据视图', '关闭', '刷新'],
          				},
               			magicType: {
			                show: true,
			                type: ['line','bar']
			            },
			            mark: {
			                show: true
			            	},
          				},
          			},
          	dataZoom:  [
				        {
				            type: 'inside',
				            show: true,
				            xAxisIndex: [0],
				            start: 70,
				            end: 100
				        },{
				        	 type: 'slider',
				            show: true,
				            xAxisIndex: [0],
				            start: 70,
				            end: 100
				        }],	
            legend: {
                data:['温度(°C)','湿度(%)']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [
		        {
		            name:'温度(°C)',
		            type:'line',
					itemStyle: {normal: {lineStyle: {color:'#ffde33'}}},
		        	data:[],
		        	
		        },
		        {
		            name:'湿度(%)',
		            type:'line',
					itemStyle: {normal: {lineStyle: {color:'#99ccff'}}},
		            data:[]
		        }]
        };
		Mytemperature.showLoading();
        Mytemperature.setOption(option);
		})
		window.setInterval(function (){
			Mytemperature.hideLoading();
			Mytemperature.setOption({
				xAxis:{
				data:time1
				},
				series:[{
       			name:'温度(°C)',
       			data:temperature1
       		},
       		{
       			name:'湿度(%)',
       			data:humidity1
       		}]
			});
		},1000);
		</script>
		
		
		<!-- 压力图 -->
		<script type="text/javascript">
		var Mypressure=echarts.init(document.getElementById('R'));
		$(function(){
        // 指定图表的配置项和数据
        var option = {
            title:{
					text:'传感器三'
			},
			tooltip: {
					show: true,
            		trigger: 'axis',
          	},
          	axisPointer: {
            link: {xAxisIndex: 'all'},
            label: {
                backgroundColor: '#777'
            }
        },
          	toolbox:{
          			show: true,
          			trigger: 'axis',
          			feature:{
          				saveAsImage:{
          					show:true,
          				},
          				dataZoom: {
				                yAxisIndex: 'none'
				                },
          				dataView:{
          					lang:['数据视图', '关闭', '刷新'],
          				},
               			magicType: {
			                show: true,
			                type: ['line','bar']
			            },
			            mark: {
			                show: true
			            	},
          				},
          			},
          	dataZoom:  [
				        {
				            type: 'inside',
				            show: true,
				            xAxisIndex: [0],
				            start: 70,
				            end: 100
				        },{
				        	 type: 'slider',
				            show: true,
				            xAxisIndex: [0],
				            start: 70,
				            end: 100
				        }],	
            legend: {
                data:['温度(°C)','湿度(%)']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [
		        {
		            name:'温度(°C)',
		            type:'line',
					itemStyle: {normal: {lineStyle: {color:'#ffde33'}}},
		        	data:[],
		        	
		        },
		        {
		            name:'湿度(%)',
		            type:'line',
					itemStyle: {normal: {lineStyle: {color:'#99ccff'}}},
		            data:[]
		        }]
        };
		Mypressure.showLoading();
        Mypressure.setOption(option);
        window.onresize=function(){
        	Mypressure.resize();
        	myChart.resize();
        	Mytemperature.resize();
        };
		})
		window.setInterval(function (){
			Mypressure.hideLoading();
			Mypressure.setOption({
				xAxis:{
				data:time2
				},
				series:[{
       			name:'温度(°C)',
       			data:temperature2
       		},
       		{
       			name:'湿度(%)',
       			data:humidity2
       		}]
			});
		},1000);
		</script>
</body>
</html>
