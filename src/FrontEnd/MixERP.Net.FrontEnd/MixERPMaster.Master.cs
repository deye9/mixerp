﻿/********************************************************************************
Copyright (C) Binod Nepal, Mix Open Foundation (http://mixof.org).

This file is part of MixERP.

MixERP is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

MixERP is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with MixERP.  If not, see <http://www.gnu.org/licenses/>.
***********************************************************************************/

using System;
using MixERP.Net.Common;
using System.Globalization;
using MixERP.Net.FrontEnd.Base;
using MixERP.Net.FrontEnd.Cache;

namespace MixERP.Net.FrontEnd
{
    public partial class MixERPMaster : MixERPMasterPage
    {

        protected void Page_Init(object sender, EventArgs e)
        {
            PageUtility.AddCssFiles(this.Page, "master-page", "/bundles/stylesheets/master-page.min.css");
            PageUtility.AddCssFiles(this.Page, "master-page", "https://fonts.googleapis.com/css?family=Titillium+Web");

            PageUtility.RegisterJavascriptFiles("bundles_master_min", "/bundles/scripts/master-page.min.js", this.Page);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.BranchNameLiteral.Text = CurrentUser.GetSignInView().OfficeName;
            this.SignOutLiteral.Text = Resources.Titles.SignOut;
            this.UserGreetingLiteral.Text = String.Format(CultureInfo.CurrentCulture, Resources.Labels.UserGreeting, CurrentUser.GetSignInView().UserName);
            this.ChangePasswordLiteral.Text = Resources.Titles.ChangePassword;
            this.ManageProfileLiteral.Text = Resources.Titles.ManageProfile;
            //this.MixERPDocumentationLiteral.Text = Resources.Titles.MixERPDocumentation;
            this.NotificationLiteral.Text = Resources.Titles.Notifications;
        }
    }
}