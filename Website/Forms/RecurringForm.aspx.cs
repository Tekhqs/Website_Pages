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

        protected void GetScheduledRecurringPayments(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            //(sender as RadGrid).DataSource = Enumerable.Range(1, 1).Select(x => new
            //{
            //    //ID = x,
            //    //Name = "Item " + x,
            //    PaymentName = "Custom cabinets",
            //    RecurringDates = "10/27/19 - indefinitely",
            //    Frequency = "Monthly",
            //    Amount = "Full balance",
            //    MonthlyPaymentDay = "8th day of month",
            //    Cardholder = "Rebecca Smith",
            //    MethodLast4Digits = "1111",
            //    Status = "Active",
            //    Action = "Edit"
            //});

            List<RecurringPayments> recurringPaymentsList = new List<RecurringPayments> {
                new RecurringPayments
                {
                    CustomerFullName = "Bob Smith",
                    PaymentName = "Flat Rent",
                    RecurringDates = "11/08/2018 - indefinitely",
                    Frequency = "Daily",
                    Amount = 500,
                    Cardholder = "Bob Smith",
                    MethodAndLast4Digits = "<img src='../Content/Images/visa.jpg' height='20px' /> ending in 1234",
                    Status = "Active",
                    IsPayment = true
                },
                new RecurringPayments
                {
                    CustomerFullName = "Bob Smith1",
                    PaymentName = "House Rent",
                    RecurringDates = "11/08/2018 - 11/08/2019",
                    Frequency = "Weekly",
                    Amount = 1000,
                    Cardholder = "Bob Smith",
                    MethodAndLast4Digits = "<img src='../Content/Images/visa.jpg' height='20px' /> ending in 4444",
                    Status = "Scheduled",
                    IsPayment = true
                },
                new RecurringPayments
                {
                    CustomerFullName = "Bob Smith2",
                    PaymentName = "Flat Rent",
                    RecurringDates = "11/08/2019 - 11/08/2020",
                    Frequency = "Monthly",
                    Amount = 1500,
                    Cardholder = "Bob Smith",
                    MethodAndLast4Digits = "<img src='../Content/Images/visa.jpg' height='20px' /> ending in 1111",
                    Status = "Active",
                    IsPayment = true
                },
                new RecurringPayments
                {
                    CustomerFullName = "Bob Smit3",
                    PaymentName = "House Rent",
                    RecurringDates = "11/08/2019 - 11/08/2020",
                    Frequency = "Yearly",
                    Amount = 2000,
                    Cardholder = "Bob Smith",
                    MethodAndLast4Digits = "<img src='../Content/Images/visa.jpg' height='20px' /> ending in 5555",
                    Status = "Canceled",
                    IsPayment = true
                },
                new RecurringPayments
                {
                    CustomerFullName = "Bob Smit4",
                    PaymentName = "House Rent",
                    RecurringDates = "11/08/2018 - indefinitely",
                    Frequency = "Daily",
                    Amount = 2500,
                    Cardholder = "Bob Smith",
                    MethodAndLast4Digits = "<img src='../Content/Images/visa.jpg' height='20px' /> ending in 2222",
                    Status = "Active",
                    //Status = "<label class='class-status'>Active</label>",
                    IsPayment = true
                }
            };
            (sender as RadGrid).DataSource = recurringPaymentsList;

        }

        protected void GetReviewRecurringPayments(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            

            List<RecurringPayments> recurringPaymentsList = new List<RecurringPayments> {
                new RecurringPayments
                {
                    ID = 1,
                    PaymentDate="11/12/19",
                    Amount = 1000700,
                    Description = "description goes here"
                },
                new RecurringPayments
                {
                   ID = 2,
                    PaymentDate="12/12/19",
                    Amount = 23432,
                    Description = "description goes here"
                },
                new RecurringPayments
                {
                    ID = 3,
                    PaymentDate="01/12/19",
                    Amount = 234,
                    Description = "description goes here"
                },
                new RecurringPayments
                {
                    ID = 4,
                    PaymentDate="02/12/19",
                    Amount = 23455,
                    Description = "description goes here"
                },
                new RecurringPayments
                {
                    ID = 5,
                    PaymentDate="03/12/19",
                    Amount = 234444,
                    Description = "description goes here"
                }
            };
            (sender as RadGrid).DataSource = recurringPaymentsList;

        }
    }

    public class RecurringPayments
    {
        public int ID { get; set; }
        public string CustomerFullName { get; set; }
        public string PaymentName { get; set; }
        public string RecurringDates { get; set; }
        public string Frequency { get; set; }
        public decimal Amount { get; set; }
        public string Cardholder { get; set; }
        public string MethodAndLast4Digits { get; set; }
        public string Status { get; set; }
        public bool IsPayment { get; set; } = false;
        /// <summary>
        /// 
        /// </summary>
        public string PaymentDate { get; set; }
        public string Description { get; set; }
    }
}