<%@ Page Title="" Language="C#" MasterPageFile="~/blog.Master" AutoEventWireup="true" CodeBehind="lab_test.aspx.cs" Inherits="BlogX.lab_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
    
    
       
            
            <table>
                <tr>
                    <th colspan="2"> Telephone</th>
                    <th>Grade</th>
                    <th>Student</th>
                </tr>
                <tr>
                    <td> 1234</td>
                    <td>2587</td>

                    <td><center>A+</center></td>
                    <td>Alex</td>
                </tr>
                
                <tr>
                    <td rowspan="2">MSE</td>
                    <td rowspan="2">ME</td>
                    <td>
                        <tr><td>EDGE
                        </td></tr>
                        <tr><td>Flag</td></tr>
                    

                </tr>
                
                

                <%--<tr>
                    <td rowspan="2">MSE</td>
                    <td rowspan="2">ME</td>
                    <tr>
                        <td>EDGE</td>
                        <td>Flag</td>
                    </tr>
                    <td rowspan="3">EEE</td>
                </tr>--%>
            </table>
            
            
            
            <br/>
        <br/>
        <br/>
        <br/>
        
        
        
        <section>
            <div>
            
            <div class="form-group">
                <input id="Text1" type="text" />
                <asp:Button ID="Button1" runat="server" Text="ID" />
            </div>

            <div class="form-group">
               <input id="Text1" type="text" />
                <asp:Button ID="Button2" runat="server" Text="Name" />
            </div>

            <div class="form-group">
               <input id="Text1" type="text" />
                <asp:Button ID="Button3" runat="server" Text="Dept" />
            </div>
         
                <asp:Button ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />

            
            </div>
        </section>
            
            <br/>
        <br/>
        <section>
            <div>
    
                <div class="form-group">
                    <input id="Text1" type="text" />
                    <asp:Button ID="Button5" runat="server" Text="Salary-Id" />
                </div>

                <div class="form-group">
                    <input id="Text1" type="text" />
                    <asp:Button ID="Button6" runat="server" Text="Amount" />
                </div>

                <div class="form-group">
                    <input id="Text1" type="text" />
                    <asp:Button ID="Button7" runat="server" Text="Students" />
                </div>
 
                <asp:Button ID="Button8" runat="server" Text="Go" />

    
            </div>
        </section>
            
    
    

</asp:Content>
