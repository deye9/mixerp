/********************************************************************************
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
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MixERP.Net.Common;
using MixERP.Net.Common.Helpers;
using MixERP.Net.Entities.Office;
using MixERP.Net.FrontEnd.Cache;
using MixERP.Net.FrontEnd.Data.Helpers;
using MixERP.Net.FrontEnd.Data.Office;
using Resources;
using Serilog;

namespace MixERP.Net.FrontEnd
{
    public partial class SignIn : Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            this.AddCss();
            this.AddJavascript();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.CheckDbConnectivity();
            PageUtility.CheckInvalidAttempts(this.Page);

            try
            {
                this.BindBranchDropDownList();
                this.BindLanguageDropDownList();
            }
            catch
            {
                //Could not bind the branch office dropdownlist.
                //The target database does not contain mixerp schema.
                //Swallow the exception
                //and redirect to application offline page.
                this.RedirectToOfflinePage();
                return;
            }

            if (BranchSelect.Items.Count.Equals(0))
            {
                this.Response.Redirect("~/Install.aspx");
            }

            if (!this.IsPostBack)
            {
                if (this.User.Identity.IsAuthenticated)
                {
                    long signInId = Conversion.TryCastLong(this.User.Identity.Name);

                    if (signInId > 0)
                    {
                        CurrentUser.SetSignInView();
                        this.RedirectToDashboard();
                    }
                }
            }
        }

        private void BindBranchDropDownList()
        {
            IEnumerable<DbGetOfficesResult> offices = Offices.GetOffices();

            this.BranchSelect.DataTextField = "OfficeName";
            this.BranchSelect.DataValueField = "OfficeId";
            this.BranchSelect.DataSource = offices;
            this.BranchSelect.DataBind();
        }

        private void BindLanguageDropDownList()
        {
            LanguageSelect.DataTextField = "Text";
            LanguageSelect.DataValueField = "Value";
            LanguageSelect.DataSource = GetLanguages();
            LanguageSelect.DataBind();

            for (int i = 0; i < LanguageSelect.Items.Count; i++)
            {
                if (LanguageSelect.Items[i].Value.Equals(CultureInfo.CurrentUICulture.Name))
                {
                LanguageSelect.Items[i].Selected = true;
                    break;
                }
            }
        }

        private void CheckDbConnectivity()
        {
            Log.Verbose("Checking if database server is available.");
            if (!ServerConnectivity.IsDbServerAvailable())
            {
                Log.Warning("Could not connect to database server.");
                this.RedirectToOfflinePage();
            }
        }

        private void RedirectToDashboard()
        {
            this.Response.Redirect("~/Dashboard/Index.aspx", true);
        }

        private void RedirectToOfflinePage()
        {
            Log.Debug("Redirecting to offline page.");
            this.Response.Redirect("~/Site/offline.html");
        }

        private void AddCss()
        {
            PageUtility.AddCssFiles(this.Page, "master-page", "/bundles/stylesheets/master-page.min.css");
        }

        private void AddJavascript()
        {
            PageUtility.RegisterJavascriptFiles("bundles_libraries_min", "/bundles/scripts/libraries.min.js", this.Page);
            PageUtility.RegisterJavascriptFiles("sha", "/Scripts/jssha1.5/src/sha.js", this.Page);
            PageUtility.RegisterJavascriptFiles("SignIn", "/Scripts/Pages/SignIn.aspx.js", this.Page);

            string challenge = Guid.NewGuid().ToString().Replace("-", "");
            this.Session["Challenge"] = challenge;

            string script = JSUtility.GetVar("challenge", challenge);
            script += JSUtility.GetVar("shortDateFormat", LocalizationHelper.GetShortDateFormat());
            script += JSUtility.GetVar("thousandSeparator", LocalizationHelper.GetThousandSeparator());
            script += JSUtility.GetVar("decimalSeparator", LocalizationHelper.GetDecimalSeparator());
            script += JSUtility.GetVar("currencyDecimalPlaces", LocalizationHelper.GetCurrencyDecimalPlaces());

            PageUtility.RegisterJavascript("SignInPage_Vars", script, this.Page, true);
        }

        private static Collection<ListItem> GetLanguages()
        {
            string[] cultures = ConfigurationHelper.GetMixERPParameter("cultures").Split(',');
            Collection<ListItem> items = new Collection<ListItem>();

            foreach (string culture in cultures)
            {
                string cultureName = culture.Trim();

                foreach (
                    CultureInfo infos in
                        CultureInfo.GetCultures(CultureTypes.AllCultures)
                            .Where(x => x.TwoLetterISOLanguageName.Equals(cultureName)))
                {
                    items.Add(new ListItem(infos.NativeName, infos.Name));
                }
            }

            return items;
        }

    }
}