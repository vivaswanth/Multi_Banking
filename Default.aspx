<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:content id="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="7000">
        <div class="carousel-inner" role="listbox">
            <div class="overlay"></div>
            <div class="item active w3-display-container">
                <img src="Assets/images/b8.jpg" style="width: 100%; height: 400px" alt="ASP.NET" class="img-responsive" />
                <div class="w3-display-left w3-container w3-text-white" style="margin-top: 5%; border-left: 5px solid yellow">
                    <div class="w3-margin">
                        <h1>Multi Banking Transaction Systems</h1>
                        <h4>A Common Platform for all your Banking Needs</h4>
                    </div>
                </div>
            </div>
            <div class="item w3-display-container">
                <img src="Assets/images/p6.jpg" style="width: 100%; height: 400px;" alt="Visual Studio" class="img-responsive" />
                <div class="w3-display-left w3-container w3-text-white" style="margin-top: 5%; border-left: 5px solid yellow">
                    <div class="w3-margin">
                        <h1>Multi Banking Transaction Systems</h1>
                        <h4>A Common Platform for all your Banking Needs</h4>
                    </div>
                </div>
            </div>
            <div class="item w3-display-container">
                <img src="Assets/images/p7.jpg" style="width: 100%; height: 400px" alt="Package Management" class="img-responsive" />
                <div class="w3-display-left w3-container w3-text-white" style="margin-top: 5%; border-left: 5px solid yellow">
                    <div class="w3-margin">
                        <h1>Multi Banking Transaction Systems</h1>
                        <h4>A Common Platform for all your Banking Needs</h4>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="sr-only">Next</span>
        </a>
    </div>

    <a  name="services"></a>
    <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Covers all over the world:<br>Many Banks Integrated</h2>
                    <p class="lead">A special thanks to all the banks for providing the oppurtunity to come together into one platform</p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="../Assets/images/b4.png" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

    <div class="content-section-b">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Choose from wide range of banks Including private and government</h2>
                    <p class="lead">Now manage inter bank transfers and transactions in a safe, secure and hastle free gateway, with a clean and simple Interface.</p>
                </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                    <img class="img-responsive" src="../Assets/images/b6.jpg" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-b -->

    <div class="content-section-a">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Our Products and Services</h2>
                    <p class="lead">Inter-Banking Solutions, Online Payments and transfers, Transactions and more.</p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="../Assets/images/b5.png" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

    <a  name="contact"></a>
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <h2>Create an Account for Free,<br>Get Started.</h2>
                </div>
                <div class="col-lg-5">
                    <ul class="list-inline banner-social-buttons">
                        <li>
                            <a href="ClientLogin.aspx" class="btn w3-blue btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Login Here</span></a>
                        </li>
                        <li>
                            <a href="BankAdminLogin.aspx" class="btn w3-blue btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Bank Admins</span></a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.banner -->

        
</asp:content>