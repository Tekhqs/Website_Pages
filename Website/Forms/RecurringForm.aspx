<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecurringForm.aspx.cs" Inherits="Website.Forms.Form1" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/world.css" rel="stylesheet" />
    <link href="../kendo/Skins/BootstrapLite/TabStrip.Bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManagerForm1" runat="server"></asp:ScriptManager>
        <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="false" />
        <div>
            <div class="container-fluid mt-3">
                <div class="row">
                    <div class="col-12">
                        <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip1" MultiPageID="RadMultiPage1" SelectedIndex="0">
                            <Tabs>
                                <telerik:RadTab Text="Create New" Width="200px" CssClass="tabCreateNew"></telerik:RadTab>
                                <telerik:RadTab Text="Scheduled Payments" Width="200px" CssClass="tabScheduledPayment"></telerik:RadTab>
                                <telerik:RadTab Text="New Recurring Payment Design" Width="300px" CssClass="tabNewDesignRecurringPayment"></telerik:RadTab>
                            </Tabs>
                        </telerik:RadTabStrip>
                    </div>
                </div>

                <div class="row pt-5 pl-3">
                    <div class="col-12">
                        <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0" CssClass="outerMultiPage">
                            <telerik:RadPageView runat="server" ID="RadPageView1">
                                <div class="row pl-3">
                                    <div class="col-12">
                                        <h3>Create a Recurring Payment</h3>
                                        <%--<a runat="server" href="~/Forms/ManageRecurringForm.aspx">Open Manage Recurring Form</a>--%>
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
                                            <div class="form-group inner">
                                                <span>
                                                    <label for="RadDropDownList1">Monthly Payment Day *</label></span>
                                                <span class="pl-2">
                                                    <img src="../Content/Images/info.png" title="You can pay monthly payments" />
                                                </span>
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


                                <div class="row pt-4 pl-3">
                                    <div class="col-12">
                                        Please note that only days 5-20 each month are available for selection. This is because we need time to calculate your monthly statement and receive your payment.
                                   
                                    </div>
                                </div>

                                <div class="row pt-4 pl-3">
                                    <div class="col-12 inner">

                                        <telerik:RadCheckBox ID="RadCheckBox1" runat="server" Text="I agree to the above terms and condition" Skin="Bootstrap" Font-Size="Medium"></telerik:RadCheckBox>
                                        <img src="../Content/Images/info.png" title="Agreement of 5-20 per month selection"/>
                                    </div>
                                </div>

                                <div class="row pt-5 pl-3">
                                    <div class="col-12 pb-4">
                                        Select a payment method
                                   
                                    </div>
                                </div>
                                <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip3" MultiPageID="RadMultiPageCC" SelectedIndex="0">
                                    <Tabs>
                                        <telerik:RadTab Text="Pay By Credit Card" Width="200px"></telerik:RadTab>
                                        <telerik:RadTab Text="Pay by ACH" Width="200px"></telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTabStrip>
                                <telerik:RadMultiPage runat="server" ID="RadMultiPageCC" SelectedIndex="0" CssClass="outerMultiPage">
                                    <telerik:RadPageView runat="server" ID="RadPageView5">
                                        <telerik:RadTabStrip RenderMode="Lightweight" Skin="Bootstrap" runat="server" ID="RadTabStrip4" MultiPageID="RadMultiPage4" CssClass="pt-4 pl-4" BorderColor="Transparent" BorderStyle="None" SelectedIndex="0">
                                            <Tabs>
                                                <telerik:RadTab Text="Saved Credit Card" CssClass="tabSavedCC" Width="200px"></telerik:RadTab>
                                                <telerik:RadTab Text="New Credit Card" CssClass="tabNewCC" Width="200px"></telerik:RadTab>
                                            </Tabs>
                                        </telerik:RadTabStrip>
                                        <telerik:RadMultiPage runat="server" ID="RadMultiPage4" SelectedIndex="0" CssClass="outerMultiPage">
                                            <telerik:RadPageView runat="server" ID="RadPageView9">
                                                <div id="newTranSavedCardForm" class="editibleCell ddlApp pt-5">
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
                                                                        <div class="d-flex inner" style="min-width: 150px;">
                                                                            <span>
                                                                                <label class="ebiz-label">Security Code *</label></span>
                                                                            <span class="pl-2">
                                                                                <img src="../Content/Images/info.png" title="It is the Security code of 3 digit on the back side of Card"/></span>
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
                                                                            <span class="float-right class-SeperatedComman pt-2">Separate additional emails with a comma</span>
                                                                            <div class="pl-4">
                                                                                <telerik:RadTextBox ID="txtEmailcc" runat="server" Skin="Bootstrap" TabIndex="9" Width="100%"></telerik:RadTextBox>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row pt-5">
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
                                        <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip5" MultiPageID="RadMultiPage3" SelectedIndex="0" CssClass="pt-4 pl-4">
                                            <Tabs>
                                                <telerik:RadTab Text="Saved ACH" Width="200px"></telerik:RadTab>
                                                <telerik:RadTab Text="New ACH" Width="200px"></telerik:RadTab>
                                            </Tabs>
                                        </telerik:RadTabStrip>
                                        <telerik:RadMultiPage runat="server" ID="RadMultiPage3" SelectedIndex="0" CssClass="outerMultiPage">
                                            <telerik:RadPageView runat="server" ID="RadPageView6">
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
                            </telerik:RadPageView>
                            <telerik:RadPageView runat="server" ID="RadPageView3">
                                <div class="container-fluid">
                                    <div class="row pb-4 pl-4">
                                        <div class="col-sm-2 col-md-2">
                                            <img class="btnFilterSchRecPay classFilterButton" src="../Content/Images/Filter.png" />
                                        </div>

                                        <div class="col-sm-8 col-md-8 d-flex">

                                            <div class="selectedSchRecPayTreeViewFld FiltersContainer">
                                                <div class="divLblSchRecPay"></div>
                                            </div>

                                        </div>
                                    </div>
                                    <%--  Modified By DAN--%>
                                    <%--<div class="col-12 myClass">
                                        <div class="col-md-2 col-sm-2 pl-4" style="position: absolute; top: 9px;">
                                            <img src="../Content/Images/export.png" data-toggle='dropdown'>
                                            <ul id="ddlExportTransHist" class="dropdown-menu">
                                                <li id="CSV" value="csv" class="dropdown-item ebiz-text">Export as .csv</li>
                                                <hr>
                                                <li id="Excel" value="Excel" class="dropdown-item ebiz-text">Export as Excel</li>
                                            </ul>
                                        </div>--%>
                                    <telerik:RadGrid ID="RadGrid_ScheduledRecurringPayments" runat="server"
                                        OnNeedDataSource="GetScheduledRecurringPayments" AllowPaging="true" Font-Size="14px">
                                        <MasterTableView ClientDataKeyNames="PaymentName" Font-Size="14px" ShowHeader="true" CommandItemDisplay="Top" AutoGenerateColumns="false" PageSize="10"
                                            CssClass="RadTabStrip_Bootstrap" AlternatingItemStyle-BackColor="LightGray" ItemStyle-BackColor="White"
                                            CommandItemStyle-Height="70px">
                                            <%--<CommandItemSettings ShowAddNewRecordButton="false" ShowRefreshButton="false" ShowExportToExcelButton="true" ShowExportToCsvButton="true" />--%>
                                            <PagerStyle Mode="NextPrevAndNumeric" PageSizes="10" VerticalAlign="Bottom" Position="Bottom" HorizontalAlign="Right"
                                                AlwaysVisible="true" Visible="true" EnableAllOptionInPagerComboBox="true" />
                                            <CommandItemSettings ShowRefreshButton="false" ShowAddNewRecordButton="false" />
                                            <CommandItemTemplate>
                                                <div class="row">
                                                    <div class="col-3 pl-4">
                                                        <span>
                                                            <telerik:RadCheckBox ID="RadGridHeaderCheckBox" runat="server" Skin="Bootstrap"></telerik:RadCheckBox>
                                                        </span>
                                                        <span>
                                                            <telerik:RadDropDownList ID="RadGridHeaderDropDown" runat="server" Skin="Bootstrap" Width="145px">
                                                                <Items>
                                                                    <telerik:DropDownListItem Text="Export" Value="csv" Selected="true" />
                                                                    <telerik:DropDownListItem Text="Export as .csv" Value="csv" />
                                                                    <telerik:DropDownListItem Text="Export as Excel" Value="Excel" />
                                                                </Items>
                                                            </telerik:RadDropDownList>
                                                        </span>
                                                    </div>
                                                </div>
                                            </CommandItemTemplate>
                                            <ItemStyle Height="50px" CssClass="active" />
                                            <AlternatingItemStyle CssClass="active" Height="50px" />
                                            <FooterStyle Height="500px" />
                                            <HeaderStyle Height="50px" Font-Bold="true" />
                                            <Columns>
                                                <%--<telerik:GridClientSelectColumn UniqueName="IsPayment"></telerik:GridClientSelectColumn>
                                                <telerik:GridCheckBoxColumn UniqueName="IsPayment" DataField="IsPayment"></telerik:GridCheckBoxColumn>--%>
                                                <telerik:GridTemplateColumn>
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="CheckBox1" runat="server" Skin="Bootstrap" />
                                                    </ItemTemplate>
                                                </telerik:GridTemplateColumn>
                                                <telerik:GridBoundColumn UniqueName="CustomerFullName" DataField="CustomerFullName" ItemStyle-ForeColor="Blue" HeaderText="Customer" ReadOnly="true">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn UniqueName="PaymentName" DataField="PaymentName" HeaderText="Payment Name" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn UniqueName="RecurringDates" DataField="RecurringDates" HeaderText="Recurring Dates" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn UniqueName="Frequency" DataField="Frequency" HeaderText="Frequency" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn UniqueName="Amount" DataField="Amount" DataFormatString="{0:C}" DataType="System.Decimal" HeaderText="Amount" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Cardholder" UniqueName="Cardholder" HeaderText="Cardholder" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="MethodAndLast4Digits" UniqueName="MethodAndLast4Digits" HeaderText="Method&Last4Digits" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <%--<telerik:GridBoundColumn DataField="Status" UniqueName="Status" HeaderText="Status" ColumnEditorID="GridTextBoxEditor"></telerik:GridBoundColumn>--%>
                                                <telerik:GridTemplateColumn DataField="Status" HeaderText="Status" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblStatus" CssClass="class-status" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ClientItemTemplate></ClientItemTemplate>
                                                </telerik:GridTemplateColumn>
                                                <telerik:GridEditCommandColumn ItemStyle-ForeColor="Blue" />
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <%-- </div>--%>
                                </div>
                            </telerik:RadPageView>


                            <telerik:RadPageView runat="server" ID="RadPageVieNewDesign">
                                <div class="container-fluid">
                                    <div class="row pl-3">
                                        <div class="col-6">
                                            <h3>Create a Recurring Payment</h3>
                                        </div>
                                    </div>
                                    <div class="row pl-3 pt-5">
                                        <div class="col-6">
                                            <p>Select a recurring payment type</p>
                                        </div>
                                    </div>
                                    <div class="row pt-4">
                                        <div class="col-12">
                                            <%--<telerik:RadCheckBox ID="RadCheckBox6" runat="server" Text="I agree to the above terms and condition" Skin="Bootstrap" Font-Size="Medium"></telerik:RadCheckBox>--%>
                                            <telerik:RadRadioButtonList runat="server" ID="RadioButtonList" Skin="Bootstrap"
                                                Direction="Horizontal" AutoPostBack="false" Width="100%">

                                                <Items>
                                                    <telerik:ButtonListItem Enabled="true" Text="I want to set a custom payment amount and frequency" Value="0" Selected="true" />
                                                    <telerik:ButtonListItem Text="I want my full statement balance to be paid automatically each month)" Value="1" />
                                                </Items>
                                            </telerik:RadRadioButtonList>
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-10">
                                        <div class="row pt-4">
                                            <div class="col-5">
                                                <div class="form-group">
                                                    <label>Recurring Payment Name</label>
                                                    <telerik:RadTextBox ID="txtRPName" runat="server" Width="100%" Skin="Bootstrap" TabIndex="1"></telerik:RadTextBox>
                                                </div>
                                                <asp:RequiredFieldValidator
                                                    ID="RequiredFieldValidator14"
                                                    runat="server"
                                                    Display="Dynamic"
                                                    ControlToValidate="txtRPName"
                                                    ErrorMessage="Account Type is required" ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-5 offset-1">
                                                <div class="form-group inner">
                                                    <label for="RadDropDownList1">Monthly Payment Day *</label>
                                                    <span class="pl-2">
                                                        <img src="../Content/Images/info.png" title="You can pay monthly payments"/>
                                                    </span>
                                                    <telerik:RadDropDownList ID="RadDropDownList9" runat="server"
                                                        Skin="Bootstrap" Width="100%">
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
                                                    ID="RequiredFieldValidator13"
                                                    runat="server"
                                                    Display="Dynamic"
                                                    ControlToValidate="RadDropDownList9"
                                                    ErrorMessage="Account Type is required" ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                        </div>


                                        <div class="row pt-3">
                                            <div class="col-5">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <label for="RadDropDownList1">Set a frequency *</label>
                                                            <telerik:RadDropDownList ID="ddlFrequency" runat="server"
                                                                Skin="Bootstrap" Width="100%">
                                                                <Items>
                                                                    <telerik:DropDownListItem Text="Choose Frequency" Value="0" Selected="true" />
                                                                    <telerik:DropDownListItem Text="Daily" Value="1" />
                                                                    <telerik:DropDownListItem Text="Weekly" Value="2" />
                                                                    <telerik:DropDownListItem Text="Monthly" Value="3" />
                                                                    <telerik:DropDownListItem Text="Yearly" Value="4" />
                                                                </Items>
                                                            </telerik:RadDropDownList>
                                                        </div>
                                                        <asp:RequiredFieldValidator
                                                            ID="RequiredFieldValidator15"
                                                            runat="server"
                                                            Display="Dynamic"
                                                            ControlToValidate="ddlFrequency"
                                                            ErrorMessage="Frequency is required" ForeColor="Red">
                                                        </asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <label>Amount</label>
                                                            <telerik:RadTextBox ID="txtAmount" runat="server" Width="100%" Skin="Bootstrap" TabIndex="1"></telerik:RadTextBox>
                                                        </div>
                                                        <asp:RequiredFieldValidator
                                                            ID="RequiredFieldValidator16"
                                                            runat="server"
                                                            Display="Dynamic"
                                                            ControlToValidate="txtAmount"
                                                            ErrorMessage="Amount is required" ForeColor="Red">
                                                        </asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-5 offset-1">

                                                <div class="form-group">
                                                    <label>Description</label>
                                                    <telerik:RadTextBox ID="txtDescription" runat="server" Width="100%" Skin="Bootstrap" TabIndex="1" TextMode="MultiLine"
                                                        Rows="6" Wrap="true" EmptyMessage="Description goes here">
                                                    </telerik:RadTextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row pt-4">
                                            <div class="col-5">
                                                <div class="row">
                                                    <div class="col-lg-4 col-6">
                                                        <div class="form-group inner">
                                                            <label>Start Date *</label><span class="pl-2">
                                                                <img src="../Content/Images/info.png" title="Start date of the Recurring Payment"/></span>
                                                            <telerik:RadDateTimePicker ID="txtStartDate" runat="server" Culture="English (United States)"
                                                                TimePopupButton-Visible="false" Skin="Bootstrap" Width="100%">
                                                            </telerik:RadDateTimePicker>

                                                        </div>
                                                        <asp:RequiredFieldValidator
                                                            ID="RFVStartDate"
                                                            runat="server"
                                                            Display="Dynamic"
                                                            ControlToValidate="txtStartDate"
                                                            ErrorMessage="StartDate is required" ForeColor="Red">
                                                        </asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="col-lg-4 col-6 col-5 offset-lg-2">
                                                        <div class="form-group">
                                                            <label>End Date</label>
                                                            <telerik:RadDateTimePicker ID="txtEndDate" runat="server" Culture="English (United States)" TimePopupButton-Visible="false"
                                                                Skin="Bootstrap" Width="100%">
                                                            </telerik:RadDateTimePicker>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-5 offset-1">
                                                <div class="form-group">
                                                    <div class="col-12">
                                                        <span>
                                                            <label class="ebiz-label">
                                                                <telerik:RadCheckBox ID="RadCheckBox6" runat="server" Text="Send Receipt"
                                                                    TabIndex="10" Skin="Bootstrap" Font-Size="14px">
                                                                </telerik:RadCheckBox>
                                                            </label>
                                                        </span>
                                                        <span class="float-right class-SeperatedComman d-sm-none d-md-none d-lg-none d-xl-block">Seperate additional emails with a comma</span>
                                                        <div class="pl-4">
                                                            <telerik:RadTextBox ID="RadTextBox11" runat="server" Skin="Bootstrap"
                                                                TabIndex="9" Width="100%">
                                                            </telerik:RadTextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="row pt-4">
                                            <div class="col-5">
                                                <div class="row">
                                                    <div class="offset-5 col-4">
                                                        <div class="form-group float-right pr-2">
                                                            <telerik:RadCheckBox ID="chkBoxRecur" runat="server"
                                                                Text="Recur Indefinitely" Skin="Bootstrap" Font-Size="Medium">
                                                            </telerik:RadCheckBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-5 offset-1 pr-4">
                                                <div class="form-group float-right">
                                                    <%--<telerik:RadButton ID="btnReview" runat="server"
                                                        Skin="Bootstrap" BorderColor="#1492DB" BackColor="White" ForeColor="#1492DB"
                                                        Width="200px" Text="Review Payment Schedule" TabIndex="4">
                                                    </telerik:RadButton>--%>
                                                    <input type="button" id="btnReview" data-toggle="modal" value="Review Payment Schedule" class="btn" data-target="#id-Modal" style="border-color: #1492DB; background-color: White; color: #1492DB;" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--container-fluid end--%>

                                <div class="row pt-5 pl-3">
                                    <div class="col-12 pb-4">
                                        Select a payment method
                                    </div>
                                </div>
                                <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip2" MultiPageID="RadMultiPage2" SelectedIndex="0">
                                    <Tabs>
                                        <telerik:RadTab Text="Pay By Credit Card" Width="200px"></telerik:RadTab>
                                        <telerik:RadTab Text="Pay by ACH" Width="200px"></telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTabStrip>
                                <telerik:RadMultiPage runat="server" ID="RadMultiPage2" SelectedIndex="0" CssClass="outerMultiPage">
                                    <telerik:RadPageView runat="server" ID="RadPageView7">
                                        <telerik:RadTabStrip RenderMode="Lightweight" Skin="Bootstrap" runat="server" ID="RadTabStrip6" MultiPageID="RadMultiPage5" CssClass="pt-4 pl-4" BorderColor="Transparent" BorderStyle="None" SelectedIndex="0">
                                            <Tabs>
                                                <telerik:RadTab Text="Saved Credit Card" CssClass="tabSavedCC" Width="200px"></telerik:RadTab>
                                                <telerik:RadTab Text="New Credit Card" CssClass="tabNewCC" Width="200px"></telerik:RadTab>
                                            </Tabs>
                                        </telerik:RadTabStrip>
                                        <telerik:RadMultiPage runat="server" ID="RadMultiPage5" SelectedIndex="0" CssClass="outerMultiPage">
                                            <telerik:RadPageView runat="server" ID="RadPageView8">
                                                <div id="SavedCardForm122" class="pt-5">
                                                    <div class="row">
                                                        <div class="col-sm-3 text-right ebiz-label pt-2">Payment Method *</div>
                                                        <div class="col-6 col-lg-4 col-xl-3">
                                                            <telerik:RadDropDownList ID="RadDropDownList4" runat="server" Skin="Bootstrap" Width="250px" TabIndex="1">
                                                                <Items>
                                                                    <telerik:DropDownListItem Text="Select Payment Method" Value="0" Selected="true" />
                                                                </Items>
                                                            </telerik:RadDropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="row cvvField pt-3">
                                                        <div class="col-sm-3 text-right ebiz-label pt-2">Card ID (CVV2/CID) Number</div>
                                                        <div class="col-sm-3">
                                                            <telerik:RadTextBox ID="RadTextBox1" runat="server" Skin="Bootstrap" TabIndex="2"></telerik:RadTextBox>
                                                        </div>
                                                    </div>
                                                    <div class="row pt-3">
                                                        <div class="col-sm-3 text-right ebiz-label pt-2"></div>
                                                        <div class="col-sm-4 d-inline-flex">
                                                            <label class="ebiz-label">
                                                                <telerik:RadCheckBox ID="RadCheckBox3" runat="server" Text="Send Receipt" TabIndex="3" Skin="Bootstrap" Font-Size="14px"></telerik:RadCheckBox>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="row divRecurringPaymentButton pt-3">
                                                        <div class="offset-3 col-3 pb-5">
                                                            <telerik:RadButton ID="RadButton1" runat="server" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" Width="200px" Text="Process" TabIndex="4"></telerik:RadButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </telerik:RadPageView>
                                            <%--<telerik:RadPageView runat="server" ID="RadPageView11">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <telerik:RadAjaxPanel runat="server">
                                                            <div id="form7" class="pt-5">
                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-md-6">
                                                                        <label class="ebiz-label">Card Number *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox2" runat="server" Skin="Bootstrap" TabIndex="1" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator4"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtCardNumber"
                                                                            ErrorMessage="Card Number is required" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-md-5 offset-md-1">
                                                                        <label class="ebiz-label">Billing Address *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox3" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator5"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtBillingAddress"
                                                                            ErrorMessage="Billing Address is required" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-md-6">
                                                                        <label class="ebiz-label">Name on Card *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox4" runat="server" Skin="Bootstrap" TabIndex="2" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator6"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtCardHolderName"
                                                                            ErrorMessage="Card Holder Name is required" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-md-5 offset-md-1">
                                                                        <div class="form-group col-8 pl-0 d-inline-block">
                                                                            <label class="ebiz-label">Zip Code / Postal Code *</label>
                                                                            <div class="col-12 pl-0">
                                                                                <telerik:RadTextBox ID="RadTextBox5" runat="server" Skin="Bootstrap" TabIndex="9" Width="100%"></telerik:RadTextBox>
                                                                            </div>
                                                                            <asp:RequiredFieldValidator
                                                                                ID="RequiredFieldValidator7"
                                                                                runat="server"
                                                                                Display="Dynamic"
                                                                                ControlToValidate="txtZipCode"
                                                                                ErrorMessage="Zip Code is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                        </div>
                                                                        <div class="form-group col-3 float-right pt-5">
                                                                            <telerik:RadCheckBox ID="RadCheckBox4" runat="server" Text="Save card" Skin="Bootstrap" Font-Size="14px" TabIndex="10"></telerik:RadCheckBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-3">
                                                                        <label class="row pl-3 ebiz-label">Expiration Date *</label>
                                                                        <div class="d-flex">
                                                                            <div class="col-6 pl-0">
                                                                                <telerik:RadDropDownList ID="RadDropDownList5" runat="server"
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
                                                                                <telerik:RadDropDownList ID="RadDropDownList6" runat="server"
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
                                                                    <div class="form-group col-3">
                                                                        <div class="d-flex" style="min-width: 150px;">
                                                                            <label class="ebiz-label">Security Code *</label>
                                                                            <telerik:RadToolTip ID="RadToolTip2" runat="server" Position="BottomRight" HideEvent="LeaveToolTip"></telerik:RadToolTip>
                                                                        </div>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox6" runat="server" Skin="Bootstrap" TabIndex="5" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator8"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtSecurityCode"
                                                                            ErrorMessage="Security Code is required" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-md-5 offset-1">
                                                                        <div class="col-12">
                                                                            <span>
                                                                                <label class="ebiz-label">
                                                                                    <telerik:RadCheckBox ID="RadCheckBox5" runat="server" Text="Send Receipt" CssClass="form-control" TabIndex="10" Skin="Bootstrap" Font-Size="14px"></telerik:RadCheckBox>
                                                                                </label>
                                                                            </span>
                                                                            <span class="float-right class-SeperatedComman pt-2">seperate additional emails with a comma</span>
                                                                            <telerik:RadTextBox ID="RadTextBox7" runat="server" Skin="Bootstrap" TabIndex="9" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row pt-5">
                                                                    <div class="offset-7 col-md-4 col-12">
                                                                        <telerik:RadButton ID="RadButton2" runat="server" Text="Create Recurring Payment" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" TabIndex="11" Width="100%" Height="30px"></telerik:RadButton>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </telerik:RadAjaxPanel>
                                                    </div>
                                                </div>
                                            </telerik:RadPageView>--%>

                                            <telerik:RadPageView runat="server" ID="RadPageView4">
                                                <%--New Credit Card Div--%>
                                                <div class="row">
                                                    <div class="col-12 col-lg-10">
                                                        <telerik:RadAjaxPanel runat="server">
                                                            <div id="form6" class="pt-5 pl-5">
                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-lg-5">
                                                                        <label class="ebiz-label">Card Number *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox2" runat="server" Skin="Bootstrap" TabIndex="1" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator3"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtCardNumber"
                                                                            ErrorMessage="Card Number is required" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-lg-5 offset-lg-1">
                                                                        <label class="ebiz-label">Billing Address *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox3" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator4"
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
                                                                            <telerik:RadTextBox ID="RadTextBox4" runat="server" Skin="Bootstrap" TabIndex="2" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator5"
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
                                                                                <telerik:RadTextBox ID="RadTextBox5" runat="server" Skin="Bootstrap" TabIndex="9" Width="100%"></telerik:RadTextBox>
                                                                            </div>
                                                                            <asp:RequiredFieldValidator
                                                                                ID="RequiredFieldValidator6"
                                                                                runat="server"
                                                                                Display="Dynamic"
                                                                                ControlToValidate="txtZipCode"
                                                                                ErrorMessage="Zip Code is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                        </div>
                                                                        <div class="form-group col-4 float-right pt-4">
                                                                            <telerik:RadCheckBox ID="RadCheckBox2" runat="server" Text="Save card" Skin="Bootstrap" Font-Size="14px" TabIndex="10"></telerik:RadCheckBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-6 col-lg-3">
                                                                        <label class="row pl-3 ebiz-label">Expiration Date *</label>
                                                                        <div class="d-flex">
                                                                            <div class="col-6 pl-0">
                                                                                <telerik:RadDropDownList ID="RadDropDownList3" runat="server"
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
                                                                                <telerik:RadDropDownList ID="RadDropDownList5" runat="server"
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
                                                                        <div class="d-flex inner" style="min-width: 150px;">
                                                                            <span>
                                                                                <label class="ebiz-label">Security Code *</label></span>
                                                                            <span class="pl-2">
                                                                                <img src="../Content/Images/info.png" title="It is the Security code of 3 digit on the back side of Card"/></span>
                                                                            <telerik:RadToolTip ID="RadToolTip2" runat="server" Position="BottomRight" HideEvent="LeaveToolTip"></telerik:RadToolTip>
                                                                        </div>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox6" runat="server" Skin="Bootstrap" TabIndex="5" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator7"
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
                                                                                    <telerik:RadCheckBox ID="RadCheckBox4" runat="server" Text="Send Receipt" CssClass="form-control" TabIndex="10" Skin="Bootstrap" Font-Size="14px"></telerik:RadCheckBox>
                                                                                </label>
                                                                            </span>
                                                                            <span class="float-right class-SeperatedComman pt-2">Separate additional emails with a comma</span>
                                                                            <div class="pl-4">
                                                                                <telerik:RadTextBox ID="RadTextBox7" runat="server" Skin="Bootstrap" TabIndex="9" Width="100%"></telerik:RadTextBox>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row pt-5">
                                                                    <div class="offset-6 col-md-4 col-12">
                                                                        <telerik:RadButton ID="RadButton2" runat="server" Text="Create Recurring Payment" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" TabIndex="11" Width="100%" Height="30px"></telerik:RadButton>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </telerik:RadAjaxPanel>
                                                    </div>
                                                </div>
                                            </telerik:RadPageView>
                                        </telerik:RadMultiPage>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView runat="server" ID="RadPageView12">
                                        <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip7" MultiPageID="RadMultiPage6" SelectedIndex="0" CssClass="pt-4 pl-4">
                                            <Tabs>
                                                <telerik:RadTab Text="Saved ACH" Width="200px"></telerik:RadTab>
                                                <telerik:RadTab Text="New ACH" Width="200px"></telerik:RadTab>
                                            </Tabs>
                                        </telerik:RadTabStrip>
                                        <telerik:RadMultiPage runat="server" ID="RadMultiPage6" SelectedIndex="0" CssClass="outerMultiPage">
                                            <telerik:RadPageView runat="server" ID="RadPageView13">
                                                <div id="newTranSavedACHForm1" class="editibleCell ddlApp pt-5">
                                                    <div class="row">
                                                        <div class="col-sm-2 text-right ebiz-label pt-2">ACH Account *</div>
                                                        <div class="col-6 col-lg-4 col-xl-3">
                                                            <telerik:RadDropDownList ID="RadDropDownList7" runat="server" Skin="Bootstrap" Width="250px" TabIndex="1">
                                                                <Items>
                                                                    <telerik:DropDownListItem Text="Select Payment Method" Value="0" Selected="true" />
                                                                </Items>
                                                            </telerik:RadDropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="row divSavedACHButton pt-5">
                                                        <div class="offset-1 col-sm-3 text-right">
                                                            <telerik:RadButton ID="RadButton3" runat="server" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" Text="Process" TabIndex="11" Width="150px"></telerik:RadButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </telerik:RadPageView>
                                            <%--<telerik:RadPageView runat="server" ID="RadPageView14">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <telerik:RadAjaxPanel runat="server">
                                                            <div id="AchForm1" class="pt-5">
                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-md-6">
                                                                        <label class="ebiz-label">Account Holder Name *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox8" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator9"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtNewACHAccountHolderName"
                                                                            ErrorMessage="Account Holder Name is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-md-5 offset-md-1">
                                                                        <label class="ebiz-label">Bank Routing Number *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox9" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator10"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtNewACHBankRoutingNumber"
                                                                            ErrorMessage="Bank Routing Number is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                    </div>
                                                                </div>

                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-md-6">
                                                                        <label class="ebiz-label">Account Type *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadDropDownList ID="RadDropDownList8" runat="server" Skin="Bootstrap" Width="100%">
                                                                                <Items>
                                                                                    <telerik:DropDownListItem Text="Saving" Value="0" />
                                                                                </Items>
                                                                            </telerik:RadDropDownList>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator11"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="RadDropDownListAccountType"
                                                                            ErrorMessage="Account Type is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-md-5 offset-md-1">
                                                                        <label class="ebiz-label">Bank Account Number *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox10" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator12"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtNewACHBankAccountNumber"
                                                                            ErrorMessage="Bank Account Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="offset-7 col-md-4 col-12">
                                                                        <telerik:RadButton ID="RadButton4" runat="server" Text="Process" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" TabIndex="11" Width="100%"></telerik:RadButton>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </telerik:RadAjaxPanel>
                                                    </div>
                                                </div>
                                            </telerik:RadPageView>--%>

                                            <telerik:RadPageView runat="server" ID="RadPageView11">
                                                <div class="row">
                                                    <div class="col-10">
                                                        <telerik:RadAjaxPanel runat="server">
                                                            <div id="AchForm" class="pt-5 pl-5">
                                                                <div class="form-row">
                                                                    <div class="form-group col-12 col-lg-5">
                                                                        <label class="ebiz-label">Account Holder Name *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox8" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator8"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtNewACHAccountHolderName"
                                                                            ErrorMessage="Account Holder Name is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-lg-5 offset-lg-1">
                                                                        <label class="ebiz-label">Bank Routing Number *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox9" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator9"
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
                                                                            <telerik:RadDropDownList ID="RadDropDownList6" runat="server" Skin="Bootstrap" Width="100%">
                                                                                <Items>
                                                                                    <telerik:DropDownListItem Text="Saving" Value="0" />
                                                                                    <telerik:DropDownListItem Text="Current" Value="1" />
                                                                                </Items>
                                                                            </telerik:RadDropDownList>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator10"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="RadDropDownListAccountType"
                                                                            ErrorMessage="Account Type is required" ForeColor="Red">
                                                                        </asp:RequiredFieldValidator>
                                                                    </div>
                                                                    <div class="form-group col-12 col-lg-5 offset-lg-1">
                                                                        <label class="ebiz-label">Bank Account Number *</label>
                                                                        <div class="col-12 pl-0">
                                                                            <telerik:RadTextBox ID="RadTextBox10" runat="server" Skin="Bootstrap" TabIndex="6" Width="100%"></telerik:RadTextBox>
                                                                        </div>
                                                                        <asp:RequiredFieldValidator
                                                                            ID="RequiredFieldValidator11"
                                                                            runat="server"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtNewACHBankAccountNumber"
                                                                            ErrorMessage="Bank Account Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row pt-5">
                                                                    <div class="offset-6 col-md-4 col-12">
                                                                        <telerik:RadButton ID="RadButton4" runat="server" Text="Process" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" TabIndex="11" Width="100%"></telerik:RadButton>
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
                            </telerik:RadPageView>
                        </telerik:RadMultiPage>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal modal-font" id="id-Modal" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog modal-xl modal-dialog-centered" data-easein="shake">
                <%--<div class="modal-content" style="max-width: 700px; height: 600px;">--%>
                <div class="modal-content" style="height: auto;">
                    <div class="success-Rectangle"></div>
                    <!-- Modal Header -->
                    <div class="modal-header border-0">
                        <h4 class="modal-title ebiz-page-header class-preivew p-3">Preview of Recurring Payment Schedule</h4>
                        <button type="button" class="close" data-target="#id-Modal" data-toggle="modal">&times;</button>

                    </div>

                    <!-- Modal body -->
                    <div class="modal-body" style="margin-left: 35px;">
                        <div class="row">
                            <div class="col-4">
                                <label>Customer:</label>
                                <label>Rebecca Smith : 1236325</label>
                            </div>
                            <div class="col-4 offset-2">
                                <label>Payment Amount:</label>
                                <label>$10236</label>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label>Sub customer ID : </label>
                                <label>12349</label>
                            </div>
                            <div class="col-4 offset-2">
                                <label>Recurring Duration : </label>
                                <label>11/12/19 - 03/12/20</label>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-4">
                                <label>Recurring Schedule Name : </label>
                                <label>Monthly service fee</label>
                            </div>
                            <div class="col-4 offset-2">
                                <label>Number of Payments : </label>
                                <label>5</label>
                            </div>

                        </div>
                        <div class="row">

                            <div class="col-4">
                                <label>Payment Frequency : </label>
                                <label>Repeat once a month</label>
                            </div>
                            <div class="col-4 offset-2">
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-12">

                                <div class="grid mt-4">
                                    <telerik:RadGrid ID="RadGrid1" runat="server"
                                        OnNeedDataSource="GetReviewRecurringPayments" AllowPaging="true" Font-Size="14px">
                                        <MasterTableView ClientDataKeyNames="PaymentName" Font-Size="14px" ShowHeader="true" AutoGenerateColumns="false" PageSize="10"
                                            CssClass="RadTabStrip_Bootstrap" AlternatingItemStyle-BackColor="LightGray" ItemStyle-BackColor="White"
                                            CommandItemStyle-Height="70px">
                                            <PagerStyle Mode="NextPrevAndNumeric" PageSizes="10" VerticalAlign="Bottom" Position="Bottom" HorizontalAlign="Right"
                                                AlwaysVisible="true" Visible="true" EnableAllOptionInPagerComboBox="true" />
                                            <CommandItemSettings ShowRefreshButton="false" ShowAddNewRecordButton="false" />
                                            <ItemStyle Height="50px" CssClass="active" />
                                            <AlternatingItemStyle CssClass="active" Height="50px" />
                                            <FooterStyle Height="500px" />
                                            <HeaderStyle Height="50px" Font-Bold="true" />
                                            <Columns>
                                                <telerik:GridBoundColumn UniqueName="ID" DataField="ID" HeaderText="" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn UniqueName="PaymentDate" DataField="PaymentDate" HeaderText="Payment Date" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn UniqueName="Amount" DataFormatString="{0:C}" DataType="System.Decimal" DataField="Amount" HeaderText="Recurring Amount" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Description" UniqueName="Description" HeaderText="Description" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Amount" UniqueName="Amount" DataFormatString="{0:C}" DataType="System.Decimal" HeaderText="Accumulated Amount" ColumnEditorID="GridTextBoxEditor">
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer border-0">
                     
                           
                                <label class="font-weight-bold">
                                    Total Payment Amount $5,035.00
                                </label>
                                <button id="id-Done" type="button" class="btn" data-dismiss="modal" style="border-color: #1492DB; background-color: White; color: #1492DB;">Return to Creating Schedule</button>
                           
                </div>

            </div>
        </div>
        </div>
        <script src="../Scripts/bootstrap.min.js"></script>
         <telerik:RadToolTipManager RenderMode="Lightweight" ID="RadToolTipManager1" runat="server" RelativeTo="Element"
                               Position="MiddleRight" AutoTooltipify="true" ContentScrolling="Default" Width="150">
    </telerik:RadToolTipManager>
    </form>
</body>
</html>
