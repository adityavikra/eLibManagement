<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="WebApplication1.membermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready( function() {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).datatable();});

    </script>
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
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="ID" CssClass="form-control"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton4" runat="server" class="btm btn-primary m-1" Text="Go" OnClick="Button4_Click"></asp:LinkButton>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-success m-1" Text="A" OnClick="Button1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-warning m-1" Text="P" OnClick="Button2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-danger m-1" Text="D" OnClick="Button3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>

                                        </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="dd-mm-yyyy" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Contact Number</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Email ID</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox ID="TextBox7" class="form-control" placeholder="Full Address" runat="server" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-8 mx-auto">
                                <asp:Button ID="Button2" runat="server" Text="Delete User Permanently" class="btn btn-primary btn-block btn-lg" OnClick="Button2_Click1" />
                            </div>
                        </div>

                    </div>
                </div>
                <a href="homepage.aspx">Back to Home</a>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                    
                <div class="row">
                    <div class="col">
                        <center>
                            <h4>Member List</h4>
                        </center>
                    </div>
                </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Full Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
