using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace Website.Forms
{
    public partial class Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadGrid_ScheduledRecurringPayments_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            (sender as RadGrid).DataSource = Enumerable.Range(1, 1).Select(x => new
            {
                //ID = x,
                //Name = "Item " + x,
                PaymentName = "Custom cabinets",
                RecurringDates = "10/27/19 - indefinitely",
                Frequency= "Monthly",
                Amount = "Full balance",
                MonthlyPaymentDay="8th day of month",
                Cardholder = "Rebecca Smith",
                MethodLast4Digits="1111",
                Status="Active",
                Action="Edit"
            });
        }
    }
}