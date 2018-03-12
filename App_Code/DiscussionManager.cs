using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DiscussionManager
/// </summary>
public class DiscussionManager
{
    public int QuestionId { get; set; }
    public int AnswerId { get; set; }
    public string UserId { get; set; }
    public string Question { get; set; }
    public string PostedOn { get; set; }
    public string Answer { get; set; }
    ConnectionManager cm = new ConnectionManager();
    public DiscussionManager()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    // TO Add new Question
    public bool AddNewQuestion()
    {
        cm.YourCommand = "INSERT into Tbl_Question(UserID,Question,PostedOn) values('" + UserId + "','" + Question + "','" + PostedOn + "')";
        return cm.ExecuteInsertOrUpdateOrDelete();
    }
    public DataTable DisplayAllQuestions()
    {
        cm.YourCommand = "SELECT p.file_name,r.name,q.UserId,q.Question_ID,q.PostedOn,q.Question from Tbl_profilePic p,Tbl_Registration r,Tbl_Question q where r.email_id=q.UserID and pic_id=(SELECT max(pic_id) from Tbl_profilePic where user_id=q.UserId) order by Question_ID desc";
        return cm.ExecuteSelectByDisconnected();
    }
    public DataTable DisplaySpecificAnswers()
    {
        cm.YourCommand = "SELECT p.file_name, r.name, a.User_ID,a.Answer_ID,a.Answer,a.PostedOn from Tbl_profilePic p,Tbl_Registration r,Tbl_Answer a where a.Question_ID= '" + QuestionId + "' and p.pic_id=(select max(pic_id) from Tbl_profilePic where user_id=a.User_ID) and r.email_id=a.User_ID order by a.Answer_ID desc";
        return cm.ExecuteSelectByDisconnected();
    }
    public bool AddNewAnswer()
    {
        cm.YourCommand = "INSERT into Tbl_Answer(User_ID,Question_Id,Answer,PostedOn) values('" + UserId + "','" + QuestionId + "','" + Answer + "','" + PostedOn + "')";
        return cm.ExecuteInsertOrUpdateOrDelete();
    }
}