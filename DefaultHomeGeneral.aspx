

<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="DefaultHomeGeneral.aspx.cs" Inherits="DwfaultHomeGeneral" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style style="text-transform: capitalize; text-decoration: blink">
        
    </style>
    <link href="CSS/DefaultHomeGeneralStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        var myimages = ["gglgail_relationship.png", "greengasmaking.png", "slide2.jpg", "greengas1.jpg", "links.png"];
        var imageno = 0;
        function moveMySlider() {
            var im = document.getElementById("imgslide");
            im.src = "images/" + myimages[imageno];
            imageno++;
            if (imageno == myimages.length) {
                imageno = 0;
            }
            window.setTimeout("moveMySlider()", 5000);
        }
        //LiveChat code starts here....
        window.$zopim || (function (d, s) {
            var z = $zopim = function (c) {
                z._.push(c)
            }, $ = z.s =
            d.createElement(s), e = d.getElementsByTagName(s)[0]; z.set = function (o) {
                z.set.
                _.push(o)
            }; z._ = []; z.set._ = []; $.async = !0; $.setAttribute('charset', 'utf-8');
            $.src = '//v2.zopim.com/?3rliBcNznNhKNTbW4lCjOYR2XVSiGR0u'; z.t = +new Date; $.
            type = 'text/javascript'; e.parentNode.insertBefore($, e)
        })(document, 'script');
        //LiveChat Code End here
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">

        <div id="slider1">
            <img id="imgslide" src="images/gglgail_relationship.png" width="1000px" height="250px" /><br />
            &nbsp;</div>

        <div id="wlcm"  > <marquee behavior="alternate" onmouseover="stop()" scrollamount="10" onmouseout="start()" style="height: 46px"> 
            <span id="wlcmMarquee"> Welcome to <font id="GGLname" style="color:green;">GGl(Green Gas Limited)</font></span> </marquee>
        </div>
        <div id="contentMain">
            <div id="content-left">
                <div id="news-head">News Updates</div>
                <marquee id="News-marquee" direction="up"  onmouseout="start()" onmouseover="stop()" scrollamount="5" >
                        <asp:GridView ID="GVNotification" runat="server" AutoGenerateColumns="false" GridLines="None" Width="100%">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%#Eval("message") %> <asp:Image runat="server" ID="ImgNew" ImageUrl="images/gglLogo1.gif" width="30px" />
                                        <hr />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView></marquee>
            </div>
            <div id="content-right">
                <section id="intro">
                    <p> Green Gas Limited (GGL) is a Joint Venture of Gas Authority India Limited [GAIL] and Indian Oil Corporation Limited [IOCL].  It has been incorporated for the implementation of City Gas Projects for supply of Piped Natural Gas (PNG) to domestic, commercial and industrial Consumers and Compressed Natural Gas (CNG) to automobile consumers in the cities of Lucknow and Agra.</p><hr />
                    <img src="images/boyplantsmal2.JPG" /><hr />
                    
                </section>
            </div>
        </div>
    </div>
</asp:Content>

