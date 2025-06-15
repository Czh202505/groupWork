<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="Pages_courses1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <title>课程体系 - 杨氏24式太极拳学习平台</title>
    <link href="../style/courses.css" type="text/css" rel="stylesheet" />
    <link href="../style/homePage.css" type="text/css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <hr />
        <div class="course-container">
            <h1 style="text-align: center">杨氏24式太极拳课程体系</h1>
        </div>
        <div style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BorderStyle="None" GridLines="None" ShowHeader="False" Width="700px" CssClass="course-list" DataKeyNames="ID" Font-Size="X-Large" Font-Bold="True" RowStyle-CssClass="course-item">
                <Columns>
                    <asp:BoundField DataField="name" SortExpression="name" ItemStyle-CssClass="course-title" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Justify" HeaderText="name" ItemStyle-Height="50px">
                    <ItemStyle CssClass="course-title" HorizontalAlign="Justify" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Cancel" OnClick="Button1_Click" Text="开始学习" CssClass="btn-primary" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:videosConnectionString %>" SelectCommand="SELECT [name], [ID] FROM [videoDisplay]" DeleteCommand="DELETE FROM [videoDisplay] WHERE [ID] = @ID" InsertCommand="INSERT INTO [videoDisplay] ([name], [ID]) VALUES (@name, @ID)" UpdateCommand="UPDATE [videoDisplay] SET [name] = @name WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       

</asp:Content>

