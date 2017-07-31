<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Final6s.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   <style>
* /*{box-sizing:border-box}
body {font-family: Verdana,sans-serif;}*/
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}
/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 20px;
  width: 20px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 20%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #808080;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
    
<style>
/*.mySlides {display:none;}
    .auto-style2 {
        
    
/* The dots/bullets/indicators */
/*.dot {
  height: 20px;
  width: 20px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}*/

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <%-- <div class="auto-style2">
       
       <asp:Image ID="Image1" Image class="mySlides" ImageType="Transperant" runat="server" Width="1670px" ImageUrl="~/images/images4.jpg" Height="697px"></asp:Image>
   
   <asp:Image ID="Image2" Image class="mySlides" runat="server" Width="1680px" ImageUrl="~/images/images16.jpg" Height="697px"></asp:Image>

        <asp:Image ID="Image3" Image class="mySlides" runat="server" Width="1680px" ImageUrl="~/images/images7.jpg" Height="697px"></asp:Image>
        <asp:Image ID="Image4" Image class="mySlides" runat="server" Width="1680px" ImageUrl="~/images/images15.jpg" Height="697px"></asp:Image>

   </div>
  --%>
    <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/images16.jpg" style="width:1000px ;height:500px">
  <div class="text">Caption One</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/images15.jpg" style="width:1000px ; height:500px">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/images4.jpg" style="width:1000px ;height:500px" >
  <div class="text">Caption Three</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot">1</span> 
  <span class="dot">2</span> 
  <span class="dot">3</span> 
</div>

<%--<script>
var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > x.length) { slideIndex = 1 } 
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    x[slideIndex-1].style.display = "block"; 
    setTimeout(carousel, 3000); 
}
</script>--%>
    
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
  
</asp:Content>
