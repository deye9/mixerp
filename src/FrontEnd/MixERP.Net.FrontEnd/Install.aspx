﻿<%-- 
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
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Install.aspx.cs" Inherits="MixERP.Net.FrontEnd.Install" Culture="auto" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Scripts/semantic-ui/semantic.min.css" rel="stylesheet"/>
    <script src="Scripts/jquery-2.2.1.js"></script>
    <script src="Scripts/semantic-ui/semantic.min.js"></script>
    <script src="bundles/scripts/libraries.js"></script>
    <style type="text/css">
        body { background-color: #FFF; }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="ui page grid">
        <div class="column">
            <img src="Resource/Static/images/mixerp-logo-light.png"/>
            <div class="ui header">
                <div class="content">
                    <asp:Literal runat="server" Text="<%$Resources:Titles, InstallMixERP %>"/>
                </div>
            </div>

            <div class="ui small form segment" style="width: 700px;">
                <div class="ui header">
                    <div class="content">
                        <asp:Literal runat="server" Text="<%$Resources:Titles, AboutYourOffice %>"/>
                    </div>
                </div>
                <div class="ui divider"></div>
                <div class="field">
                    <label for="OfficeNameInputText">
                        <asp:Literal runat="server" Text="<%$Resources:Titles, OfficeName %>"/>
                    </label>
                    <input type="text" maxlength="150" id="OfficeNameInputText"/>
                </div>
                <div class="three fields">
                    <div class="field">
                        <label for="OfficeCodeInputText">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, OfficeCode %>"/>
                        </label>
                        <input type="text" maxlength="12" id="OfficeCodeInputText"/>
                    </div>
                    <div class="field">
                        <label for="NickNameInputText">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, OfficeNickName %>"/>
                        </label>
                        <input type="text" maxlength="50" id="NickNameInputText"/>
                    </div>
                    <div class="field">
                        <label for="RegistrationDateInputText">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, RegistrationDate %>"/>
                        </label>
                        <input type="text" maxlength="50" id="RegistrationDateInputText"/>
                    </div>
                </div>

                <div class="ui header">
                    <div class="content">
                        <asp:Literal runat="server" Text="<%$Resources:Questions, WhatIsYourHomeCurrency %>"/>
                    </div>
                </div>
                <div class="ui divider"></div>
                <div class="four fields">
                    <div class="field">
                        <label for="CurrencyCodeInputText">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, CurrencyCode %>"/>
                        </label>
                        <input type="text" maxlength="12" id="CurrencyCodeInputText"/>
                    </div>
                    <div class="field">
                        <label for="CurrencySymbolInputText">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, CurrencySymbol %>"/>
                        </label>
                        <input type="text" maxlength="48" id="CurrencySymbolInputText"/>
                    </div>
                    <div class="field">
                        <label for="CurrencyNameInputText">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, CurrencyName %>"/>
                        </label>
                        <input type="text" maxlength="48" id="CurrencyNameInputText"/>
                    </div>
                    <div class="field">
                        <label for="HundredthNameInputText">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, HundredthName %>"/>
                        </label>
                        <input type="text" maxlength="48" id="HundredthNameInputText"/>
                    </div>
                </div>

                <div class="ui header">
                    <div class="content">
                        <asp:Literal runat="server" Text="<%$Resources:Titles, CreateaUserAccountforYourself %>"/>
                    </div>
                </div>
                <div class="ui divider"></div>
                <div class="two fields">
                    <div class="field">
                        <label for="AdminNameInputText">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, YourName %>"/>
                        </label>
                        <input type="text" maxlength="100" id="AdminNameInputText"/>
                    </div>
                    <div class="field">
                        <label for="UsernameInputText">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, Username %>"/>
                        </label>
                        <input type="text" maxlength="50" id="UsernameInputText"/>
                    </div>
                </div>
                <div class="two fields">
                    <div class="field">
                        <label for="PasswordInputPassword">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, Password %>"/>
                        </label>
                        <input type="password" maxlength="50" id="PasswordInputPassword"/>
                    </div>
                    <div class="field">
                        <label for="ConfirmPasswordInputPassword">
                            <asp:Literal runat="server" Text="<%$Resources:Titles, ConfirmPassword %>"/>
                        </label>
                        <input type="password" maxlength="50" id="ConfirmPasswordInputPassword"/>
                    </div>
                </div>

                <button type="button" class="ui small red button" id="SaveButton">
                    <asp:Literal runat="server" Text="<%$Resources:Titles, Save %>"/>
                </button>
            </div>
            <div class="ui page dimmer">
                <div class="content">
                    <div class="center">
                        <div class="ui yellow huge icon header">
                            <i class="ui inverted yellow setting loading icon"></i>
                            <asp:Literal runat="server" Text="<%$Resources:Titles, Saving %>"/>
                            <div class="ui yellow sub header">
                                <asp:Literal runat="server" Text="<%$Resources:Labels, JustAMomentPlease %>"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<script src="Scripts/Pages/Install.aspx.js"></script>
</body>
</html>