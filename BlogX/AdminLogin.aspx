<%@ Page Title="" Language="C#" MasterPageFile="~/blog.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="BlogX.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <head>
        <link href="adminLoginStyleSheet1.css" rel="stylesheet" />

    </head>
    <body>
     <section class="showcase">
    <header>
      <h2 class="logo">Admin LogIn 😎😎😎</h2>
     
    </header>

         
    <video src="images/video.mp4" muted loop autoplay></video>
    <div class="overlay"></div>
    <div class="text container-fluid">
        <div class="container-fluid">



    <div class="row">
        <div class="col-md">
    <asp:TextBox ID="TextBox1" type="text" name="username" Height="55px" CssClass="box bg-opacity-75 bg-dark text-bg-success" placeholder="Enter User Name" runat="server" Width="100%"></asp:TextBox>
       </div>
            </div>
    <br />
    <br />
    <br />
    <br />

    <div class="row">
        <div class="col-md">
    <asp:TextBox ID="TextBox2" Height="55px" CssClass="box bg-opacity-75 bg-dark text-bg-success" runat="server" Width="100%" type="password" name="password"  placeholder="Enter Password" runat="server"></asp:TextBox>
        </div>
        </div>
    <br />
    <br />
    <br />

    <div class="row">
        <div class="col-md">
            <center>
                
                <asp:Button ID="Button1" Height="55px" Width="50%" CssClass="box bg-opacity-75 bg-dark text-bg-success" runat="server" Text="Ready To Log IN 😈😈😈" OnClick="Button1_Click" />
                
                </center>
        </div>
        </div>


</div>



      
    </div>
    
  </section>
 
  
   <script>
         const menuToggle = document.querySelector('.toggle');
      const showcase = document.querySelector('.showcase');

      menuToggle.addEventListener('click', () => {
        menuToggle.classList.toggle('active');
        showcase.classList.toggle('active');
      })
   </script>
        </body>

</asp:Content>
