using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ConsumerZone_DiscussionBord : System.Web.UI.Page
{
    static bool indicator = false;
    DiscussionManager dm = new DiscussionManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            display();
        }
    }
    void display()
    {
        DataTable dt = dm.DisplayAllQuestions();
        GVFirst.DataSource = dt;
        GVFirst.DataBind();

    }
    protected void BtnPost_Click(object sender, EventArgs e)
    {
        dm.PostedOn = DateTime.Now.ToString();
        string Q = TxtQuestion.Text;
        if (Q[Q.Length - 1] != '?')
            Q = Q + "?";
        dm.Question = Q;
        dm.UserId = Session["uid"].ToString();
        if (dm.AddNewQuestion())
        {
            display();
            TxtQuestion.Text = "";
            Response.Write("<script>alert('Post submitted successfully.');</script>");
        }
        else
        {
            Response.Write("<script>alert('Unable to save');</script>");
        }
    }
    protected void GVFirst_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int qid;
        if (e.CommandName == "show")
        {
            qid = int.Parse(e.CommandArgument.ToString());
            foreach (GridViewRow row in GVFirst.Rows)
            {
                Label lblqno = (Label)row.FindControl("LblQID");
                if (int.Parse(lblqno.Text) == qid)
                {
                    GridView GVAnswer = (GridView)row.FindControl("GVSecond");
                    LinkButton lnk = (LinkButton)row.FindControl("LnkBtnShow");
                    if (indicator == true)
                    {
                        GVAnswer.Dispose();
                        GVAnswer.Visible = false;
                        lnk.Text = "Show Answers";
                        indicator = false;
                    }
                    else
                    {
                        GVAnswer.Visible = true;
                        dm.QuestionId = qid;
                        GVAnswer.DataSource = dm.DisplaySpecificAnswers();
                        GVAnswer.DataBind();
                        lnk.Text = "Hide Answers";
                        indicator = true;
                    }
                }
            }
        }
        else if (e.CommandName == "reply")
        {
            qid = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("DiscussionBord.aspx?qid=" + qid + "#dialog");
        }
    }
    protected void GVFirst_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        display();
        GVFirst.PageIndex = e.NewPageIndex;
        GVFirst.DataBind();
    }
    protected void BtnAddAnswer_Click(object sender, EventArgs e)
    {
        if (TxtAnswer.Text != "")
        {
            dm.Answer = TxtAnswer.Text;
            dm.UserId = Session["uid"].ToString();
            dm.PostedOn = DateTime.Now.ToString();
            dm.QuestionId = int.Parse(Request.QueryString["qid"].ToString());
            if (dm.AddNewAnswer())
            {
                Response.Write("<script>alert('Answer posted successfully');window.location.href='DiscussionBord.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Unable to save answer')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('unable to save empty answer')</script>");

        }

    }
}