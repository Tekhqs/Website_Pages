<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecurringForm.aspx.cs" Inherits="Website.Forms.Form1" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/world.css" rel="stylesheet" />
    <link href="../kendo/Skins/BootstrapLite/TabStrip.Bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManagerForm1" runat="server"></asp:ScriptManager>
        <div>
            <div class="container-fluid mt-3">

                <div class="row pt-5 pl-3">
                    <div class="col-12">
                        <%--<telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0" CssClass="outerMultiPage">--%>
                        <div class="row pl-3">
                            <div class="col-6">
                                <h3>Manage Recurring Payment</h3>
                            </div>
                            <div class="col-5">
                                <div class="float-right">
                                    <label for="RadDropDownList1">Status</label>
                                    <telerik:RadDropDownList ID="RadDropDownList3" runat="server"
                                        Skin="Bootstrap" Width="250px">
                                        <Items>
                                            <telerik:DropDownListItem Text="Active Payment" Value="0" Selected="true" />
                                            <telerik:DropDownListItem Text="Active Suspended" Value="0" />
                                            <telerik:DropDownListItem Text="Canceled Payment" Value="0" />
                                        </Items>
                                    </telerik:RadDropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="row pt-5 pl-3">
                            <div class="col-12">
                                By opting into this automatic payment, your selected payment method will be charged the full amount that appears on
                                        your monthly statement on the day of your choosing each month. You can change your payment day or update your selected
                                        payment method at any time. More legal text goes here describing the terms and conditions and any other pertinent 
                                        information can be displayed here.
                            </div>
                        </div>

                        <div class="row pt-5 pl-3">
                            <div class="col-12">
                                <div class="col-4 col-lg-3 col-xl-2">
                                    <div class="form-group">
                                        <label for="RadDropDownList1">Monthly Payment Day*</label>
                                        <telerik:RadDropDownList ID="RadDropDownList1" runat="server"
                                            Skin="Bootstrap" Width="250px">
                                            <Items>
                                                <telerik:DropDownListItem Text="Choose a day" Value="0" Selected="true" />
                                                <telerik:DropDownListItem Text="5th day of month" Value="1" />
                                                <telerik:DropDownListItem Text="6th day of month" Value="2" />
                                                <telerik:DropDownListItem Text="7th day of month" Value="3" />
                                                <telerik:DropDownListItem Text="8th day of month" Value="4" />
                                                <telerik:DropDownListItem Text="9th day of month" Value="5" />
                                                <telerik:DropDownListItem Text="10th day of month" Value="6" />
                                                <telerik:DropDownListItem Text="11th day of month" Value="7" />
                                                <telerik:DropDownListItem Text="12th day of month" Value="8" />
                                                <telerik:DropDownListItem Text="13th day of month" Value="9" />
                                                <telerik:DropDownListItem Text="14th day of month" Value="10" />
                                            </Items>
                                        </telerik:RadDropDownList>
                                    </div>
                                    <asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator2"
                                        runat="server"
                                        Display="Dynamic"
                                        ControlToValidate="RadDropDownList1"
                                        ErrorMessage="Account Type is required" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row pt-5 pl-3">
                            <div class="col-12">
                                Please note that only days 5-20 each month are available for selection. This is because we need time to calculate your monthly statement and receive your payment.
                            </div>
                        </div>

                        <div class="row pt-5 pl-3">
                            <div class="col-12">
                                <telerik:RadCheckBox ID="RadCheckBox1" runat="server" Text="I agree to the above terms and condition" Skin="Bootstrap" Font-Size="Medium"></telerik:RadCheckBox>
                            </div>
                        </div>

                        <div class="row pt-5 pl-3 pb-4">
                            <div class="col-12">
                                Select a payment method
                            </div>
                        </div>
                        <div class="row pt-5 pl-3 pb-5" id="id-PaymentMethodsDiv">
                            <div class="col-12">
                                <span>
                                    <img src="../Content/Images/visa.jpg" width="50px" /></span>&nbsp;&nbsp;&nbsp;&nbsp;     
                                <span>ending in 1111</span>&nbsp;&nbsp;&nbsp;&nbsp;     
                                <span>Exp. 03/23</span>&nbsp;&nbsp;&nbsp;&nbsp;     
                                <span>
                                    <a href="#" onclick="fnShowPaymentMethod()">Change current payment method</a>
                                </span>
                            </div>
                            <div class="col-12 pt-5">
                                <div class="col-5 col-lg-3">
                                    <telerik:RadButton ID="btnSaveRP" runat="server" Text="Save Recurring Payment" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" TabIndex="11" Width="100%"></telerik:RadButton>
                                </div>
                            </div>
                        </div>
                        <div id="id-PaymentMethods" style="display: none;">
                            <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip3" MultiPageID="RadMultiPageCC" SelectedIndex="0">


                                <Tabs>
                                    <telerik:RadTab Text="Pay By Credit Card" Width="200px"></telerik:RadTab>
                                    <telerik:RadTab Text="Pay by ACH" Width="200px"></telerik:RadTab>
                                </Tabs>
                            </telerik:RadTabStrip>
                            <telerik:RadMultiPage runat="server" ID="RadMultiPageCC" SelectedIndex="0" CssClass="outerMultiPage">
                                <telerik:RadPageView runat="server" ID="RadPageView5">
                                    <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip4" CssClass="pt-4 pl-4" MultiPageID="RadMultiPage4" SelectedIndex="0">
                                        <Tabs>
                                            <telerik:RadTab Text="Saved Credit Card" Width="200px"></telerik:RadTab>
                                            <telerik:RadTab Text="New Credit Card" Width="200px"></telerik:RadTab>
                                        </Tabs>
                                    </telerik:RadTabStrip>
                                    <telerik:RadMultiPage runat="server" ID="RadMultiPage4" SelectedIndex="0" CssClass="outerMultiPage">
                                        <telerik:RadPageView runat="server" ID="RadPageView9">
                                            <div id="SavedCardForm" class="editibleCell ddlApp pt-5">
                                                <div class="row">
                                                    <div class="col-sm-3 text-right ebiz-label pt-2">Payment Method *</div>
                                                    <div class="col-6 col-lg-4 col-xl-3">
                                                        <telerik:RadDropDownList ID="RadDropDownList2" runat="server" Skin="Bootstrap" Width="250px" TabIndex="1">
                                                            <Items>
                                                                <telerik:DropDownListItem Text="Select Payment Method" Value="0" Selected="true" />
                                                            </Items>
                                                        </telerik:RadDropDownList>
                                                    </div>
                                                </div>
                                                <div class="row cvvField pt-3">
                                                    <div class="col-sm-3 text-right ebiz-label pt-2">Card ID (CVV2/CID) Number</div>
                                                    <div class="col-sm-3">
                                                        <telerik:RadTextBox ID="txtSavedCVV" runat="server" Skin="Bootstrap" TabIndex="2"></telerik:RadTextBox>
                                                    </div>
                                                </div>
                                                <div class="row pt-3">
                                                    <div class="col-sm-3 text-right ebiz-label pt-2"></div>
                                                    <div class="col-sm-4 d-inline-flex">
                                                        <label class="ebiz-label">
                                                            <telerik:RadCheckBox ID="chkReceipt" runat="server" Text="Send Receipt" TabIndex="3" Skin="Bootstrap" Font-Size="14px"></telerik:RadCheckBox>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="row divRecurringPaymentButton pt-3">
                                                    <div class="offset-3 col-3 pb-5">
                                                        <telerik:RadButton ID="btnProcessThroughSavedCard" runat="server" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" Width="200px" Text="Process" TabIndex="4"></telerik:RadButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </telerik:RadPageView>
                                        <telerik:RadPageView runat="server" ID="RadPageView10">
                                                <%--New Credit Card Div--%>
                                                <div class="row">
                                                    <div class="col-12 col-lg-10">
                                                        <telerik:RadAjaxPanel runat="server">
                                                            <div id="form6" class="pt-5 pl-5">
                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-lg-5">
                                                                        <label class="ebiz-label">Card Number *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="txtCardNumber" runat="server" Skin="Bootstrap" TabIndex="1" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="TextBoxRequiredFieldValidatorCardNumber"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtCardNumber"
                                                                            ErrorMessage="Card Number is required" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-lg-5 offset-lg-1">
                                                                        <label class="ebiz-label">Billing Address *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="txtBillingAddress" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidatorBillingAddress"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtBillingAddress"
                                                                            ErrorMessage="Billing Address is required" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-lg-5">
                                                                        <label class="ebiz-label">Name on Card *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="txtCardHolderName" runat="server" Skin="Bootstrap" TabIndex="2" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidatorCardHolderName"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtCardHolderName"
                                                                            ErrorMessage="Card Holder Name is required" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-lg-5 offset-lg-1">
                                                                        <div class="form-group col-8 pl-0 d-inline-block">
                                                                            <label class="ebiz-label">Zip Code / Postal Code *</label>
                                                                            <div class="col-12 pl-0">
                                                                                <telerik:RadTextBox ID="txtZipCode" runat="server" Skin="Bootstrap" TabIndex="9" Width="100%"></telerik:RadTextBox>
                                                                            </div>
                                                                            <asp:RequiredFieldValidator
                                                                                ID="RequiredFieldValidatorZipCode"
                                                                                runat="server"
                                                                                Display="Dynamic"
                                                                                ControlToValidate="txtZipCode"
                                                                                ErrorMessage="Zip Code is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                        </div>
                                                                        <div class="form-group col-4 float-right pt-4">
                                                                            <telerik:RadCheckBox ID="chkAllowSaveCC" runat="server" Text="Save card" Skin="Bootstrap" Font-Size="14px" TabIndex="10"></telerik:RadCheckBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-6 col-lg-3">
                                                                        <label class="row pl-3 ebiz-label">Expiration Date *</label>
                                                                        <div class="d-flex">
                                                                            <div class="col-6 pl-0">
                                                                                <telerik:RadDropDownList ID="dropDownMonth" runat="server"
                                                                                    Skin="Bootstrap" Width="100%">
                                                                                    <Items>
                                                                                        <telerik:DropDownListItem Text="MM" Value="MM" Selected="true" />
                                                                                        <telerik:DropDownListItem Text="01" Value="01" />
                                                                                        <telerik:DropDownListItem Text="02" Value="02" />
                                                                                        <telerik:DropDownListItem Text="03" Value="03" />
                                                                                        <telerik:DropDownListItem Text="04" Value="04" />
                                                                                        <telerik:DropDownListItem Text="05" Value="05" />
                                                                                        <telerik:DropDownListItem Text="06" Value="06" />
                                                                                        <telerik:DropDownListItem Text="07" Value="07" />
                                                                                        <telerik:DropDownListItem Text="08" Value="08" />
                                                                                        <telerik:DropDownListItem Text="09" Value="09" />
                                                                                        <telerik:DropDownListItem Text="10" Value="10" />
                                                                                        <telerik:DropDownListItem Text="11" Value="11" />
                                                                                        <telerik:DropDownListItem Text="12" Value="12" />
                                                                                    </Items>
                                                                                </telerik:RadDropDownList>
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <telerik:RadDropDownList ID="dropDownYear" runat="server"
                                                                                    Skin="Bootstrap" Width="100%">
                                                                                    <Items>
                                                                                        <telerik:DropDownListItem Text="YY" Value="YY" Selected="true" />
                                                                                        <telerik:DropDownListItem Text="2019" Value="2019" />
                                                                                        <telerik:DropDownListItem Text="2020" Value="2020" />
                                                                                        <telerik:DropDownListItem Text="2021" Value="2021" />
                                                                                        <telerik:DropDownListItem Text="2022" Value="2022" />
                                                                                        <telerik:DropDownListItem Text="2023" Value="2023" />
                                                                                        <telerik:DropDownListItem Text="2024" Value="2024" />
                                                                                        <telerik:DropDownListItem Text="2025" Value="2025" />
                                                                                        <telerik:DropDownListItem Text="2026" Value="2026" />
                                                                                        <telerik:DropDownListItem Text="2027" Value="2027" />
                                                                                        <telerik:DropDownListItem Text="2028" Value="2028" />
                                                                                        <telerik:DropDownListItem Text="2029" Value="2029" />
                                                                                        <telerik:DropDownListItem Text="2030" Value="2030" />
                                                                                    </Items>
                                                                                </telerik:RadDropDownList>
                                                                            </div>
                                                                        </div>
                                                                        <div class="d-flex">
                                                                            <div style="width: 150px"><span class="k-invalid-msg" data-for="dropDownMonth"></span></div>

                                                                            <div style="width: 150px; min-width: 80px">
                                                                                <span class="k-invalid-msg" data-for="dropDownYear"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group col-6 col-lg-2">
                                                                        <div class="d-flex" style="min-width: 150px;">
                                                                            <span>
                                                                                <label class="ebiz-label">Security Code *</label></span>
                                                                            <span class="pl-2">
                                                                                <img src="../Content/Images/info.png" /></span>
                                                                            <telerik:RadToolTip ID="RadToolTip1" runat="server" Position="BottomRight" HideEvent="LeaveToolTip"></telerik:RadToolTip>
                                                                        </div>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="txtSecurityCode" runat="server" Skin="Bootstrap" TabIndex="5" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidatorSecurityCode"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtSecurityCode"
                                                                            ErrorMessage="Security Code is required" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-lg-5 offset-lg-1">
                                                                        <div class="col-12 pl-0">
                                                                            <span>
                                                                                <label class="ebiz-label">
                                                                                    <telerik:RadCheckBox ID="chkReceiptToCustomer" runat="server" Text="Send Receipt" CssClass="form-control" TabIndex="10" Skin="Bootstrap" Font-Size="14px"></telerik:RadCheckBox>
                                                                                </label>
                                                                            </span>
                                                                            <span class="float-right class-SeperatedComman pt-3">Separate additional emails with a comma</span>
                                                                            <div class="pl-4">
                                                                                <telerik:RadTextBox ID="txtEmailcc" runat="server" Skin="Bootstrap" TabIndex="9" Width="100%"></telerik:RadTextBox>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row pt-5 pb-4">
                                                                    <div class="offset-6 col-md-4 col-12">
                                                                        <telerik:RadButton ID="btnProcess" runat="server" Text="Create Recurring Payment" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" TabIndex="11" Width="100%" Height="30px"></telerik:RadButton>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </telerik:RadAjaxPanel>
                                                    </div>
                                                </div>
                                            </telerik:RadPageView>
                                    </telerik:RadMultiPage>
                                </telerik:RadPageView>
                                <telerik:RadPageView runat="server" ID="RadPageView2">
                                    <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip5" CssClass="pt-4 pl-4" MultiPageID="RadMultiPage3" SelectedIndex="0">
                                        <Tabs>
                                            <telerik:RadTab Text="Saved ACH" Width="200px"></telerik:RadTab>
                                            <telerik:RadTab Text="New ACH" Width="200px"></telerik:RadTab>
                                        </Tabs>
                                    </telerik:RadTabStrip>
                                    <telerik:RadMultiPage runat="server" ID="RadMultiPage3" SelectedIndex="0" CssClass="outerMultiPage">
                                        <telerik:RadPageView runat="server" ID="RadPageView1">
                                            <div id="newTranSavedACHForm" class="editibleCell ddlApp pt-5">
                                                <div class="row">
                                                    <div class="col-sm-2 text-right ebiz-label pt-2">ACH Account *</div>
                                                    <div class="col-6 col-lg-4 col-xl-3">
                                                        <telerik:RadDropDownList ID="ddlSavedACHAccount" runat="server" Skin="Bootstrap" Width="250px" TabIndex="1">
                                                            <Items>
                                                                <telerik:DropDownListItem Text="Select Payment Method" Value="0" Selected="true" />
                                                            </Items>
                                                        </telerik:RadDropDownList>
                                                    </div>
                                                </div>
                                                <div class="row divSavedACHButton pt-5">
                                                    <div class="offset-1 col-sm-3 text-right">
                                                        <telerik:RadButton ID="idBtnSavedACH" runat="server" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" Text="Process" TabIndex="11" Width="150px"></telerik:RadButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </telerik:RadPageView>
                                        <telerik:RadPageView runat="server" ID="RadPageView61">
                                                <div class="row">
                                                    <div class="col-10">
                                                        <telerik:RadAjaxPanel runat="server">
                                                            <div id="AchForm" class="pt-5 pl-5">
                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-lg-5">
                                                                        <label class="ebiz-label">Account Holder Name *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="txtNewACHAccountHolderName" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidatorAccountHolderName"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtNewACHAccountHolderName"
                                                                            ErrorMessage="Account Holder Name is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-lg-5 offset-lg-1">
                                                                        <label class="ebiz-label">Bank Routing Number *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="txtNewACHBankRoutingNumber" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidatorBankRoutingNumber"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtNewACHBankRoutingNumber"
                                                                            ErrorMessage="Bank Routing Number is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                    </div>
                                                                </div>

                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-lg-5">
                                                                        <label class="ebiz-label">Account Type *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadDropDownList ID="RadDropDownListAccountType" runat="server" Skin="Bootstrap" Width="100%">
                                                                                <Items>
                                                                                    <telerik:DropDownListItem Text="Saving" Value="0" />
                                                                                    <telerik:DropDownListItem Text="Current" Value="1" />
                                                                                </Items>
                                                                            </telerik:RadDropDownList>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidatorAccountType"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="RadDropDownListAccountType"
                                                                            ErrorMessage="Account Type is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-lg-5 offset-lg-1">
                                                                        <label class="ebiz-label">Bank Account Number *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="txtNewACHBankAccountNumber" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator1"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtNewACHBankAccountNumber"
                                                                            ErrorMessage="Bank Account Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row pt-5">
                                                                    <div class="offset-6 col-md-4 col-12">
                                                                        <telerik:RadButton ID="idBtnNewACHProcess" runat="server" Text="Process" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" TabIndex="11" Width="100%"></telerik:RadButton>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </telerik:RadAjaxPanel>
                                                    </div>
                                                </div>
                                            </telerik:RadPageView>
                                    </telerik:RadMultiPage>
                                </telerik:RadPageView>
                            </telerik:RadMultiPage>
                        </div>
                        <%--</telerik:RadMultiPage>--%>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        function fnShowPaymentMethod() {
            var idPaymentMethods = document.getElementById("id-PaymentMethods");
            var idPaymentMethodsDiv = document.getElementById("id-PaymentMethodsDiv");
            if (typeof idPaymentMethods != "undefined") {
                idPaymentMethods.style.display = "block";
                idPaymentMethodsDiv.style.display = "none";
            }

        };
        function fnHidePaymentMethod() {
            var idPaymentMethods = document.getElementById("id-PaymentMethods");
            var idPaymentMethodsDiv = document.getElementById("id-PaymentMethodsDiv");
            if (typeof idPaymentMethods != "undefined") {
                idPaymentMethods.style.display = "none";
                idPaymentMethodsDiv.style.display = "block";
            }
        };
    </script>
</body>
</html>
