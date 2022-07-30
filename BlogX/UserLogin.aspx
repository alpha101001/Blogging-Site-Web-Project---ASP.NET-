<%@ Page Title="" Language="C#" MasterPageFile="~/blog.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="BlogX.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <head>

        <style>

            @import url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap');
*
{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
header
{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  padding: 40px 100px;
  z-index: 1000;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
header .logo
{
  color: #fff;
  text-transform: uppercase;
  cursor: pointer;
}


.showcase
{
  position: absolute;
  right: 0;
  width: 100%;
  min-height: 100vh;
  padding: 100px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  background: #111;
  transition: 0.5s;
  z-index: 2;
}
.showcase.active
{
  right: 300px;
}

.showcase video
{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  opacity: 0.8;
}
.overlay
{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #03a9f4;
  mix-blend-mode: overlay;
}
.text
{
  position: relative;
  z-index: 10;
}

.text h2
{
  font-size: 5em;
  font-weight: 800;
  color: #fff;
  line-height: 1em;
  text-transform: uppercase;
}
.text h3
{
  font-size: 4em;
  font-weight: 700;
  color: #fff;
  line-height: 1em;
  text-transform: uppercase;
}



@media (max-width: 991px)
{
  .showcase,
  .showcase header
  {
    padding: 40px;
  }
  .text h2
  {
    font-size: 3em;
  }
  .text h3
  {
    font-size: 2em;
  }
}


.container-fluid {
    background-color: transparent;
}


h4{
    color: rgb(225, 48, 48);
}

h6{
    color: rgb(37, 220, 220);
}
.footerlinks {
    color: #ffffff;
    text-decoration: none !important;
}

.footerlinks:hover {
        color: #ffd800;
    }

#footer1 {
    background: #762b00;
}

#footer2 {
    background: #531f00;
}



        </style>


    </head>
    <body>
     <section class="showcase">
    <header>
      <h2 class="logo">😈 User LogIn ✌️✌️</h2>
     
    </header>

         
    <video src="images/video.mp4" muted loop autoplay></video>
    <div class="overlay"></div>
    <div class="text container-fluid">
        <div class="container-fluid">



    <div class="row">
        <div class="col-md">
            <center>
    <asp:TextBox ID="TextBox1" type="text" name="UserName" Height="55px" CssClass="box bg-opacity-75 bg-dark text-bg-success" placeholder="Enter User ID" runat="server" Width="75%"></asp:TextBox>
            </center>
       </div>
            </div>
    <br />
    <br />
    <br />
    <br />

    <div class="row">
        <div class="col-md">
            <center>
    <asp:TextBox ID="TextBox2" Height="55px" CssClass="box bg-opacity-75 bg-dark text-bg-success" runat="server" Width="75%" type="password" name="password"  placeholder="Enter Password" runat="server"></asp:TextBox>
            </center>
        </div>
        </div>
    <br />
    <br />
    <br />
       
    <div class="row">
        <div class="col-md">
            <center>
                <asp:Button ID="submit" CssClass="box bg-opacity-75 bg-dark text-bg-success" Height="55px" Width="40%" runat="server" Text="👉 Ready To Log IN 😏💀" OnClick="submit_Click" />
                </center>
        </div>
        
        
        </div>
            <br />
            <br />
            <br />
            <div class="row">
        
                <div class="col=md">
                    <center>
                        <asp:CheckBox ID="CheckBox1" CssClass="box bg-opacity-75 bg-dark text-bg-success" Height="55px" Width="40%" Text="Remember Me??😏"  runat="server" />

                    </center>
            

                </div>
        
            </div>    

            <br />
            <br />
            <br />


             <div class="row">
     <div class="col-md">
         <center>
             <asp:Button ID="Button1" CssClass="box bg-opacity-75 bg-dark text-bg-success" Height="55px" Width="40%" runat="server" Text="Not a User??😥😥 Sign Up 👍👍" OnClick="Button1_Click" />
             </center>
     </div>
     </div>

</div>



      
    </div>
    
  </section>
 
  
   
        </body></asp:Content>
