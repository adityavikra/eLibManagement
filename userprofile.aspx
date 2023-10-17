<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="WebApplication1.userprofile" %>
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
                                    <img width="150px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Account Status - </span>
                                    <asp:Label ID="Label1" runat="server" class="badge rounded-pill text-bg-success" Text="Label"></asp:Label>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                <label>Date of Birth</label>
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="dd-mm-yyyy" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                <label>Contact Number</label>
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email ID</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="UP" Value="UP" />
                                        <asp:ListItem Text="GJ" Value="GJ" />
                                        <asp:ListItem Text="JK" Value="JK" />
                                        <asp:ListItem Text="UK" Value="UK" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pin Code</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" placeholder="Pin Code" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div> 

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox ID="TextBox7" class="form-control" placeholder="Full Address" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col mx-auto">
                                <center>
                                <span class="badge rounded-pill text-bg-success">Login Credentials</span>
                                    </center>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>User ID</label>
                                    <asp:TextBox ID="TextBox8" class="form-control" placeholder="User ID" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Old Password</label>
                                    <asp:TextBox ID="TextBox9" class="form-control" placeholder="Old Password" runat="server" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                                </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>New Password</label>
                                    <asp:TextBox ID="TextBox10" class="form-control" placeholder="New Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                                
                        </div>
                        <br>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <center>
                                    <asp:Button ID="Button1" class="btn btn-block btn-success btn-lg" runat="server" Text="Update" />
                                        </center>
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
                                        <img width="100px" src="imgs/books.png" />
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Your Issued Books</h4>
                                        <asp:Label ID="Label2" runat="server" Text="Your Issued Books" class="badge rounded-pill text-bg-success"></asp:Label>
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
                                    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered"></asp:GridView>
                                </div>
                            </div>



                            


                        </div>

            </div>

        </div>
    </div>
        </div>



</asp:Content>
