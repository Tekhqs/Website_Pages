<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EPayForm.aspx.cs" Inherits="Website.EPayForm" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>


<html lang="en">
<head runat="server">
    <script src="Scripts/Telerik/js/jquery.min.js"></script>
    <script src="Scripts/Telerik/js/kendo.web.min.js"></script>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/epaymentformcss1.css" rel="stylesheet" />
    <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
    <link href="Content/WebResource.css" rel="stylesheet" />
    <link href="Content/WebResource.axd" rel="stylesheet" />
    <style>
        .progress {
            display: none;
            margin-left: 136px;
            margin-top: 93px;
            width: 632px;
        }

        .RadProgressBar_Default.rpbIndeterminate {
            background-image: url('../../Content/images/WebResource_axd.gif');
        }

        .amex {
            background-image: url('../../Content/images/amex.jpg');
            background-repeat: repeat;
            background-size: auto auto;
        }

        .discover {
            background-image: url('../../Content/images/discover.jpg');
            background-repeat: repeat;
            background-size: auto auto;
        }

        .mastercard {
            background-image: url('../../Content/images/mastercard.jpg');
            background-repeat: repeat;
            background-size: auto auto;
        }

        .visa {
            background-image: url('../../Content/images/visa2.jpg');
            background-repeat: repeat;
            background-size: auto auto;
        }

        .newLabel {
            color: darkgreen;
            font-family: Arial;
            font-weight: bold;
            font-size: 23px;
            position: relative;
            top: 95px;
            left: 193px;
            text-transform: capitalize;
        }

        .emvBtn {
            position: relative;
            top: 68px;
            left: 178px;
            width: 240px;
            height: 45px;
            font-family: Arial;
            font-size: 20px;
            font-weight: bold;
        }

        .newDesign {
            margin-top: 81px;
            margin-left: 43px;
        }
    </style>
