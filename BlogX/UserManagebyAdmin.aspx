<%@ Page Title="" Language="C#" MasterPageFile="~/blog.Master" AutoEventWireup="true" CodeBehind="UserManagebyAdmin.aspx.cs" Inherits="BlogX.UserManagebyAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <head>
        <style>
            body {
                background-image: url('images/UserManageByAdmin.jpg');
            }


            .container-fluid {
                background-color: transparent;
            }

            .card {
                background-color: transparent;
            }
            h4{
                color: #87ceeb;
            }
            

        </style>
        
    </head>
    <body>
    <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>User Details</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="images/AdminManagerIcon.png" />
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>User ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>User Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            
                            <div class="col-md-12">
                                <center>
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" Width="65%" runat="server" Text="Update" OnClick="Button3_Click" />
                                </center>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <center>
                                <asp:Button ID="Button5" class="btn btn-lg btn-block btn-dark" runat="server" PostBackUrl="~/UserManagebyAdminDetails.aspx" Text="Details About User"  />
                                    </center>
                            
                                    </div>
                        </div>


                    </div>
                </div>
                <br/>
                <center>
                <a class="btn btn-lg btn-block btn-success" href="homepage.aspx"><< Back to Home</a> 
                    <br/>
                </center>
                <br/>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Total User List</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BlogXConnectionStringFinal %>" SelectCommand="SELECT [ID], [UserName], [E_Mail], [Mobile_No] FROM [User_LogIn_tbl] ORDER BY [ID]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True"></asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>
    </body>

</asp:Content>
