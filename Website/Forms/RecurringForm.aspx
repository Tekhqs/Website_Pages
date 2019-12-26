<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecurringForm.aspx.cs" Inherits="Website.Forms.Form1" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<script runat="server">
    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        txtCardNumber.EnabledStyle.CssClass = String.Empty;
        txtCardNumber.HoveredStyle.CssClass = String.Empty;
        txtCardNumber.FocusedStyle.CssClass = String.Empty;
        txtCardNumber.EnabledStyle.CssClass = "form-control";
        txtCardNumber.HoveredStyle.CssClass = "form-control";
        txtCardNumber.FocusedStyle.CssClass = "form-control";

        txtBillingAddress.EnabledStyle.CssClass = String.Empty;
        txtBillingAddress.HoveredStyle.CssClass = String.Empty;
        txtBillingAddress.FocusedStyle.CssClass = String.Empty;
        txtBillingAddress.EnabledStyle.CssClass = "form-control";
        txtBillingAddress.HoveredStyle.CssClass = "form-control";
        txtBillingAddress.FocusedStyle.CssClass = "form-control";

        txtCardHolderName.EnabledStyle.CssClass = String.Empty;
        txtCardHolderName.HoveredStyle.CssClass = String.Empty;
        txtCardHolderName.FocusedStyle.CssClass = String.Empty;
        txtCardHolderName.EnabledStyle.CssClass = "form-control";
        txtCardHolderName.HoveredStyle.CssClass = "form-control";
        txtCardHolderName.FocusedStyle.CssClass = "form-control";

        txtZipCode.EnabledStyle.CssClass = String.Empty;
        txtZipCode.HoveredStyle.CssClass = String.Empty;
        txtZipCode.FocusedStyle.CssClass = String.Empty;
        txtZipCode.EnabledStyle.CssClass = "form-control";
        txtZipCode.HoveredStyle.CssClass = "form-control";
        txtZipCode.FocusedStyle.CssClass = "form-control";

        txtSecurityCode.EnabledStyle.CssClass = String.Empty;
        txtSecurityCode.HoveredStyle.CssClass = String.Empty;
        txtSecurityCode.FocusedStyle.CssClass = String.Empty;
        txtSecurityCode.EnabledStyle.CssClass = "form-control";
        txtSecurityCode.HoveredStyle.CssClass = "form-control";
        txtSecurityCode.FocusedStyle.CssClass = "form-control";

        txtEmail.EnabledStyle.CssClass = String.Empty;
        txtEmail.HoveredStyle.CssClass = String.Empty;
        txtEmail.FocusedStyle.CssClass = String.Empty;
        txtEmail.EnabledStyle.CssClass = "form-control";
        txtEmail.HoveredStyle.CssClass = "form-control";
        txtEmail.FocusedStyle.CssClass = "form-control";

        txtSavedCVV.EnabledStyle.CssClass = String.Empty;
        txtSavedCVV.HoveredStyle.CssClass = String.Empty;
        txtSavedCVV.FocusedStyle.CssClass = String.Empty;
        txtSavedCVV.EnabledStyle.CssClass = "form-control";
        txtSavedCVV.HoveredStyle.CssClass = "form-control";
        txtSavedCVV.FocusedStyle.CssClass = "form-control";

        txtNewACHBankRoutingNumber.EnabledStyle.CssClass = String.Empty;
        txtNewACHBankRoutingNumber.HoveredStyle.CssClass = String.Empty;
        txtNewACHBankRoutingNumber.FocusedStyle.CssClass = String.Empty;
        txtNewACHBankRoutingNumber.EnabledStyle.CssClass = "form-control";
        txtNewACHBankRoutingNumber.HoveredStyle.CssClass = "form-control";
        txtNewACHBankRoutingNumber.FocusedStyle.CssClass = "form-control";

        txtNewACHBankAccountNumber.EnabledStyle.CssClass = String.Empty;
        txtNewACHBankAccountNumber.HoveredStyle.CssClass = String.Empty;
        txtNewACHBankAccountNumber.FocusedStyle.CssClass = String.Empty;
        txtNewACHBankAccountNumber.EnabledStyle.CssClass = "form-control";
        txtNewACHBankAccountNumber.HoveredStyle.CssClass = "form-control";
        txtNewACHBankAccountNumber.FocusedStyle.CssClass = "form-control";

        txtNewACHAccountHolderName.EnabledStyle.CssClass = String.Empty;
        txtNewACHAccountHolderName.HoveredStyle.CssClass = String.Empty;
        txtNewACHAccountHolderName.FocusedStyle.CssClass = String.Empty;
        txtNewACHAccountHolderName.EnabledStyle.CssClass = "form-control";
        txtNewACHAccountHolderName.HoveredStyle.CssClass = "form-control";
        txtNewACHAccountHolderName.FocusedStyle.CssClass = "form-control";
    }
