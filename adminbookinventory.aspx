<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="WebApplication1.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books1.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Book ID</label>
                                <div class="form group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="ID" CssClass="form-control"></asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="Go" class="btn btn-primary" OnClick="Button1_Click"/>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Book Name" ></asp:TextBox>
                                </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                    <label>Language</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" >
                                            <asp:ListItem Text="English" Value="Englsih" />
                                            <asp:ListItem Text="Hindi" Value="Hindi" />
                                            <asp:ListItem Text="Gujrati" Value="Gujarati" />
                                            <asp:ListItem Text="Marathi" Value="Marathi" />
                                        </asp:DropDownList>
                                    </div>
                                    <label>Publisher Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                            <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                            <asp:ListItem Text="Publisher 2" Value="Publisher 2" />                                    
                                        </asp:DropDownList>
                                    </div>
                            </div>
                        
                            <div class="col-md-4">
                                    <label>Author Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" >
                                            <asp:ListItem Text="A1" Value="A1" />
                                            <asp:ListItem Text="A2" Value="A2" />
                                            <asp:ListItem Text="A3" Value="A3" />
                                            <asp:ListItem Text="A4" Value="A4" />
                                        </asp:DropDownList>
                                    </div>
                                    <label>Publish Date</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="dd-mm-yyyy" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>

                                <div class="col-md-4">
                                    <label>Genre</label>
                                    <div class="form-group">
                                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="4" class="form-control">
                                            <asp:ListItem Text="A1" Value="A1" />
                                            <asp:ListItem Text="A2" Value="A2" />
                                            <asp:ListItem Text="A3" Value="A3" />
                                            <asp:ListItem Text="A4" Value="A4" />
                                             <asp:ListItem Text="English" Value="Englsih" />
                                            <asp:ListItem Text="Hindi" Value="Hindi" />
                                            <asp:ListItem Text="Gujrati" Value="Gujarati" />
                                            <asp:ListItem Text="Marathi" Value="Marathi" />
                                            <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                            <asp:ListItem Text="Publisher 2" Value="Publisher 2" />                                    


                                        </asp:ListBox>
                                    </div>
                                </div>


                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Edition</label>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Edition" TextMode="SingleLine" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Book COst(per unit></label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Cost" TextMode="Number" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pages</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Pages" TextMode="Number" ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Actual Stock</label>
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Act Stock" TextMode="SingleLine" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Current Stock</label>
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Current Stock" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Issued Books</label>
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Issued" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Book Description</label>
                                    <asp:TextBox ID="TextBox7" class="form-control" placeholder="Full Address" runat="server" TextMode="MultiLine" Rows="2" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-4">
                                
                                <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-primary btn-block" OnClick="Button2_Click"/>
                                    
                            </div>
                            <div class="col-md-4">
                                
                                <asp:Button ID="Button3" runat="server" Text="Update" class="btn btn-primary btn-block" OnClick="Button3_Click"/>
                                    
                            </div>
                            <div class="col-md-4">
                                
                                <asp:Button ID="Button4" runat="server" Text="Delete" class="btn btn-primary btn-block" OnClick="Button4_Click"/>
                                    
                            </div>
                        </div>

                    </div>
                </div>
                
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                    
                <div class="row">
                    <div class="col">
                        <center>
                            <h4>Book Inventory List</h4>
                        </center>
                    </div>
                </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString3 %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered"></asp:GridView>
                            </div>
                        </div>
                </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
