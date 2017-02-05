<%@ Page Title="Flu Heat Map" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TimeMapDisplay.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
    <script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAASI0kCI-azC8RgbOZzWc3VRRarOQe_TKf_51Omf6UUSOFm7EABRRhO0PO4nBAO9FCmVDuowVwROLo3w" type="text/javascript">

    </script>
    <script type="text/javascript">

var tm;
$(function() {
    tm = TimeMap.init({
        mapId: "map",               // Id of map div element (required)
        timelineId: "timeline",     // Id of timeline div element (required) 
        options: {
            noEventLoad: true
        },
        datasets: [
            {
                title: "Progressive Dataset",
                theme: "red",
                type: "json_string",
                options: {
                    // Data to be loaded in JSON from a remote URL
                    //type: "json", 
                    // url with start/end placeholders
                    //url: "http://cis-linux2.temple.edu/~tuf69946/js_test/timemap.2.0.1/api/fake_api_all_states.php?callback=?",
                    //url: "http://localhost:59885/api/Timemap?callback=?"
                    url: "/App_Data/state1.json"                    
					
                    //start: "2014-10-15",
					
                    // lower cutoff date for data
                    //dataMinDate: "2014-10-15",
                    // four months in milliseconds
                    //interval: 10368000000,   
                    // function to turn date into string appropriate for service
                    //formatDate: function(d) {
                    //    return TimeMap.util.formatDate(d, 1);
                    //}
                }
            }
        ],
        bandInfo: [
            {
                width: "60%",
                intervalUnit: Timeline.DateTime.DAY,
                intervalPixels: 70
            },
			{
			    width: "40%",
			    intervalUnit: Timeline.DateTime.WEEK,
			    intervalPixels: 160
			}
        ],
        //scrollTo: '2014-10-10'
    });
});
      
</script> 
    <script >
        function mouseDown() {
            document.getElementById("dragtarget").style.visibility = "hidden";
        }

        function mouseUp() {
            document.getElementById("dragtarget").style.visibility = "visible";
        }
	</script>
    <div class="main_bk">
        
        <div class="map_twitter" style="height:600px;background-color:rgba(232, 232, 232, 1);">        
            <div id="timemap">
                <div class="swatch">
			<div class="mini hint--left" data-hint="Minimal">
				<div class="mini_1">
					<div class="button" ><span class="text">Minimal</span></div>
				</div>
				<div class="mini_2">
					<div class="button" ><span class="text">Minimal</span></div>
				</div>
                <div class="des"><p>Minimal</p></div>
			</div>
			<div class="low hint--left" data-hint="Low">
				<div class="low_1">
					<div class="button" ><span class="text">Low</span></div>
				</div>
				<div class="low_2">
					<div class="button"><span class="text">Low</span></div>
				</div>
                <div class="des"><p>Low</p></div>
			</div>
			
			<div class="moderate hint--left" data-hint="Moderate">
				<div class="mod_1">
					<div class="button" ><span class="text">Moderate</span></div>
				</div>
				<div class="mod_2">
					<div class="button" ><span class="text">Moderate</span></div>
				</div>
                <div class="des"><p>Moderate</p></div>
			</div>
			
			<div class="high hint--left" data-hint="High">
				<div class="high_1">
					<div class="button" style="background:#996600"><span class="text">High</span></div>
				</div>
				<div class="high_2">
					<div class="button" style="background:#664400"><span class="text">High</span></div>	
				</div>
                <div class="des"><p>High</p></div>
			</div>
        </div>                
                <div id="mapcontainer">
                    <div id="map"></div>
                </div>
                <!-- mouse down to display the button and make dispare in 100s  -->
                <div id="timelinecontainer" onmousedown="mouseDown()" onmouseup="myVar=setTimeout(mouseUp, 100000);" >
                    <div id="timeline" ></div>
                    <button id="dragtarget">Drag Here </button>
                </div>
            </div>
            <div class="twitterborder" style="width:20%;float:left;">
                <a class="twitter-timeline" href="https://twitter.com/xcz011/lists/health" data-widget-id="718459861206478848"  data-chrome="noheader nofooter">Tweets from https://twitter.com/xcz011/lists/health</a>
                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
            </div>       
       </div>
    </div>
    
    
</asp:Content>
