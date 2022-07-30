<%@ Page Title="" Language="C#" MasterPageFile="~/blog.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="BlogX.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <body>
     <link href="signup.css" rel="stylesheet" />
<div class="container-fluid">
   <div class="row">
      <div class="col-md">
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col">
                     <center>
                         

                         <asp:Image ID="Image1" runat="server" width="100px" src="images/sing%20up%20icon.png" />
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <center>
                        <h4>Profile</h4>
                         <span>Account Status </span>
                         
                     </center>
                  </div>
               </div>
               
               <div class="row">
                  <div class="col-md-6">
                     <label>Full Name</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <label>Date of Birth</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" ></asp:TextBox>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-6">
                     <label>Contact No</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <label>E-mail ID</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-4">
                     <label>Division</label>
                     <div class="form-group">
                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                           <asp:ListItem Text="Select" Value="select" />
                           <asp:ListItem Text="Dhaka" Value="Dhaka" />
                           <asp:ListItem Text="Chittagong" Value="Chittagong" />
                           <asp:ListItem Text="Khulna" Value="Khulna" />
                           <asp:ListItem Text="Rajshahi" Value="Rajshahi" />
                           <asp:ListItem Text="Rangpur" Value="Rangpur" />
                           <asp:ListItem Text="Sylhet" Value="Sylhet" />
                           <asp:ListItem Text="Barishal" Value="Barishal" />
                           
                        </asp:DropDownList>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <label>City</label>
                     <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <label>Pincode</label>
                     <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                     </div>
                  </div>
               </div>
               
               <div class="row">
                  <div class="col">
                     <center>
                        <span class="badge badge-pill badge-info">Login Credentials</span>
                     </center>
                  </div>
               </div>
               <div class="row">
                   <center>
                  <div class="col-md-4">
                     <label>Member ID</label>
                     <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
                   </center>
                  
                   
               </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />

               <div class="row">
                  <div class="col">
                  </div>
               </div>
            </div>
         </div>
         <a href="homepage.aspx"><< Back to Home</a><br><br>
      </div>
       
   </div>
</div>
</body>
</asp:Content>
