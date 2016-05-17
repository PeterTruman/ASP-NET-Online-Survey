using System;
using System.Web;

public partial class PageErreur : PageBase
{
    protected void Page_Load( object sender, EventArgs e )
	{
		if( ! IsPostBack )
		{
            if ( Page.Request[ "msg" ] != null )
            {
                LabelValidationMessage.Text = Page.Request[ "msg" ].ToString();
            }
            else
            {
                LabelValidationMessage.Text = "Erreur : le message est mal configur� format : \"PageErreur.Aspx?msg=\"<br />";
                if ( User.Identity.IsAuthenticated == false )
                {
                    LabelValidationMessage.Text = "";
                    LabelValidationMessage.Text += "Vous n'�tes pas authentifi�.<br />";
                    string adrIP = Request.ServerVariables[ "REMOTE_ADDR" ];
                    LabelValidationMessage.Text += "REMOTE_ADDR : " + adrIP + "<br />";
                    string user = Request.ServerVariables[ "LOGON_USER" ];
                    LabelValidationMessage.Text += "LOGON_USER : " + user + "<br />";
                }
            }
		}
	}	
}
