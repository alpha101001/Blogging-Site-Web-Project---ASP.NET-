<%@ Page Title="" Language="C#" MasterPageFile="~/blog.Master" AutoEventWireup="true" CodeBehind="BlogHome.aspx.cs" Inherits="BlogX.BlogHome" %>
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
            background-image: url('images/sgfJNp.jpg');
        }


    </style>
   
    <section>
   <h2><b>Create new blog post</b></h2>

        
        <div class="container-fluid">
            <div class="row ">
    
    <asp:Label ID="Label1" runat="server" Text="Label" ><h4>Title</h4></asp:Label>
    
    <asp:TextBox ID="TextBox1" runat="server" CssClass="bg-opacity-50 bg-info"  placeholder="The headline goes here..." class="form-control" TextMode="MultiLine" Rows="2"></asp:TextBox>
            </div>
    <br />
        <div class="row">
    <asp:Label ID="Label2" runat="server" Text="Label" ><h4>Tags</h4></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="bg-opacity-50 bg-info"  placeholder="Separate each tag using a comma ','." class="form-control" TextMode="MultiLine" Rows="3"/>
    
        </div>
    <br />
        <div class="row">
    <asp:Label ID="Label3" runat="server"  Text="Label" ><h4>Content</h4></asp:Label>
    <asp:TextBox ID="TextBox3"  runat="server" CssClass="bg-opacity-50 bg-info"  placeholder="What would you like to write?" class="form-control" TextMode="MultiLine" Rows="10"/>
    <br />
        </div>
        </div>
        <center>
            <br/>
        <asp:Button ID="Button2" type="submit" class="btn btn-lg btn-block btn-dark" value="Post" runat="server" Height="100" Width="150" Text="Post" OnClick="Button2_Click" />
        </center>
        <br />
    <br />
    
        

    
    </section>
  
    <br/>
    <br/>
    <br/>
    <section>
        <div class="container-fluid">
            
        

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BlogXConnectionStringFinal %>" SelectCommand="SELECT [User_ID], [Tag], [Post_Title], [Post_Body] FROM [Post_tbl] ORDER BY [Time] DESC" ></asp:SqlDataSource>
        
            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="User_ID" HeaderText="User_Name" ReadOnly="True"  SortExpression="User_ID" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="container-fluid bg-secondary bg-opacity-50 flex-fill">
                                <div class="row">
                                    <div class="col-lg">
                                        <asp:Label ID="Label4" runat="server" Text=<%# Eval("Post_Title") %> Font-Bold="True" Font-Size="X-Large"></asp:Label>

                                    </div>
                                <div class="row">
                                    <div class="col-12">
                                        Post ->
                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text='<%# Eval("Post_Body") %>'></asp:Label>


                                </div>
                            </div>

                        </ItemTemplate>

                    </asp:TemplateField>
                
            </Columns>
        
        </asp:GridView>

        </div>
        <center>
    <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-block btn-success" PostBackUrl="~/homepage.aspx" Text="HOME" Height="100" Width="150" OnClick="Button1_Click" />
        </center>
    </section>
        
</asp:Content>
