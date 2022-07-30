<%@ Page Title="" Language="C#" MasterPageFile="~/blog.Master" AutoEventWireup="true" CodeBehind="PostInventory.aspx.cs" Inherits="BlogX.PostInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-image: url('images/UserManageByAdmin.jpg');
        }

    </style>
    

    <body>
        
    <div class="container-fluid">
    <br />
    <br />
    <div class="row">

        <div class="container-fluid">
    


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BlogXConnectionStringFinal %>" SelectCommand="SELECT [User_ID], [Tag], [Post_Title], [Post_Body] FROM [Post_tbl] ORDER BY [Time] DESC" ></asp:SqlDataSource>

            <asp:GridView class="table table-striped table-bordered " BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"  ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    
                    

                    <%--<asp:BoundField DataField="User_ID" HeaderText="User_Name"  ReadOnly="True"  SortExpression="User_ID" />--%>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-1 text-danger">
                                        <asp:Label ID="Label1" runat="server" Text=<%# Eval("User_ID") %> Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                    </div>
                                    <div class="col-md-11">
                                        <div class="container-fluid text-white bg-opacity-50 flex-fill">
                                            <div class="row">
                                                <div class="col-lg">
                                                    Title ->
                                                    <asp:Label ID="Label4" runat="server" Text=<%# Eval("Post_Title") %> Font-Bold="True" Font-Size="X-Large"></asp:Label>

                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        Post ->
                                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text='<%# Eval("Post_Body") %>'></asp:Label>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </ItemTemplate>

                    </asp:TemplateField>
        
                </Columns>

            </asp:GridView>

        </div>
</div>
    <div class="row">
        <center>
            <asp:Button ID="Button1" class="btn btn-lg btn-block btn-dark" runat="server" Font-Size="30px" Text="HOME" Height="100" Width="200"  />
           
            </center>
    </div>
</div>
    </body>
</asp:Content>
