using System;
using System.Text.RegularExpressions;
//using DAL;
//using PaymentEngine;
using EBizEMV;
using Newtonsoft.Json;

namespace EPaymentForm
{
    public partial class EPayForm : System.Web.UI.Page
    {
        ///SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Payment_ConnectionString"].ToString());

        private static Device device;
        private TransactionRequest trnReq;
        private static LineItem LneItm;
        private static PaymentResponse payRes;
        private static DeviceTransactionResult dvcTranReq;
        private static TransactionResult transRes;
        private static DeviceTransaction dvcTran;
        private static string payResponse;
       // TransactionRequest response = new TransactionRequest();
      
        private const string URL = "https://secure.ebizCharge.com/api/v2";

        private string ApiKey = "Egj4ptyWO5Qv8G8SHx05oJ194z7j91aw";
        private string ApiPin = "123456789";
        private string DeviceKey = "sa_Z9hWZGa6HBE9LaD7wdr9XQI932wR9";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IndeterminateProgressBar.Visible = false;
                RadComboBoxDealer.Text = "MM";
                RadComboBox1.Text = "YYYY";
                ddlDevices.Visible = false;
                UMDvc.Visible = false;
                lblDeviceResultSuccess.Visible = false;
                lblDeviceResult.Visible = false;
                cnTrans.Visible = false;
                //GetDevice();
                GetDevice();
                Session["Device"] = device;
                //SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Payment_ConnectionString"].ToString());

