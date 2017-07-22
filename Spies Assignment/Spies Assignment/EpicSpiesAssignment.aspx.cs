using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spies_Assignment
{
    public partial class EpicSpiesAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                EndPreviousCalen.SelectedDate = DateTime.Now.Date;
                StartNewCalen.SelectedDate = DateTime.Now.AddDays(20).Date;
            }
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            string name = NameBox.Text;
            string assignment = AssignNameBox.Text;
            TimeSpan betweenAssignments = StartNewCalen.SelectedDate.Subtract(EndPreviousCalen.SelectedDate);
            TimeSpan newAssignmentTime = EndNewCalen.SelectedDate.Subtract(StartNewCalen.SelectedDate);
            double budget = (500.00 * newAssignmentTime.TotalDays);
            if ((newAssignmentTime.TotalDays) > 21)
            {
                budget += 1000.00;
            }
            if (betweenAssignments.TotalDays < 14)
            {
                OutputLbl.Text = "Error: Must allow at least two weeks between previous assignment and new assignment.";
                StartNewCalen.SelectedDate = EndPreviousCalen.SelectedDate.AddDays(20).Date;
            }
            else
            {
                OutputLbl.Text = string.Format("Assignment of {0} to assignment {1} is authorized. Budget total: {2:C} .",name,assignment,budget);
                
            }
        }
    }
}