</script>

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
        <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="false" />
        <div>
            <div class="container-fluid m-3">
                <div class="row">
                    <div class="col-12">
                        <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip1" MultiPageID="RadMultiPage1" SelectedIndex="0">
                            <Tabs>
                                <telerik:RadTab Text="Create New" Width="200px" CssClass="tabCreateNew"></telerik:RadTab>
                                <telerik:RadTab Text="Scheduled Payments" Width="200px" CssClass="tabScheduledPayment"></telerik:RadTab>
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
                                        <a runat="server" href="~/Forms/ManageRecurringForm.aspx">Open Manage Recurring Form</a>
                                    </div>
                                </div>

                                <div class="row pt-5 pl-3">
                                    <div class="col-12">
                                        is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                        It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s 
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
                                        </div>
                                    </div>
                                </div>

                                <%--<div class="form-row">
                                    <div class="form-group col-md-5">
                                        <span>
                                            <label class="ebiz-label">Account Holder Name *</label>
                                        </span>
                                        <telerik:RadTextBox ID="RadTextBox1" runat="server" CssClass="form-control" TabIndex="6" Width="650px"></telerik:RadTextBox>
                                    </div>
                                    <div class="offset-1">
                                    </div>

                                    <div class="form-group col-md-5">
                                        <label class="ebiz-label">Bank Routing Number *</label>
                                        <telerik:RadTextBox ID="RadTextBox2" runat="server" CssClass="form-control" TabIndex="6" Width="650px"></telerik:RadTextBox>
                                    </div>
                                </div>--%>

                                <div class="row pt-4 pl-3">
                                    <div class="col-12">
                                        Please note that only days 5-20 each month are available for selection. This is because we need time to calculate your monthly statement and receive your payment.
                                    </div>
                                </div>

                                <div class="row pt-4 pl-3">
                                    <div class="col-12">

                                        <telerik:RadCheckBox ID="RadCheckBox1" runat="server" Text="I agree to the above terms and condition" Skin="Bootstrap" Font-Size="Medium"></telerik:RadCheckBox>

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
                                        <telerik:RadTabStrip RenderMode="Lightweight" Skin="Bootstrap" runat="server" ID="RadTabStrip4" MultiPageID="RadMultiPage4" CssClass="pt-4" BorderColor="Transparent" BorderStyle="None" SelectedIndex="0">
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
                                                    <div class="col-10">
                                                        <div id="form6" class="pt-5">
                                                            <div class="form-row">
                                                                <div class="form-group col-12 col-md-6">
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
                                                                <div class="form-group col-12 col-md-5 offset-md-1">
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
                                                                <div class="form-group col-12 col-md-6">
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
                                                                <div class="form-group col-12 col-md-5 offset-md-1">
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
                                                                    <div class="form-group col-3 float-right pt-5">
                                                                        <telerik:RadCheckBox ID="chkAllowSaveCC" runat="server" Text="Save card" Skin="Bootstrap" Font-Size="14px" TabIndex="10"></telerik:RadCheckBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="form-group col-3">
                                                                    <label class="row pl-3 ebiz-label">Expiration Date *</label>
                                                                    <div class="d-flex">
                                                                        <%--<select id="dropDownMonth" name="dropDownMonth" tabindex="3" class="form-control" style="max-width: 120px" data-role="dropdownlist">
                                                                            <option value="-1">MM</option>
                                                                        </select>--%>
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
                                                                        
                                                                    <%--<select id="dropDownYear" name="dropDownYear" tabindex="4" class="form-control ml-3" data-role="dropdownlist" style="max-width: 150px; min-width: 80px">
                                                                        <option value="-1">YY</option>
                                                                    </select>--%>
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
                                                                <div class="form-group col-3">
                                                                    <div class="d-flex" style="min-width: 150px;">
                                                                        <label class="ebiz-label">Security Code *</label>

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
                                                                <div class="form-group col-12 col-md-5 offset-1">
                                                                    <label class="ebiz-label">
                                                                        <telerik:RadCheckBox ID="chkReceiptToCustomer" runat="server" Text="Send Receipt" CssClass="form-control" TabIndex="10" Skin="Bootstrap" Font-Size="14px"></telerik:RadCheckBox>
                                                                    </label>
                                                                    <telerik:RadTextBox ID="txtEmail" runat="server" Skin="Bootstrap" TabIndex="9" Width="100%"></telerik:RadTextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-row pt-5">
                                                                <div class="offset-6"></div>
                                                                <div class="col-md-6">
                                                                    <telerik:RadButton ID="btnProcess" runat="server" Text="Create Recurring Payment" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" TabIndex="11" Width="500px" Height="30px"></telerik:RadButton>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </telerik:RadPageView>
                                        </telerik:RadMultiPage>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView runat="server" ID="RadPageView2">
                                        <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip5" MultiPageID="RadMultiPage3" SelectedIndex="0" CssClass="pt-4">
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
                                                    <div class="col-12">

                                                        <div id="AchForm" class="editibleCell ddlApp pt-5">
                                                            <div class="form-row">
                                                                <div class="form-group col-md-5">
                                                                    <span>
                                                                        <label class="ebiz-label">Account Holder Name *</label>
                                                                    </span>
                                                                    <telerik:RadTextBox ID="txtNewACHAccountHolderName" runat="server" Skin="Bootstrap" TabIndex="6" Width="680px"></telerik:RadTextBox>
                                                                </div>
                                                                <div class="form-group col-5 offset-1">
                                                                    <label class="ebiz-label">Bank Routing Number *</label>
                                                                    <telerik:RadTextBox ID="txtNewACHBankRoutingNumber" runat="server" Skin="Bootstrap" TabIndex="6" Width="680px"></telerik:RadTextBox>
                                                                </div>
                                                            </div>

                                                            <div class="form-row">
                                                                <div class="form-group col-2">
                                                                    <label class="ebiz-label">Account Type *</label>

                                                                    <telerik:RadDropDownList ID="RadDropDownList3" runat="server" Skin="Bootstrap" Width="250px">
                                                                        <Items>
                                                                            <telerik:DropDownListItem Text="Saving" Value="0" Selected="true" />
                                                                        </Items>
                                                                    </telerik:RadDropDownList>
                                                                </div>
                                                                <div class="offset-4"></div>
                                                                <div class="form-group col-md-5">
                                                                    <label class="ebiz-label">Bank Account Number *</label>
                                                                    <telerik:RadTextBox ID="txtNewACHBankAccountNumber" runat="server" Skin="Bootstrap" TabIndex="6" Width="680px"></telerik:RadTextBox>

                                                                </div>
                                                            </div>
                                                            <div class="form-row ">
                                                                <div class="offset-6"></div>
                                                                <div class="col-md-2">
                                                                    <telerik:RadButton ID="idBtnNewACHProcess" runat="server" Text="Process" Skin="Bootstrap" BackColor="#1492DB" ForeColor="White" TabIndex="11" Width="500px" Height="30px"></telerik:RadButton>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </telerik:RadPageView>
                                        </telerik:RadMultiPage>
                                    </telerik:RadPageView>
                                </telerik:RadMultiPage>
                            </telerik:RadPageView>
                            <telerik:RadPageView runat="server" ID="RadPageView3">
                                <div class="row container-fluid">
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
                                    <div class="col-12">
                                        <telerik:RadGrid ID="RadGrid_ScheduledRecurringPayments" runat="server"
                                            OnNeedDataSource="RadGrid_ScheduledRecurringPayments_NeedDataSource" AllowPaging="true">
                                            <MasterTableView ClientDataKeyNames="PaymentName" ShowHeader="true" CommandItemDisplay="Top">
                                                <CommandItemSettings ShowAddNewRecordButton="false" ShowRefreshButton="false" ShowExportToExcelButton="true" ShowExportToCsvButton="true" />
                                                <PagerStyle Mode="NextPrevAndNumeric" VerticalAlign="Bottom" Position="Bottom" AlwaysVisible="true" Visible="true" />
                                                <%--<Columns>
                                                    <telerik:GridBoundColumn UniqueName="PaymentName" DataField="PaymentName" HeaderText="Payment Name" ReadOnly="true">
                                                    </telerik:GridBoundColumn>
                                                    
                                                    <telerik:GridBoundColumn UniqueName="PaymentName" DataField="RecurringDates" HeaderText="Recurring Dates" ColumnEditorID="GridTextBoxEditor">
                                                    </telerik:GridBoundColumn>
                                                    
                                                    <telerik:GridBoundColumn UniqueName="PaymentName" DataField="Frequency" HeaderText="Frequency" ColumnEditorID="GridTextBoxEditor">
                                                    </telerik:GridBoundColumn>
                                                    
                                                    <telerik:GridBoundColumn UniqueName="PaymentName" DataField="Amount" HeaderText="Amount" ColumnEditorID="GridTextBoxEditor">
                                                    </telerik:GridBoundColumn>
                                                    
                                                    <telerik:GridBoundColumn DataField="MonthlyPaymentDay" UniqueName="MonthlyPaymentDay" HeaderText="Monthly Payment Day" ColumnEditorID="GridTextBoxEditor">
                                                    </telerik:GridBoundColumn>

                                                    <telerik:GridBoundColumn DataField="Cardholder" UniqueName="Cardholder" HeaderText="Cardholder" ColumnEditorID="GridTextBoxEditor">
                                                    </telerik:GridBoundColumn>

                                                    <telerik:GridBoundColumn DataField="MethodLast4Digits" UniqueName="MethodLast4Digits" HeaderText="Method&Last4Digits" ColumnEditorID="GridTextBoxEditor">
                                                    </telerik:GridBoundColumn>

                                                    <telerik:GridBoundColumn DataField="Status"  UniqueName="Status" HeaderText="Status" ColumnEditorID="GridTextBoxEditor">
                                                    </telerik:GridBoundColumn>

                                                    <telerik:GridEditCommandColumn HeaderText="Edit">
                                                        <HeaderStyle Width="70px" />
                                                    </telerik:GridEditCommandColumn>
                                                </Columns>--%>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </div>
                            </telerik:RadPageView>
                        </telerik:RadMultiPage>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
