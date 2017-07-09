<%@ Page Title="" Language="C#" MasterPageFile="~/Fim.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Final6s.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
    
<style>
.mySlides {display:none;}
    .auto-style2 {
        ///height: 15px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="auto-style2">
       
       <asp:Image ID="Image1" Image class="mySlides" ImageType="Transperant" runat="server" Width="1670px" ImageUrl="~/images/images4.jpg" Height="697px"></asp:Image>
   
   <asp:Image ID="Image2" Image class="mySlides" runat="server" Width="1680px" ImageUrl="~/images/images16.jpg" Height="697px"></asp:Image>

        <asp:Image ID="Image3" Image class="mySlides" runat="server" Width="1680px" ImageUrl="~/images/images7.jpg" Height="697px"></asp:Image>
        <asp:Image ID="Image4" Image class="mySlides" runat="server" Width="1680px" ImageUrl="~/images/images15.jpg" Height="697px"></asp:Image>
       </div>


<script>
var slideIndex = 1;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1} 
    x[slideIndex-1].style.display = "block"; 
    setTimeout(carousel, 3000); 
}
</script>



</asp:Content>
