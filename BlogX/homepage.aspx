<%@ Page Title="" Language="C#" MasterPageFile="~/blog.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="BlogX.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="images/home-page.jpg" class="img-fluid" />

    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2></h2>
                       <!-- <p><b>Our 3 Primary Features</b></p> -->
                    </center>
                </div>

            </div>
        </div>
        <div class="container-fluid">
             <div class="row">
                
                 <asp:Button ID="Button1" class="btn btn-lg btn-block btn-dark" runat="server" Font-Size="100px" Text="Click Here to See Blogs" Height="300" Width="5000" OnClick="Button1_Click" />
               


             </div>
        </div>


    </section>
   
    <section>
        <img src="images/james-wheeler-InOgamK2cuY-unsplash.png" class="img-fluid" />
    </section>
    <section>
        
        
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2><b>To follow us..</b></h2>
                    </center>
                </div>

            </div>
        </div>
        

    </section>
    
</asp:Content>