                //SqlCommand comm = conn.CreateCommand();
                //comm = conn.CreateCommand();
                //comm.CommandText = "SELECT StateName,StateId from State order by StateName";
                //comm.CommandType = CommandType.Text;
                //conn.Open();
                //SqlDataReader dr = comm.ExecuteReader();
                //while (dr.Read())
                //{
                //    ddlState.Items.Add(new
                //    ListItem(dr[0].ToString(), dr[1].ToString()));
                //}
                //conn.Close();
            }
        }
        protected void PayByCard(object sender, EventArgs e)
        { }
        protected void PayByCheck(object sender, EventArgs e)
        { }
        //    protected void PayByCard(object sender, EventArgs e)
        //{
        //    ///////////////////////////////////////Generating TransactionID////////////////////////////////////////////////////
        //    SqlCommand cmd1 = new SqlCommand("SELECT TransactionId FROM TransactionDetail ORDER BY TransactionId DESC", conn);
        //    // var cmd = new SqlCommand(cmd1, conn);
        //    //conn.Open();
        //    SqlDataReader TransID = null;

        //    TransID = cmd1.ExecuteReader();
        //    string TransID1 = "";
        //    string newTransID = "";


        //    if (TransID.HasRows)
        //    {
        //        TransID.Read();
        //        TransID1 = TransID["TransactionId"].ToString();

        //        string z = ""; string z1 = "";

        //        z = TransID1;
        //        z1 = "TRS_" + (Convert.ToInt32(z.Replace("TRS_", "")) + 1).ToString().PadLeft(6, '0');

        //        newTransID = z1;
        //    }
        //    else
        //    {
        //        newTransID = "TRS_000001";
        //    }
        //    conn.Close();
        //    /////////////////////////////////////////////Generating CustomerID///////////////
        //    SqlCommand cmd2 = new SqlCommand("SELECT CustomerId FROM Customer ORDER BY CustomerId DESC", conn);
        //    conn.Open();
        //    SqlDataReader custID = null;

        //    custID = cmd2.ExecuteReader();
        //    string custID1 = "";
        //    string newcustID = "";

        //    if (custID.HasRows)
        //    {
        //        custID.Read();
        //        custID1 = custID["CustomerId"].ToString();

        //        string c = ""; string c1 = "";

        //        c = custID1;
        //        c1 = "CUST_" + (Convert.ToInt32(c.Replace("CUST_", "")) + 1).ToString().PadLeft(6, '0');

        //        newcustID = c1;
        //    }
        //    else
        //    {
        //        newcustID = "CUST_000001";
        //    }
        //    conn.Close();
        //    /////////////////////////////////////////////////Generating InvoiceNumber/////////////////////////////////////////////
        //    SqlCommand cmd3 = new SqlCommand("SELECT InvoiceNumber FROM InvoiceDetail ORDER BY InvoiceNumber DESC", conn);
        //    conn.Open();
        //    SqlDataReader invoiceID = null;

        //    invoiceID = cmd3.ExecuteReader();
        //    string invoiceID1 = "";
        //    string newinvoiceID = "";

        //    if (invoiceID.HasRows)
        //    {
        //        invoiceID.Read();
        //        invoiceID1 = invoiceID["InvoiceNumber"].ToString();

        //        string i = ""; string i1 = "";

        //        i = invoiceID1;
        //        i1 = "INVC_" + (Convert.ToInt32(i.Replace("INVC_", "")) + 1).ToString().PadLeft(6, '0');

        //        newinvoiceID = i1;
        //    }
        //    else
        //    {
        //        newinvoiceID = "INVC_000001";
        //    }
        //    conn.Close();

        //    var cust = Request.Form["UMname"].ToString();
        //    var CustName = cust.Split(' ')[0];
        //    var state = ddlState.Value;
        //    ////////////////////////////////////////////Geetting Credit Card Type///////////////////////////////////////
        //    string creditCardNumber = UMcard.Value;
        //    string CardType = GetCreditCardType(creditCardNumber);

        //    double TransAmount = Convert.ToDouble(Request.Form["TransactionAmount"].ToString());
        //    double TotalAmount = 150.00;
        //    double amountDiff = Math.Round(TotalAmount - TransAmount, 2);
        //    double AmountDue = amountDiff;

        //    ////////////////////////////////////////////////Applying Transaction for Storing Records in Database//////////////
        //    SqlTransaction objTrans = null;

        //    using (conn)
        //    {
        //        conn.Open();
        //        objTrans = conn.BeginTransaction();
        //        SqlCommand customer = new SqlCommand("insert into [Customer] (CustomerId,CustomerName,BillingAddress,City,StateId,ZipCode,isDeleted,CreatedBy,CreatedOn) values ('" + newcustID + "','" + UMname.Value + "','" + UMstreet.Value + "','" + UMcity.Value + "','" + state + "','" + UMzip.Value + "','" + false + "','" + CustName + "','" + System.DateTime.Now + "')", conn);
        //        SqlCommand card = new SqlCommand("insert into [CardDetail] (CardNumber, CustomerCardName,CardBillingAddress,CardExpiryMonth,CardExpiryYear,SecurityCode,CustomerId,CardType) values ('" + UMcard.Value + "','" + UMname.Value + "','" + UMstreet.Value + "','" + RadComboBoxDealer.SelectedValue + "','" + RadComboBox1.SelectedValue + "','" + SecurityCode.Value + "','" + newcustID + "','" + CardType + "')", conn);
        //        SqlCommand invoice = new SqlCommand("insert into [InvoiceDetail] (InvoiceNumber, InvoiceDate,TotalAmount,AmountDue,Description,Currency,isDeleted,CreatedBy,CreatedOn,TransactionId,CustomerId,TransactionType,AmountPaid) values ('" + newinvoiceID + "','" + System.DateTime.Now + "','" + TotalAmount + "','" + AmountDue + "','None','$','" + false + "','" + CustName + "','" + System.DateTime.Now + "','" + newTransID + "','" + newcustID + "','Credit Card','" + TransAmount + "')", conn);
        //        SqlCommand transDetail = new SqlCommand("insert into [TransactionDetail] (TransactionId,CardNumber, CustomerId,AgreementStatus,isDeleted,CreatedBy,CreatedOn,InvoiceNumber,TransactionAmount) values ('" + newTransID + "','" + UMcard.Value + "','" + newcustID + "','" + true + "','" + false + "','" + CustName + "','" + System.DateTime.Now + "','" + newinvoiceID + "','" + TransAmount + "')", conn);
        //        try
        //        {
        //            customer.Transaction = objTrans;
        //            customer.ExecuteNonQuery();
        //            card.Transaction = objTrans;
        //            card.ExecuteNonQuery();
        //            invoice.Transaction = objTrans;
        //            invoice.ExecuteNonQuery();
        //            transDetail.Transaction = objTrans;
        //            transDetail.ExecuteNonQuery();

        //            objTrans.Commit();
        //            ////////////////////////////////////////////////////Write Values to Invoice Summary Section////////////////////
        //            UMinvoice.InnerText = newinvoiceID;
        //            UMorderdate.InnerText = System.DateTime.Now.ToString("MM/dd/yyyy");
        //            UMtotalAmount.InnerText = Convert.ToString(TotalAmount);
        //            UMamountDue.InnerText = Convert.ToString(AmountDue);
        //            UMdescription.InnerText = "None";
        //            /////////////////////////////////////////////////////////Assigning Values to anchor tag for Invoice Details/////////
        //            InvcDet.Attributes["href"] = "SuccessForm.aspx?InvoiceNumber=" + EncryptDecrypt.Encrypt(newinvoiceID) + "&InvoiceDate=" + EncryptDecrypt.Encrypt(System.DateTime.Now.ToString("MM/dd/yyyy")) + "&AmountPaid=" + EncryptDecrypt.Encrypt(Convert.ToString(TransAmount)) + "&PaymentMethod=Credit Card" + "&CardType=" + EncryptDecrypt.Encrypt(CardType);

        //        }
        //        catch (Exception)
        //        {
        //            objTrans.Rollback();
        //        }
        //        finally
        //        {
        //            conn.Close();
        //        }
        //    }

        //    UMcard.Value = "";
        //    UMname.Value = "";
        //    RadComboBoxDealer.SelectedValue = "MM";
        //    RadComboBox1.SelectedValue = "YYYY";
        //    SecurityCode.Value = "";
        //    UMstreet.Value = "";
        //    UMcity.Value = "";
        //    UMzip.Value = "";
        //}
        //protected void PayByCheck(object sender, EventArgs e)
        //{
        //    ///////////////////////////////////////Generating TransactionID////////////////////////////////////////////////////
        //    SqlCommand cmd1 = new SqlCommand("SELECT CheckTransactionId FROM CheckTransactionDetail ORDER BY CheckTransactionId DESC", conn);
        //    // var cmd = new SqlCommand(cmd1, conn);
        //    conn.Open();
        //    SqlDataReader TransID = null;

        //    TransID = cmd1.ExecuteReader();
        //    string TransID1 = "";
        //    string newTransID = "";

        //    if (TransID.HasRows)
        //    {
        //        TransID.Read();
        //        TransID1 = TransID["CheckTransactionId"].ToString();

        //        string z = ""; string z1 = "";

        //        z = TransID1;
        //        z1 = "CHTRS_" + (Convert.ToInt32(z.Replace("CHTRS_", "")) + 1).ToString().PadLeft(6, '0');

        //        newTransID = z1;
        //    }
        //    else
        //    {
        //        newTransID = "CHTRS_000001";
        //    }
        //    conn.Close();
        //    SqlCommand cmd2 = new SqlCommand("SELECT CustomerId FROM Customer ORDER BY CustomerId DESC", conn);
        //    conn.Open();
        //    SqlDataReader custID = null;

        //    custID = cmd2.ExecuteReader();
        //    string custID1 = "";
        //    string newcustID = "";

        //    if (custID.HasRows)
        //    {
        //        custID.Read();
        //        custID1 = custID["CustomerId"].ToString();

        //        string c = ""; string c1 = "";

        //        c = custID1;
        //        c1 = "CUST_" + (Convert.ToInt32(c.Replace("CUST_", "")) + 1).ToString().PadLeft(6, '0');

        //        newcustID = c1;
        //    }
        //    else
        //    {
        //        newcustID = "CUST_000001";
        //    }
        //    conn.Close();
        //    /////////////////////////////////////////////////Generating InvoiceNumber/////////////////////////////////////////////
        //    SqlCommand cmd3 = new SqlCommand("SELECT InvoiceNumber FROM InvoiceDetail ORDER BY InvoiceNumber DESC", conn);
        //    conn.Open();
        //    SqlDataReader invoiceID = null;

        //    invoiceID = cmd3.ExecuteReader();
        //    string invoiceID1 = "";
        //    string newinvoiceID = "";

        //    if (invoiceID.HasRows)
        //    {
        //        invoiceID.Read();
        //        invoiceID1 = invoiceID["InvoiceNumber"].ToString();

        //        string i = ""; string i1 = "";

        //        i = invoiceID1;
        //        i1 = "INVC_" + (Convert.ToInt32(i.Replace("INVC_", "")) + 1).ToString().PadLeft(6, '0');

        //        newinvoiceID = i1;
        //    }
        //    else
        //    {
        //        newinvoiceID = "INVC_000001";
        //    }
        //    conn.Close();

        //    var cust = Request.Form["AccountHolder"].ToString();
        //    var CustName = cust.Split(' ')[0];
        //    var state = ddlState.Value;

        //    double TransAmount = Convert.ToDouble(Request.Form["CheckTransAmount"].ToString());
        //    double TotalAmount = 150.00;
        //    //double TransAmount = 122.13;
        //    double amountDiff = Math.Round(TotalAmount - TransAmount, 2);
        //    double AmountDue = amountDiff;
        //    ////////////////////////////////////////////////Applying Transaction for Storing Records in Database//////////////
        //    SqlTransaction objTrans = null;

        //    using (conn)
        //    {
        //        conn.Open();
        //        objTrans = conn.BeginTransaction();
        //        SqlCommand customer = new SqlCommand("insert into [Customer] (CustomerId,CustomerName,BillingAddress,City,StateId,ZipCode,isDeleted,CreatedBy,CreatedOn) values ('" + newcustID + "','" + AccountHolder.Value + "','None','None','" + state + "','" + null + "','" + false + "','" + CustName + "','" + System.DateTime.Now + "')", conn);
        //        SqlCommand invoice = new SqlCommand("insert into [InvoiceDetail] (InvoiceNumber, InvoiceDate,TotalAmount,AmountDue,Description,Currency,isDeleted,CreatedBy,CreatedOn,TransactionId,CustomerId,TransactionType,AmountPaid) values ('" + newinvoiceID + "','" + System.DateTime.Now + "','" + TotalAmount + "','" + AmountDue + "','None','$','" + false + "','" + CustName + "','" + System.DateTime.Now + "','" + newTransID + "','" + newcustID + "','Check','" + TransAmount + "')", conn);
        //        SqlCommand transDetail = new SqlCommand("insert into [CheckTransactionDetail] (CheckTransactionId,CustomerId, InvoiceNumber,TransactionAmount,BankRouteNumber,AccountNumber,AccountType,AgreementStatus,isDeleted,CreatedBy,CreatedOn) values ('" + newTransID + "','" + newcustID + "','" + newinvoiceID + "','" + TransAmount + "','" + BankRouteNumber.Value + "','" + BankAccNum.Value + "','" + accounttype.Value + "','" + true + "','" + false + "','" + CustName + "','" + System.DateTime.Now + "')", conn);
        //        try
        //        {
        //            customer.Transaction = objTrans;
        //            customer.ExecuteNonQuery();
        //            invoice.Transaction = objTrans;
        //            invoice.ExecuteNonQuery();
        //            transDetail.Transaction = objTrans;
        //            transDetail.ExecuteNonQuery();

        //            objTrans.Commit();
        //            ////////////////////////////////////////////////////Write Values to Invoice Summary Section////////////////////
        //            UMinvoice.InnerText = newinvoiceID;
        //            UMorderdate.InnerText = System.DateTime.Now.ToString("MM/dd/yyyy");
        //            UMtotalAmount.InnerText = Convert.ToString(TotalAmount);
        //            UMamountDue.InnerText = Convert.ToString(AmountDue);
        //            UMdescription.InnerText = "None";
        //            /////////////////////////////////////////////////////////Assigning Values to anchor tag for Invoice Details/////////
        //            InvcDet.Attributes["href"] = "SuccessForm.aspx?InvoiceNumber=" + EncryptDecrypt.Encrypt(newinvoiceID) + "&InvoiceDate=" + EncryptDecrypt.Encrypt(System.DateTime.Now.ToString("MM/dd/yyyy")) + "&AmountPaid=" + EncryptDecrypt.Encrypt(Convert.ToString(TransAmount)) + "&PaymentMethod=Check";

        //        }
        //        catch (Exception)
        //        {
        //            objTrans.Rollback();
        //        }
        //        finally
        //        {
        //            conn.Close();
        //        }
        //    }
        //    AccountHolder.Value = "";
        //    BankRouteNumber.Value = "";
        //    BankAccNum.Value = "";
        //}
        public string GetCreditCardType(string CreditCardNumber)
        {
            Regex regVisa = new Regex("^4[0-9]{12}(?:[0-9]{3})?$");
            Regex regMaster = new Regex("^5[1-5][0-9]{14}$");
            Regex regExpress = new Regex("^3[47][0-9]{13}$");
            Regex regDiners = new Regex("^3(?:0[0-5]|[68][0-9])[0-9]{11}$");
            Regex regDiscover = new Regex("^6(?:011|5[0-9]{2})[0-9]{12}$");
            Regex regJCB = new Regex("^(?:2131|1800|35\\d{3})\\d{11}$");

            if (regVisa.IsMatch(CreditCardNumber))
                return "VISA";
            else if (regMaster.IsMatch(CreditCardNumber))
                return "MASTER";
            else if (regExpress.IsMatch(CreditCardNumber))
                return "AEXPRESS";
            else if (regDiners.IsMatch(CreditCardNumber))
                return "DINERS";
            else if (regDiscover.IsMatch(CreditCardNumber))
                return "DISCOVERS";
            else if (regJCB.IsMatch(CreditCardNumber))
                return "JCB";
            else
                return "invalid";
        }
        protected void GetDevice()
        {
            try
            {
                if (string.IsNullOrWhiteSpace(DeviceKey))
                {
                    lblDeviceResult.Visible = true;
                    lblDeviceResult.InnerHtml = "No Device is configured.";
                }
                else
                {
                   var dev = clsEMVHelper.GetDevices(URL, DeviceKey, ApiKey, ApiPin);
                   device = JsonConvert.DeserializeObject<Device>(dev);
                   // Update Device status 
                  // OnDeviceRefresh(device.status);
                   // Set Device status 
                   //setDeviceStatus(device.status);
                }
            }
            catch (Exception ex)
            {
                lblDeviceResult.Visible = true;
                lblDeviceResult.InnerHtml = "Device connection error...";
            }
        }
        private string setDeviceStatus(string message)
        {
            lblDeviceResultSuccess.Visible = true;
            lblDeviceResultSuccess.InnerHtml = message;
            return message;
        }

        private void OnDeviceRefresh(string stat)
        {
            lblDeviceResultSuccess.Visible = true;
            lblDeviceResultSuccess.InnerHtml = stat;
        }
        protected void StartProcess(object sender, EventArgs e)
        {
            IndeterminateProgressBar.Visible = true;
            devcPro.Visible = false;
            cnTrans.Visible = true;
            
            lblDeviceResult.Visible = false;
            if (device == null)
            {
                lblDeviceResultSuccess.Visible = true;
                lblDeviceResultSuccess.InnerHtml = "Connecting to device...";
                GetDevice();
            }
            if (device != null)
            {
                lblDeviceResultSuccess.Visible = true;
                lblDeviceResultSuccess.InnerHtml = "Processing Transaction...";
                IndeterminateProgressBar.Visible = true;
                RunTransaction();
            }
        }
        public TransactionRequest RunTransaction()
        {
            TransactionRequest trsnReq = new TransactionRequest();
            LineItem lineItm = new LineItem();

            trsnReq.amount = "1";

            trsnReq.command = "cc:sale";
            trsnReq.clientip = "192.0.0.1";
            trsnReq.customerid = "ID0002";
            trsnReq.description = "Sale";
            trsnReq.comments = "";
            trsnReq.invoice = "NA";
            trsnReq.ponum = "NA";
            trsnReq.orderid = "NA";
            trsnReq.clerk = "Daimaan";

            lineItm.sku = "upc0001";
            lineItm.name = "POS Sale";
            lineItm.description = "POS Sale";
            lineItm.cost = String.Format("{0:0.##}", trsnReq.amount);
            lineItm.qty = "1";

            trsnReq.lineitems = new LineItem[1];

            trsnReq.lineitems[0] = lineItm;

            trsnReq.billing_address = new Address();
            trsnReq.billing_address.lastname = "Latif";
            trsnReq.billing_address.firstname = "Dan";
            trsnReq.manual_key = false;

            payResponse = clsEMVHelper.Payrequest(URL, DeviceKey, ApiKey, ApiPin, trsnReq, trsnReq.command);
            
            var response = clsEMVHelper.GetPayrequestResult(URL, DeviceKey, ApiKey, ApiPin, payResponse);

            payRes = JsonConvert.DeserializeObject<PaymentResponse>(response);
            Session["Request"] = payRes;

            lblDeviceResultSuccess.Visible = true;
            lblDeviceResultSuccess.InnerHtml = Convert.ToString(payRes.status);

            var devCurrentStatus = clsEMVHelper.GetDevices(URL, DeviceKey, ApiKey, ApiPin);

            device = JsonConvert.DeserializeObject<Device>(devCurrentStatus);

            lblDeviceResultSuccess.InnerHtml = Convert.ToString(device.status);

            return trsnReq;
        }
        protected void CancelDeviceTransaction(object sender, EventArgs e)
        {
            cnTrans.Visible = false;
            IndeterminateProgressBar.Visible = false;
            lblDeviceResultSuccess.Visible = false;

            string paymentResponse = Convert.ToString(payRes);
            var response = clsEMVHelper.DeletePaymentRequest(URL, DeviceKey, ApiKey, ApiPin, payResponse);

            payRes = JsonConvert.DeserializeObject<PaymentResponse>(response);
            
            lblDeviceResult.Visible = true;
            lblDeviceResult.InnerHtml = Convert.ToString("Transaction "+ payRes.status);
            devcPro.Visible = true;
        }
    }
}