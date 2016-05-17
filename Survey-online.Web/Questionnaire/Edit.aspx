<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" 
    CodeFile="Edit.aspx.cs" 
    Inherits="Questionnaire_Edit" 
    Title="Edition d'un Questionnaire" %>
    
<%@ Register Src="~/UserControl/PopupLabel.ascx" 
    TagName="PopupLabel" 
    TagPrefix="usrc" %>
<%@ Register 
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
.TextBoxLienStyle
{
    font-size:10px;
    color:Blue;
}
</style>
<div id="body">
<div id="DivPageStyle">
    <h3><asp:Label ID="LabelTitre" runat="server"/></h3>
    <asp:Panel ID="PanelAdmin" runat="server" Visible="false">
    <table border="0" cellpadding="2" class="TableQuestionStyleAdministrateur" width="100%">
        <tr>
            <td class="TdLabelStyle" align="right" title="Admin : Choisir un membre diff�rent pour copier ce Questionnaire d'un membre � l'autre">
                <strong>Pour le Membre : </strong>
            </td>
            <td class="TdTextBoxStyle" align="left">
                <UserControl:DropDownListMembre ID="DropDownListMembre" runat="server" AutoPostBack="false" />                
            </td>
            <td>
                <asp:Label ID="bourrage1" runat="server" Width="50px" />
            </td>
        </tr>
        <tr>
            <td class="TdLabelStyle" align="right">
                <strong>Membre : </strong>
            </td>
            <td class="TdTextBoxStyle" align="left">
                <asp:Label ID="LabelMembre" runat="server" CssClass="LabelBoxStyle" />
            </td>
        </tr>
        <tr>
            <td class="TdLabelStyle" align="right">
                <strong>Date cr�ation : </strong>
            </td>
            <td class="TdTextBoxStyle" align="left">
                <asp:Label ID="LabelDateCreation" runat="server" CssClass="LabelBoxStyle" />
            </td>
        </tr>
        <tr>
            <td class="TdLabelStyle" align="right">
                <strong>Nom : </strong>
            </td>
            <td class="TdTextBoxStyle" align="left">
                <asp:Label ID="LabelNom" runat="server" CssClass="LabelBoxStyle" />
            </td>
        </tr>
        <tr>
            <td class="TdLabelStyle" align="right">
                <strong>Pr�nom : </strong>
            </td>
            <td class="TdTextBoxStyle" align="left">
                <asp:Label ID="LabePrenom" runat="server" CssClass="LabelBoxStyle"/>
            </td>
        </tr>
        <tr>
            <td class="TdLabelStyle" align="right">
                <strong>Soci�t� : </strong>
            </td>
            <td class="TdTextBoxStyle" align="left">
                <asp:Label ID="LabelSociete" runat="server" CssClass="LabelBoxStyle" />
            </td>
        </tr>
    </table>    
    <br />    
    </asp:Panel>
    
    <asp:Panel ID="PanelQuestionnaire" runat="server">
    
    <table border="0" cellpadding="2" class="TableQuestionStyle" width="100%">
        <tr>
            <td width="16px">
                <asp:ImageButton ID="ImageButtonExpandQuestion" runat="server" 
                    ImageUrl="~/Images/expand.jpg" onclick="ImageButtonExpandQuestion_Click" 
                    ToolTip="Afficher le volet des autres propri�t�s de votre Questionnaire" />
            </td>
            <td align="right" width="220px">
                <label class="LabelStyle" title="Description du questionnaire">Titre du Questionnaire :</label>
            </td>
            <td align="left" class="TdTextBoxStyle">
                <asp:TextBox ID="TextBoxDescription" runat="server" CssClass="TextBoxStyle" 
                    Width="350px" />
            </td>
            <td>
                <a href="http://www.sodevlog.fr/Questionnaire.En.Ligne/page/Questionnaire-en-ligne-Aide.aspx#EditezVosQuestionnaires" title="Aide sur l'�dition d'un questionnaire" target="_blank">
                <img src="../App_Themes/Sodevlog/Images/help_rouge.gif" border="0" />
                </a>
            </td>
        </tr>
        <tr id="TrVoletCodeAcces" runat="server">
            <td>&nbsp;</td>
            <td align="right">
                <label class="LabelStyle" title="Code d'acc�s du Questionnaire, permet d'inviter les interview�s">Code d&#39;acc�s :</label>
            </td>
            <td align="left" class="TdTextBoxStyle">
                <asp:Label ID="LabelCodeAcces" runat="server" CssClass="LabelBoxStyle" />
            </td>
             <td>&nbsp;</td>
        </tr>
    </table>
        
    <!-- Case a cocher Anonymat -->
    <asp:Panel ID="PanelAide1" runat="server" class="PanelAideStyle">
    <table class="TableCollapsePanel">
        <tr>
            <td>
            Choisissez de cocher cette option si vous d�sirez garantir l'anonymat � vos Interview�s.<br />
            <b>L'anonymat de l'interview� est respect�</b>, ses informations personnelles ne s'affichent pas.<br />
            L'invitation d'un interview� en utilisant un lien vers le Formulaire d'enregistrement devient automatique.<br />
            L'interview� n'a plus besoin de s'enregistrer pour r�pondre � votre Questionnaire. Vous pouvez alors utiliser n'importe quel lien d'<b>Invitation par formulaire</b>
            </td>
        </tr>
    </table>
    </asp:Panel>
      
    <table border="0" cellspacing="5px" class="TableQuestionStyle" width="100%"
        title="Si vous cochez cette case, l'enregistrement de l'interview�s est automatique">
        <tr runat="server" >
            <td width="16">
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtenderAide1" runat="Server" 
                    AutoCollapse="false"  
                    AutoExpand="false"
                    TargetControlID="PanelAide1"
                    ExpandControlID="PanelControl1"
                    CollapseControlID="PanelControl1" 
                    Collapsed="true"
                    ImageControlID="Image1"    
                    ExpandedImage="~/App_Themes/Sodevlog/Images/help.gif"
                    CollapsedImage="~/App_Themes/Sodevlog/Images/help.gif"
                    SuppressPostBack="true"
                    SkinID="CollapsiblePanel" />  
                <asp:Panel ID="PanelControl1" runat="server" CssClass="CollapsePanelHeader"> 
                    <img src="../App_Themes/Sodevlog/Images/help.gif" border="0" alt ="Cliquez ici pour afficher l'aide"/>
                </asp:Panel>
            </td>        
            <td align="left">
                <usrc:PopupLabel ID="PopupLabelAnonymat" 
                    LabelCheckBox="Anonymat :" 
                    CssClassLabelCheckBox="LabelStyle" 
                    LabelChecboxWidth="216px"
                    LabelText="Attention, cette option est d�finitive" 
                    LabelWidth="250px" 
                    CssClassLabel="LabelRedStyle" 
                    runat="server" />
            </td>
        </tr>
    </table>    

    <!-- Modes d'enregistrement des reponses des interviewes -->
    <asp:Panel ID="PanelModeEnregistrement" runat="server">

        <asp:Panel ID="PanelAide2" runat="server" class="PanelAideStyle">
        <table class="TableCollapsePanel">
            <tr>
                <td>
                Choisissez le mode d'enregistrement des r�ponses de vos Interview�s :<br />
                <b>Valider :</b> L'interview� doit valider ses r�ponses pour qu'elles soient enregistr�es dans la base.<br />
                <b>Valider � la Fin :</b> L'interview� doit r�pondre � toutes les questions de votre Questionnaire avant de pouvoir valider l'ensemble de ses r�ponses.<br />
                Si aucune de ces options n'est choisie, les r�ponses sont enregistr�es dans la base, � chaque question.
                </td>
            </tr>
        </table>
        </asp:Panel>

        <table border="0" cellspacing="5px" class="TableQuestionStyle" width="100%" title="Modes d'enregistrement des Interview�s">
        <tr>
            <td width="16" >
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="Server" 
                    AutoCollapse="false"  
                    AutoExpand="false"
                    TargetControlID="PanelAide2"
                    ExpandControlID="PanelControl2"
                    CollapseControlID="PanelControl2" 
                    Collapsed="true"
                    ImageControlID="Image1"    
                    ExpandedImage="~/App_Themes/Sodevlog/Images/help.gif"
                    CollapsedImage="~/App_Themes/Sodevlog/Images/help.gif"
                    SuppressPostBack="true"
                    SkinID="CollapsiblePanel" />  
                <asp:Panel ID="PanelControl2" runat="server" CssClass="CollapsePanelHeader"> 
                    <img src="../App_Themes/Sodevlog/Images/help.gif" border="0" alt ="Cliquez ici pour afficher l'aide"/>
                </asp:Panel>
            </td>        
            <td align="right" width="216px">
                <label class="LabelStyle" 
                    title="Donner, � l'interview�, la possibilit� de valider ses r�ponses">
                Valider :</label>
            </td>
            <td align="left" class="TdTextBoxStyle">
                <asp:CheckBox ID="CheckBoxValider" runat="server" CssClass="TextBoxStyle" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right">
                <label class="LabelStyle" 
                    title="Donner, � l'interview�, la possibilit� de valider ses r�ponses � la fin du questionnaire">
                Valider � la fin :</label>
            </td>
            <td align="left" class="TdTextBoxStyle">
                <asp:CheckBox ID="CheckBoxFin" runat="server" CssClass="TextBoxStyle" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
        
    </asp:Panel>
    
    <!-- Invitation par lien sur un formulaire d'enregistrement -->
    <asp:Panel ID="PanelInviationFormulaireEnregistrement" runat="server">

        <asp:Panel ID="PanelAide3" runat="server" class="PanelAideStyle">
        <table class="TableCollapsePanel">
            <tr>
                <td>
                Choisissez cette option si vous d�sirez <b>utiliser un lien</b> vers un des Formulaires d'enregistrement � votre Questionnaire.<br />
                L'Interview� pourra alors cliquer sur ce lien pour r�pondre � votre questionnaire.<br />
                <br />
                Un fois votre questionnaire cr��, vous pourrez utiliser ces liens qui auront �t� cr��s.<br />
                <br />
                <b>Formulaires d'enregistrement de l'Interview�</b><br />
                L'interview� doit s'enregistrer pour r�pondre � votre questionnaire.
                <ul>
                    <li>
                        <b>Formulaire d'Enregistrement Complet Email et T�l�phone :</b> Civilit�, Nom, Pr�nom, Soci�t�, E-mail, T�l�phone<br />
                    </li>
                    <li>
                        <b>Formulaire Enregistrement Complet Email :</b> Civilit�, Nom, Pr�nom, Soci�t�, E-mail<br />
                    </li>
                    <li>
                        <b>Formulaire Enregistrement Email :</b> E-mail seulement<br />
                    </li>
                    <li>
                        <b>Formulaire Enregistrement T�l�phone :</b> T�l�phone seulement<br />
                    </li>
                </ul>
                Si de plus, vous cochez la case <b>Anonymat :</b> vos interview�s n'auront pas � s'enregistrer pour r�pondre � votre questionnaire, l'enregistrement d'un interview� se fera alors automatiquement. Quel que soit le lien que vous utilisez.
                </td>
            </tr>
        </table>
        </asp:Panel>
    
        <table border="0" cellspacing="5px" class="TableQuestionStyle" width="100%">
        <tr>
            <td width="16" rowspan="2" valign="top" >
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="Server" 
                    AutoCollapse="false"  
                    AutoExpand="false"
                    TargetControlID="PanelAide3"
                    ExpandControlID="PanelControl3"
                    CollapseControlID="PanelControl3" 
                    Collapsed="true"
                    ImageControlID="Image1"    
                    ExpandedImage="~/App_Themes/Sodevlog/Images/help.gif"
                    CollapsedImage="~/App_Themes/Sodevlog/Images/help.gif"
                    SuppressPostBack="true"
                    SkinID="CollapsiblePanel" />  
                <asp:Panel ID="PanelControl3" runat="server" CssClass="CollapsePanelHeader"> 
                    <img src="../App_Themes/Sodevlog/Images/help.gif" border="0" alt ="Cliquez ici pour afficher l'aide"/>
                </asp:Panel>
            </td>        
            <td align="right" width="216px">
                <label class="LabelStyle" title="Donner la possibilit� d'interviewer des contacts par un lien vers l'un des Formulaires d'enregistrement">
                Invitation par formulaire :</label>
            </td>
            <td align="left">
                <asp:CheckBox ID="CheckBoxAnonyme" AutoPostBack="true" runat="server" CssClass="TextBoxStyle" 
                    Width="215px" OnCheckedChanged="CheckBoxAnonyme_CheckedChanged" />
            </td>
            <td rowspan="2">
            &nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" class="TdLabelInvitationStyle" colspan="2">
                <table runat="server" id="TableLienEnregistrement" border="0" cellpadding="0" cellspacing="20" style="padding-left:40px;">
                <tr>
                    <td>
                        <label style="color:Blue;font-weight:bold;height:20px">Formulaires d'enregistrement de l'Interview�</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- Complet -->
                        <span class="SpanHyperLinkStyle">
                        <asp:HyperLink ID="HyperLinkInvitationEnregistrementComplet" runat="server" 
                            CssClass="HyperLinkStyle" Text="Invitation Formulaire Enregistrement Complet Email et T�l�phone" 
                            ToolTip="Invitez des contacts � s'enregistrer pour ce questionnaire, voir l'invitation enregistrement" />
                        </span>
                        <br />
                        <asp:TextBox ID="TextBoxInvitationEnregistrementComplet" 
                        CssClass="TextBoxLienStyle" 
                        ReadOnly="true" 
                        runat="server"  
                        Width="480px" 
                        TextMode="MultiLine" 
                        Rows="3"
                        ToolTip="Copier ce code Html pour cr�er un lien vers votre questionnaire dans votre page web." />
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- Complet Email (pas de telephone)-->
                        <span class="SpanHyperLinkStyle">
                        <asp:HyperLink ID="HyperLinkInvitationEnregistrementCompletEmail" runat="server" 
                            CssClass="HyperLinkStyle" Text="Invitation Formulaire Enregistrement Complet Email" 
                            ToolTip="Invitez des contacts � s'enregistrer pour ce questionnaire, voir l'invitation enregistrement" />
                        </span>
                        <br />
                        <asp:TextBox ID="TextBoxInvitationEnregistrementCompletEmail" 
                        CssClass="TextBoxLienStyle" 
                        ReadOnly="true" 
                        runat="server"  
                        Width="480px" 
                        TextMode="MultiLine" 
                        Rows="3"
                        ToolTip="Copier ce code Html pour cr�er un lien vers votre questionnaire dans votre page web." />
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- Email -->
                        <span class="SpanHyperLinkStyle">
                        <asp:HyperLink ID="HyperLinkInvitationEnregistrementEmail" runat="server" 
                            CssClass="HyperLinkStyle" Text="Invitation Formulaire Enregistrement Email" 
                            ToolTip="Invitez des contacts par email pour ce questionnaire, voir l'invitation" />
                        </span>
                        <br />
                        <asp:TextBox ID="TextBoxInvitationEnregistrementEmail" 
                        CssClass="TextBoxLienStyle" 
                        ReadOnly="true" 
                        runat="server"  
                        Width="480px" 
                        TextMode="MultiLine" 
                        Rows="3"
                        ToolTip="Copier ce code Html pour cr�er un lien vers votre questionnaire dans votre page web." />               
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- Telephone -->
                        <span class="SpanHyperLinkStyle">
                        <asp:HyperLink ID="HyperLinkInvitationEnregistrementTelephone" runat="server" 
                            CssClass="HyperLinkStyle" Text="Invitation Formulaire Enregistrement Telephone" 
                            ToolTip="Invitez des contacts par t�l�phone pour ce questionnaire, voir l'invitation" />
                        </span>
                        <br />
                        <asp:TextBox ID="TextBoxInvitationEnregistrementTelephone" 
                        CssClass="TextBoxLienStyle" 
                        ReadOnly="true" 
                        runat="server"  
                        Width="480px" 
                        TextMode="MultiLine" 
                        Rows="3"
                        ToolTip="Copier ce code Html pour cr�er un lien vers votre questionnaire dans votre page web." />               
                    </td>
                </tr>
                </table>
            </td>
        </tr>
        </table>

    </asp:Panel> <!-- PanelInviationFormulaire -->

    
    <!-- Invitation par lien sur un formulaire d'authentification  -->
    <asp:Panel ID="PanelInviationFormulaireAuthentification" runat="server">
    
        <asp:Panel ID="PanelAide4" runat="server" class="PanelAideStyle">
        <table class="TableCollapsePanel">
            <tr>
                <td>
                <b>Formulaires d'authentification de l'Interview�</b><br />
                L'interview�s est enregistr� dans la base des contacts � interviewer, il doit s'authentifier pour r�pondre � votre questionnaire.<br />
                <ul>
                    <li>
                        <b>Invitation Formulaire d'authentification Email et Code d'acc�s :</b> l'interview� s'authentifie par son email et son code d'acc�s.<br />
                        Vous d�livr� ces informations � vos interview�s en pla�ant dans l'email que vous envoyez, les m�ta-mots <b>%%ADRESSE_EMAIL%%</b>, <b>%%CODE_ACCES%%</b> et <b>%%LOG%%</b>.<br />
                        <br />
                    </li>
                    <li>
                        <b>Invitation Formulaire d'authentification T�l�phone et Code d'acc�s :</b> l'enqu�teur authentifie l'interview� au moment de recueillir ses r�ponses par t�l�phone.<br />
                    </li>
                </ul>   
                </td>
            </tr>
        </table>
        </asp:Panel>

        <table border="0" cellspacing="5px" class="TableQuestionStyle" width="100%">
        <tr>
            <td width="16" rowspan="2" valign="top" >
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="Server" 
                    AutoCollapse="false"  
                    AutoExpand="false"
                    TargetControlID="PanelAide4"
                    ExpandControlID="PanelControl4"
                    CollapseControlID="PanelControl4" 
                    Collapsed="true"
                    ImageControlID="Image1"    
                    ExpandedImage="~/App_Themes/Sodevlog/Images/help.gif"
                    CollapsedImage="~/App_Themes/Sodevlog/Images/help.gif"
                    SuppressPostBack="true"
                    SkinID="CollapsiblePanel" />  
                <asp:Panel ID="PanelControl4" runat="server" CssClass="CollapsePanelHeader"> 
                    <img src="../App_Themes/Sodevlog/Images/help.gif" border="0" alt ="Cliquez ici pour afficher l'aide"/></asp:Panel>
            </td>        
            <td align="right" width="240px">
                <label class="LabelStyle" title="Utiliser les liens vers l'un des Formulaires d'authentification">
                Formulaires d'authentifaction :</label>
                &nbsp;
                <asp:ImageButton ID="ImageButtonLinkAuthentification" runat="server" 
                    ImageUrl="~/Images/expand.jpg" onclick="ImageButtonLinkAuthentification_Click" 
                    ToolTip="Afficher le volet des liens vers les formulaires d'authentification" />
            </td>
            <td rowspan="2">
            &nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" class="TdLabelInvitationStyle" colspan="2">
                <table runat="server" id="TableTableLienAuthentification" border="0" cellpadding="0" cellspacing="20" style="padding-left:40px;" visible="false">
                <tr>
                    <td>
                        <label style="color:Blue;font-weight:bold;height:20px">Formulaires d'authentification de l'Interview�</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- Adresse Email et Code d'Acces -->
                        <span class="SpanHyperLinkStyle">
                        <asp:HyperLink ID="HyperLinkInvitationEmailCodeAcces" runat="server" 
                            CssClass="HyperLinkStyle" Text="Invitation Formulaire d'authentification Email et Code d'acc�s" 
                            ToolTip="Invitez des contacts � s'authentifier pour ce questionnaire, format codes d'acc�s et adresse email, voir la page d'invitation" />
                        </span>
                        <br />
                        <asp:TextBox ID="TextBoxInvitationEmailCodeAcces" 
                        CssClass="TextBoxLienStyle" 
                        ReadOnly="true" 
                        runat="server"  
                        Width="480px" 
                        TextMode="MultiLine" 
                        Rows="3"
                        ToolTip="Copier ce code Html pour cr�er un lien vers votre questionnaire dans votre page web." /> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- T�l�phone et Code d'Acces -->
                        <span class="SpanHyperLinkStyle">
                        <asp:HyperLink ID="HyperLinkInvitationTelephoneCodeAcces" runat="server" 
                            CssClass="HyperLinkStyle" Text="Invitation Formulaire d'authentification T�l�phone et Code d'acc�s" 
                            ToolTip="Invitez des contacts � s'authentifier pour ce questionnaire, format codes d'acc�s et adresse email, voir la page d'invitation" />
                        </span>
                        <br />
                        <asp:TextBox ID="TextBoxInvitationTelehponeCodeAcces" 
                        CssClass="TextBoxLienStyle" 
                        ReadOnly="true" 
                        runat="server"  
                        Width="480px" 
                        TextMode="MultiLine" 
                        Rows="3"
                        ToolTip="Copier ce code Html pour cr�er un lien vers votre questionnaire dans votre page web." /> 
                    </td>
                </tr>
                </table>
            </td>
        </tr>
        </table>
        
    </asp:Panel> <!-- PanelInviationFormulaire -->
        
        
    <!-- Publication -->
    <asp:Panel ID="PanelPublication" runat="server">
    <br />
    <table border="0" cellspacing="5px" class="TableQuestionStyle" width="100%">
        <tr>
            <td align="right" width="16px" rowspan="2">
            &nbsp;
            </td>
            <td align="right" width="216px" title="Publier les r�sultats du Questionnaire en utilisant un lien web.">
                <label class="LabelStyle">Publier :</label>
            </td>
            <td align="left">
                <asp:CheckBox ID="CheckBoxPublierQuestionnaire" AutoPostBack="true" runat="server" Width="215px" OnCheckedChanged="CheckBoxPublierQuestionnaire_CheckedChanged" />
            </td>
            <td rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="TdLabelInvitationStyle" colspan="2">
                <table runat="server" id="TableLienPublication" border="0" cellpadding="0" cellspacing="20" style="padding-left:40px;">
                <tr>
                    <td>
                        <span class="SpanHyperLinkStyle">
                        <asp:HyperLink ID="HyperLinkPublication" runat="server" 
                            CssClass="HyperLinkStyle" Text="Lien Formulaire de Publication" 
                            ToolTip="Voir la page de publication des r�sultats, des statistiques du Questionnaire" />
                        </span>
                        <br />
                        <asp:TextBox ID="TextBoxPublication"
                        CssClass="TextBoxLienStyle" 
                        ReadOnly="true" 
                        runat="server"  
                        Width="480px" 
                        TextMode="MultiLine" 
                        Rows="3"
                        ToolTip="Copier ce code Html pour cr�er un lien vers votre les statistiques de votre questionnaire dans votre page web." />                               
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
    </asp:Panel>
    
    <!-- Cloture -->
    <asp:Panel ID="PanelCloture" runat="server">
    <br />
    <table border="0" cellspacing="5px" class="TableQuestionStyle" width="100%">
        <tr>
            <td align="right" width="236px" title="Indiquer aux interview�s que le Questionnaire est cl�tur�, qu'ils ne peuvent plus y r�pondre">
                <asp:Label ID="LabelBloque" runat="server" class="LabelStyle" 
                    Text="Cl�tur� :" />
            </td>
            <td align="left" class="TdTextBoxStyle">
                <asp:CheckBox ID="CheckBoxBloque" runat="server" CssClass="TextBoxStyle" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
    
    <!-- Compteur de question -->
    <asp:Panel ID="PanelCompteurQuestion" runat="server">
    <br />
    <table border="0" cellspacing="5px" class="TableQuestionStyle" width="100%">
        <tr>
            <td align="right" width="236px" title="Afficher le compteur de Questions pour chaque question">
                <asp:Label ID="Label1" runat="server" class="LabelStyle" 
                    Text="Afficher le compteur :" />
            </td>
            <td align="left" class="TdTextBoxStyle">
                <asp:CheckBox ID="CheckBoxAfficherCompteur" runat="server" CssClass="TextBoxStyle" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>

    </asp:Panel><!-- PanelQuestionnaire -->

    <asp:Panel ID="PanelQuestionnaireBloque" runat="server" Visible="false">
    <table style="border:solid 1px" cellpadding="0" cellspacing="0" width="80%">
        <tr>
            <td height="180px">
                <label>Questionnaire bloqu� pendant la campagne d'interview.</label>
            </td>
        </tr>
    </table>
    </asp:Panel>

    <table border="0" cellpadding="10" cellspacing="0" width="100%">
        <tr>
            <td align="left">
                <asp:ImageButton ID="ImageButtonExpandListQuestionnaire" runat="server" 
                    ImageUrl="~/Images/expand.jpg" onclick="ImageButtonExpandListQuestionnaire_Click" 
                    ToolTip="Afficher la liste de vos Questionnaires" />
            </td>
        </tr>
        <tr id="TrVoletListQuestionnaire" runat="server">
            <td align="center">
                <asp:HiddenField ID="HiddenFieldMembreGUID" runat="server" />
                <asp:SqlDataSource ID="SqlDataSourceMembreQuestionnaire" Runat="server" ConnectionString="<%$ ConnectionStrings:QuestionnaireDB %>" />                   
                <asp:DataList ID="DataListMembreQuestionnaire" runat="server" DataSourceID="SqlDataSourceMembreQuestionnaire">
                    <ItemStyle CssClass="LabelBlueStyle" />
                    <ItemTemplate>
                        <asp:Label ID="onsenfou1" runat="server" Text='<%# Eval("Description") + ":" + Eval("CodeAcces") %>' ></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
        
    <table cellpadding="2" width="100%" border="0">
        <tr>
            <td width="30%">
            </td>
            <td class="TdControlButtonStyle">
                <UserControl:RolloverButton ID="ButtonSave" runat="server" OnClick="ButtonSave_Click"/>                
            </td>
            <td>
                <UserControl:RolloverButton ID="ButtonCopier" runat="server" Text="Copier" ToolTip="Copier un Questionnaire" OnClick="ButtonCopier_Click"/>                
            </td>
            <td>
                <UserControl:RolloverButton ID="ButtonSupprimer" runat="server" Text="Supprimer" ToolTip="Supprimer le Questionnaire et les objets associ�s" OnClick="ButtonSupprimer_Click"/>                
            </td>
            <td>
                <UserControl:RolloverButton ID="ButtonAjouterQuestion" runat="server" Text="Ajouter" ToolTip="Ajoutez des Questions � vos questionnaires" OnClick="ButtonAjouterQuestion_Click"/>                
            </td>
            <td width="30%">
            </td>
        </tr>
    </table>

    <table style="border:none" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td height="30px" align="center">
                <asp:Label ID="ValidationMessage" CssClass="LabelValidationMessageStyle" Runat="server" Visible="false" />
            </td>
        </tr>
    </table>
    
</div>
</div>
</asp:Content>