</head>
<body>
    <div id="header" class="row container-fluid">
        <div class="col-12 col-md-6">
            <img src="Content/images/logo.png" width="115" height="95" />
            <div id="title">
                <h4>Secure Payment Form<br>
                    <small>TLS Encrypted Connection</small><img src="Content/images/lock.png" class="lock" style="width: 51px; height: 30px;">
                </h4>
            </div>
        </div>
        <div id="contact" class="col-12 col-md-6">
            <p>
                Need help? Contact us at<br>
                <a href="#">(555) 555-5555</a>
            </p>
        </div>
    </div>
    <div class="col-md-4">
        <div id="summary">
            <p class="invoice-title">Invoice Summary</p>
            <div class="invoice-details" id="invoice-number">
                <p class="left">Invoice No.</p>
                <p class="right">
                    <span id="UMinvoice" class="form-control-static" runat="server"></span>
                </p>
            </div>
            <div class="invoice-details" id="invoice-date">
                <p class="left">Invoice Date</p>
                <p class="right">
                    <span id="UMorderdate" class="form-control-static" runat="server"></span>
                </p>
            </div>
            <div class="invoice-details" id="invoice-total">
                <p class="left">Invoice Total</p>
                <p class="right">
                    <span id="UMtotalAmount" class="form-control-static" runat="server"></span>
                </p>
            </div>
            <div class="invoice-details" id="amount-due">
                <p class="left">Amount Due</p>
                <p class="right">
                    <span id="UMamountDue" class="form-control-static" runat="server"></span>
                    USD
                </p>
            </div>
            <div class="invoice-details" id="description">
                <p class="left">Description</p>
                <p class="right">
                    <span id="UMdescription" class="form-control-static" runat="server"></span>
                </p>
            </div>
            <div class="invoice-details" id="view-invoice">
                <p class="left"></p>
                <p class="right">
                    <a id="InvcDet" href="#" runat="server" target="_blank">View Invoice</a>

                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-8 col-lg-8 col-md-8">
        <div style="margin-top: -35px">
            <p class="required-field" align="right"></p>

        </div>
        <form id="EPayFormData" runat="server" method="post">
            <telerik:RadScriptManager runat="server" ID="RadScriptManager1" EnablePageMethods="true">
                <Scripts>
                    <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js"></asp:ScriptReference>
                    <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js"></asp:ScriptReference>
                    <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js"></asp:ScriptReference>
                                  </Scripts>
            </telerik:RadScriptManager>

            <script type="text/javascript">
                $(document).ready(function () {
                    $('#IndeterminateProgressBar').removeClass('rpbHorizontal')

                });

            </script>

            <script type="text/javascript">
                function showProgreeBar() {
                    $('#IndeterminateProgressBar').show()
                }
            </script>

            <div id="RadAjaxLoadingPanel1" class="RadAjax RadAjax_Bootstrap" style="display: none;">
                <div class="raDiv">
                </div>
                <div class="raColor raTransp">
                </div>
            </div>
            <%--  EnableEmbeddedSkins=false Skin="Bootstrap"--%>
            <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip1" MultiPageID="RadMultiPage1" SelectedIndex="0">
                <Tabs>
                    <telerik:RadTab Text="Pay By Credit Card" Width="200px"></telerik:RadTab>
                    <telerik:RadTab Text="Pay By Check" Width="200px"></telerik:RadTab>
                    <telerik:RadTab Text="Pay By Device" Width="200px"></telerik:RadTab>
                </Tabs>
            </telerik:RadTabStrip>
            <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0" CssClass="outerMultiPage">
                <telerik:RadPageView runat="server" ID="PageView1">
                    <div class="RadMultiPage RadMultiPage_Bootstrap">
                        <div id="RadPageViewCC" class="rmpView">

                            <div class="RadAjaxPanel" id="RadAjaxPanel1Panel" style="width: 100%;">
                                <div id="RadAjaxPanel1" style="">

                                    <div>
                                        <p class="required-field" align="right">* required field</p>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group col-md-12">
                                            <div class="card-row"><span class="amex"></span><span class="discover"></span><span class="mastercard"></span><span class="visa"></span></div>
                                            <label for="UMcard">Card Number *</label>
                                         
                                            <input name="CardNum" type="text" id="UMcard" class="form-control" maxlength="255" runat="server"><span id="RequiredFieldValidator5" style="color: Red; display: none;">Required field.</span>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="UMname">Name on Card *</label>
                                            <input name="CustName" type="text" id="UMname" class="null card-image form-control" runat="server"><span id="RequiredFieldValidator2" style="color: Red; display: none;">Required field.</span>
                                        </div>
                                        <div class="expiry-date-group form-group col-md-3">
                                            <label for="ccexpirymonth">Month</label>
                                            <telerik:RadComboBox RenderMode="Lightweight" ID="RadComboBoxDealer" runat="server" Width="75px"
                                                MarkFirstMatch="true" ValidationGroup="validationGroup">
                                                <DefaultItem Text="MM" Value="MM" />
                                                <Items>
                                                    <telerik:RadComboBoxItem Text="MM" Value="MM" />
                                                    <telerik:RadComboBoxItem Text="01" Value="01" />
                                                    <telerik:RadComboBoxItem Text="02" Value="02" />
                                                    <telerik:RadComboBoxItem Text="03" Value="03" />
                                                    <telerik:RadComboBoxItem Text="04" Value="04" />
                                                    <telerik:RadComboBoxItem Text="05" Value="05" />
                                                    <telerik:RadComboBoxItem Text="06" Value="06" />
                                                    <telerik:RadComboBoxItem Text="07" Value="07" />
                                                    <telerik:RadComboBoxItem Text="08" Value="08" />
                                                    <telerik:RadComboBoxItem Text="09" Value="09" />
                                                    <telerik:RadComboBoxItem Text="10" Value="10" />
                                                    <telerik:RadComboBoxItem Text="11" Value="11" />
                                                    <telerik:RadComboBoxItem Text="12" Value="12" />
                                                </Items>
                                            </telerik:RadComboBox>
                                        </div>
                                        <div class="expiry-date-group form-group col-md-3">
                                            <label for="ccexpiryyear">Year</label>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" >
                                             <%--   ConnectionString="<%$ ConnectionStrings:Payment_ConnectionString %>"
                                                SelectCommand="SELECT [YearId], [Year] FROM [ExpiryYear] "--%>
                                            </asp:SqlDataSource>
                                            <telerik:RadComboBox RenderMode="Lightweight" ID="RadComboBox1" runat="server" Width="75px"
                                                Filter="Contains" MarkFirstMatch="true" ChangeTextOnKeyBoardNavigation="false"
                                                DataSourceID="SqlDataSource1" DataTextField="Year" DataValueField="Year">
                                            </telerik:RadComboBox>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server">
                                            <%--     ConnectionString="<%$ ConnectionStrings:Payment_ConnectionString %>"
                                                SelectCommand="SELECT [YearId], [Year] FROM [ExpiryYear] "--%>
                                            </asp:SqlDataSource>
                                        </div>
                                        <div class="security-code-group form-group col-md-6">
                                            <label for="SecurityCode">
                                                Security Code *
                                        <img src="Content/images/questionmark.png" alt="Question Mark" id="question" width="18px" height="18px"></label><div class="input-container">
                                            <input name="SecurityCode" type="text" id="SecurityCode" class="form-control" runat="server">
                                        </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group col-md-12">
                                            <label for="UMstreet">Card Billing Address *</label>
                                            <input name="CardBillAddress" type="text" id="UMstreet" class="form-control" maxlength="255" runat="server"><span id="RequiredFieldValidator3" style="color: Red; display: none;">Required field.</span>
                                        </div>
                                        <div class="city-group form-group col-md-6">
                                            <label for="UMcity">City *</label>
                                            <input name="CityName" type="text" id="UMcity" class="form-control" maxlength="15" runat="server">
                                        </div>
                                        <div class="state-group form-group">
                                            <label for="UMstate">State *</label>
                                            <div class="input-container">
                                                <select id="ddlState" name="ddlState" class="form-control custom-select" runat="server" style="width: 184px">
                                                </select>
                                            </div>

                                            <%--<telerik:RadDropDownList RenderMode="Lightweight" ID="RadDropDownStates" runat="server" DropDownHeight="200px" Width="185px"
                                                DefaultMessage="Select State" DropDownWidth="185px"
                                                DataValueField="StateId" DataTextField="StateName" DataSourceID="SqlDataSource3" MarkFirstMatch="true">
                                            </telerik:RadDropDownList>
                                               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Payment_ConnectionString %>"
                                                SelectCommand="SELECT [StateId], [StateName] FROM [State] "></asp:SqlDataSource>--%>
                                        </div>
                                        <div class="zip-code-group form-group col-md-12">
                                            <label for="UMzip">ZIP Code *</label>
                                            <div class="input-container">
                                                <input name="zip" type="text" id="UMzip" class="form-control" maxlength="10" runat="server"><span id="RequiredFieldValidator4" style="color: Red; display: none;">Required field.</span>
                                            </div>
                                        </div>
                                        <div class="terms-statement col-md-12">
                                            <input id="terms-conditionscc" type="checkbox" checked=""><label for="terms-conditionscc">I agree to the <a href="#">Terms &amp; Conditions</a></label>
                                        </div>
                                        <div class="zip-code-group form-group col-md-12">
                                            <button name="TransactionAmount" id="PayNow" value="122.13" class="btn btn-block btn-success submit-button" type="submit" validaterequestmode="Enabled" onserverclick="PayByCard" runat="server" formmethod="post">
                                                <span class="submit-button-lock"></span>
                                                <span id="paybycctext" class="align-middle">PAY $122.13 NOW</span>
                                            </button>
                                        </div>
                                        <div class="zip-code-group form-group col-md-12">
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <footer class="page-footer font-small blue">

                        <!-- Copyright -->
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <div class="footer-copyright text-center py-3">
                            © 2018 Copyright  |
        <a href="https://www.ebizcharge.com/">Payments securely processed by EBizCharge</a>
                        </div>
                        <!-- Copyright -->

                    </footer>
                </telerik:RadPageView>
                <telerik:RadPageView runat="server" ID="RadPageView4">
                    <asp:UpdatePanel ID="updatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="rmpView">
                                <div class="col-md-6">
                                    <div class="form-group col-md-12">
                                        <div class="card-row">
                                            <p class="required-field" align="right">* required field</p>
                                        </div>
                                        <label for="AccountHolder">Account Holder Name *</label>
                                        <input id="AccountHolder" name="AccountHolder" runat="server" class="form-control" type="text">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="CreditCardNumber">Bank Routing Number *</label>
                                        <input id="BankRouteNumber" runat="server" class="null card-image form-control" type="text" runat="server">
                                    </div>
                                    <div class="expiry-date-group form-group col-md-12">
                                        <label for="expiry-date">Bank Account Number *</label>
                                        <input id="BankAccNum" runat="server" class="form-control" type="text">
                                    </div>
                                    <div class="account-type-group form-group col-md-12">
                                        <label for="account-type">Account Type *</label>
                                        <select id="accounttype" class="form-control col-sm-1" runat="server">
                                            <option>Checking</option>
                                            <option>Savings</option>
                                        </select>
                                    </div>
                                    <div class="terms-statement col-md-12">
                                        <input id="terms-conditions" type="checkbox" checked=""><label for="terms-conditions">I agree to the <a heref="#">Terms &amp; Conditions</a></label>
                                    </div>
                                    <%--<input type="text" name="CheckTransAmount" id="CheckTransAmount" style="display:none" value="59.00"/>--%>
                                    <button id="btnPayByCheck" name="CheckTransAmount" value="59.00" class="btn btn-block btn-success submit-button" type="submit" runat="server" onserverclick="PayByCheck"><span class="submit-button-lock"></span><span class="align-middle">PAY $59.00 NOW</span></button>
                                </div>



                                <input id="RadMultiPage1_ClientState" name="RadMultiPage1_ClientState" type="hidden" autocomplete="off" value="{&quot;selectedIndex&quot;:0,&quot;changeLog&quot;:[]}">
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnPayByCheck" EventName="serverclick" />
                        </Triggers>
                    </asp:UpdatePanel>

                </telerik:RadPageView>

                <telerik:RadPageView runat="server" ID="RadPageView1">
                    <asp:UpdatePanel ID="updatePanel3" runat="server">
                        <ContentTemplate>
                            <div class="col-md-12">
                                <button id="devcPro" type="button" class="btn btn-primary" style="position: relative; top: 68px; left: 178px; width: 240px; height: 45px; font-family: Arial; font-size: 20px; font-weight: bold;" runat="server" onserverclick="StartProcess">Start Processing</button>
                                <button id="cnTrans" type="button" class="btn btn-danger" style="position: relative; top: 68px; left: 178px; width: 240px; height: 45px; font-family: Arial; font-size: 20px; font-weight: bold;" runat="server" onserverclick="CancelDeviceTransaction">Cancel Transaction</button>
                           
                            </div>
                            <telerik:RadProgressBar RenderMode="Lightweight" runat="server" ID="IndeterminateProgressBar" BarType="Chunk" Indeterminate="true" CssClass="progress">
                            </telerik:RadProgressBar>
                            <label id="lblDeviceResult" runat="server" style="color: darkred; font-family: Arial; font-weight: bold; font-size: 23px; position: absolute; top: 247px; left: 208px; text-transform: capitalize"></label>
                            <label id="lblDeviceResultSuccess" runat="server" style="color: darkgreen; font-family: Arial; font-weight: bold; font-size: 23px; position: absolute; top: 283px; left: 178px; text-transform: capitalize"></label>
                             <label id="Label1" runat="server" style="color: darkmagenta; font-family: Arial; font-weight: bold; font-size: 23px; position: absolute; top: 283px; left: 178px; text-transform: capitalize"></label>

                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="devcPro" EventName="serverclick" />
                        </Triggers>
                    </asp:UpdatePanel>

                    <label for="UMDvc" runat="server" id="UMDvc">Devices *</label>
                    <div class="input-container">
                        <select id="ddlDevices" name="ddlDevices" class="form-control custom-select" runat="server" style="width: 184px">
                        </select>
                    </div>


                </telerik:RadPageView>
            </telerik:RadMultiPage>

            <script type="text/javascript">
                $('#devcPro').click(function () {

                    $('#devcPro').prop("disabled", "true")
                    $('#IndeterminateProgressBar').show();
                    //$('#devcPro').hide();
                    $('#cnTrans').show();
                });
                $('#cnTrans').click(function () {

                    $('#cnTrans').prop("disabled", "true")
                    //$('#cnTrans').hide();
                    $('#devcPro').show();
                });
            </script>
        </form>
    </div>

</body>
</html>
