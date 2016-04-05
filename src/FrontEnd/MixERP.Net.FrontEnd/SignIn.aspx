<%--
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
along with MixERP.  If not, see <http://www.gnu.org/licenses />.
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MixERP.Net.FrontEnd.SignIn" %>

<!DOCTYPE html>

<html>

<head runat="server">
    <title>Sign In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body id="SignInBody">

    <div class="ui inverted segment">
        <div class="ui inverted secondary menu">
            <a class="item" href="/SignIn.aspx">
                <img src="Resource/Static/images/mixerp-logo.png" />
            </a>
        </div>
    </div>

    <form id="form1" runat="server">

        <div class="ui page dimmer">
            <div class="content">
                <div class="center">
                    <div class="ui yellow huge icon header">
                        <i class="ui inverted yellow setting loading icon"></i>Signing In
                        <div class="ui yellow sub header">Just a moment, please!</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="ui stackable grid" style="color:#676a6c;">

            <div class="one wide column"></div>

            <div class="five wide column">
                <div class="very relaxed vertically padded section signin-form">
                
                    <div class="ui grey bottom padded thin huge header">Benefits</div>
                    <div class="ui divider"></div>

                    <p>With MixERP on the cloud, you save huge upfront infrastructure costs. You can save even more by opting to quarterly (10% off), semiannual (15% off), or yearly (20% off) billing.</p>
                    <div class="ui very relaxed divided vpad8 list">
                        <div class="item">
                            <i class="big grey money icon"></i>
                            <div class="content">
                                <div class="ui bottom padded small grey header">Competitive Pricing</div>
                                <p>MixERP's cloud pricing is very competitive and fair, enabling you to get the most out of your money, and of course, without any hidden fees or catches!!!</p>
                            </div>
                        </div>
                        <div class="item">
                            <i class="big grey database icon"></i>
                            <div class="content">
                                <div class="ui bottom padded grey small header">Zero Maintenance Cost</div>
                                <p>You do not need to worry a thing about maintenance because we will do the heavy lifting round the clock while you focus on your work.</p>
                            </div>
                        </div>
                        <div class="item">
                            <i class="big grey smile icon"></i>
                            <div class="content">
                                <div class="ui bottom padded grey small header">Rapid Support</div>
                                <p>We have developed a tailor-designed <a href="/helpdesk">helpdesk support system</a> and when you need to talk, we generally respond within hours if not minutes.</p>
                            </div>
                        </div>
                        <div class="item">
                            <i class="big grey clock icon"></i>
                            <div class="content">
                                <div class="ui bottom padded grey small header">Round the Clock Support</div>
                                <p>Are you worried who's going to look after if something goes wrong during the weekends or holidays? Be assured that we now have 24 x 7 x 365 email support for you. You are in a good company!!!</p>
                            </div>
                        </div>
                        <div class="item">
                            <i class="big grey checkmark icon"></i>
                            <div class="content">
                                <div class="ui bottom padded grey small header">Unlimited Supports</div>
                                <p>There is no event based support cost for Professional Edition users. You get free unlimited support events no matter how many users you purchased.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="five wide column">

                <div class="very relaxed vertically padded section signin-form">
                
                    <div class="ui grey bottom padded thin huge header">Features</div>
                    <div class="ui divider"></div>
                    
                    <p>MixERP Professional edition is ready to use cloud ERP software with 30-day money back guarantee. The monthly cost covers for everything including hosting, updating, management, and support.</p>
                    
                    <div class="ui very relaxed divided vpad8 list">
                        <div class="item">
                            <i class="big grey block layout icon"></i>
                            <div class="content">
                                <div class="ui bottom padded grey small header">Unlimited Companies</div>
                                <p>You can create unlimited branch offices in a single instance producing various consolidated reports like balance sheet and profit and loss account.</p>
                            </div>
                        </div>
                        <div class="item">
                            <i class="big grey cloud icon"></i>
                            <div class="content">
                                <div class="ui bottom padded grey small header">Automatic Updates</div>
                                <p>You have a peace of mind that your instance of MixERP Professional Edition is automatically updated on a periodic basis unless you don't want us to do that for you.</p>
                            </div>
                        </div>
                        <div class="item">
                            <i class="big grey asterisk icon"></i>
                            <div class="content">
                                <div class="ui bottom padded grey small header">Integrations</div>
                                <p>MixERP Professional Edition has added integrations with third party solutions like CurrencyLayer, OpenExchangeRates, SendGrid, MailGun, and Mandrill.</p>
                            </div>
                        </div>
                        <div class="item">
                            <i class="big grey dollar icon"></i>
                            <div class="content">
                                <div class="ui bottom padded small grey header">Payroll Module</div>
                                <p>The payroll module provides a complete set of salary and wage management features that account for salary tax and employment tax such as Social Security Contribution and Medicare.</p>
                            </div>
                        </div>
                        <div class="item">
                            <i class="big grey smile icon"></i>
                            <div class="content">
                                <div class="ui bottom padded grey small header">Production</div>
                                <p>The production module provides you a unique interface to manage your multi-level bill of materials, routing, production scheduling, and work centers.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="five wide column divided page very relaxed action">
                <div class="signin-form">

                    <div class="ui raised form" style="padding: 24px 48px; background-color: #5757C0;">

                        <div class="ui large header" style="color: white;"><%= Resources.Titles.SignIn %></div>

                        <div class="ui divider"></div>

                        <div class="field">
                            <label for="UsernameInputText" style="color: white;"><%= Resources.Titles.UserId %></label>
                            <div class="ui left icon input">
                                <i class="user icon"></i>
                                <input name="UsernameInputText" type="text" id="UsernameInputText" placeholder="<%= Resources.Titles.UserId %>" />
                            </div>
                        </div>

                        <br />

                        <div class="field">
                            <label for="PasswordInputPassword" style="color: white;"><%= Resources.Titles.Password %></label>
                            <div class="ui left icon input">
                                <i class="lock icon"></i>
                                <input name="PasswordInputPassword" type="password" id="PasswordInputPassword" placeholder="<%= Resources.Titles.Password %>" />
                            </div>
                        </div>

                        <br />

                        <div class="field">
                            <div class="ui toggle checkbox">
                                <input name="RememberInputCheckBox" type="checkbox" id="RememberInputCheckBox" style="background-color: white;" /><label style="color: white;"><%= Resources.Titles.RememberMe %></label>
                            </div>
                        </div>

                        <div class="ui divider"></div>

                        <br />

                        <div class="field">
                            <label for="BranchSelect" style="color: white;"><%= Resources.Titles.SelectYourBranch %></label>
                            <asp:DropDownList name="BranchSelect" ID="BranchSelect" class="ui search dropdown" runat="server"></asp:DropDownList>
                        </div>

                        <br />

                        <div class="field">
                            <label for="LanguageSelect" style="color: white;"><%= Resources.Titles.SelectLanguage %></label>
                            <asp:DropDownList name="LanguageSelect" ID="LanguageSelect" class="ui search dropdown" runat="server"></asp:DropDownList>
                        </div>

                        <br />

                        <div class="exception field" style="color: white;"></div>

                        <div class="field">
                            <input name="SignInButton" type="button" id="SignInButton" value="<%= Resources.Titles.SignIn %>" title="CRTL + RETURN" class="ui fluid large outline submit button" />
                        </div>

                    </div>

                </div>
            </div>

        </div>

    </form>

</body>

</html>

