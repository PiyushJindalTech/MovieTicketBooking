﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.Master" AutoEventWireup="true" EnableEventValidation="false" EnableViewStateMac="false" EnableViewState="false" CodeBehind="Booking.aspx.cs" Inherits="MovieBooking.User.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../css/booking.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="plane">
        <div class="cockpit">
            <h1>Please select a seat</h1>
        </div>
        <div class="exit exit--front fuselage">
        </div>
        <ol class="cabin fuselage">
            <li class="row row--1">
                <ol class="seats" type="A">
                    <li class="seat">
                        <input type="checkbox" id="1A" />
                        <label for="1A">1A</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="1B" />
                        <label for="1B">1B</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="1C" />
                        <label for="1C">1C</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="1D" />
                        <label for="1D">Occupied</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="1E" />
                        <label for="1E">1E</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="1F" />
                        <label for="1F">1F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--2">
                <ol class="seats" type="A">
                    <li class="seat">
                        <input type="checkbox" id="2A" />
                        <label for="2A">2A</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="2B" />
                        <label for="2B">2B</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="2C" />
                        <label for="2C">2C</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="2D" />
                        <label for="2D">2D</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="2E" />
                        <label for="2E">2E</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="2F" />
                        <label for="2F">2F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--3">
                <ol class="seats" type="A">
                    <li class="seat">
                        <input type="checkbox" id="3A" />
                        <label for="3A">3A</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="3B" />
                        <label for="3B">3B</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="3C" />
                        <label for="3C">3C</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="3D" />
                        <label for="3D">3D</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="3E" />
                        <label for="3E">3E</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="3F" />
                        <label for="3F">3F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--4">
                <ol class="seats" type="A">
                    <li class="seat">
                        <input type="checkbox" id="4A" />
                        <label for="4A">4A</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="4B" />
                        <label for="4B">4B</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="4C" />
                        <label for="4C">4C</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="4D" />
                        <label for="4D">4D</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="4E" />
                        <label for="4E">4E</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="4F" />
                        <label for="4F">4F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--5">
                <ol class="seats" type="A">
                    <li class="seat">
                        <input type="checkbox" id="5A" />
                        <label for="5A">5A</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="5B" />
                        <label for="5B">5B</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="5C" />
                        <label for="5C">5C</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="5D" />
                        <label for="5D">5D</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" disabled id="5E" />
                        <label for="5E">5E</label>
                    </li>
                    <li class="seat">
                        <input type="checkbox" id="5F" />
                        <label for="5F">5F</label>
                    </li>
                </ol>
            </li>
          
        </ol>
        <div class="exit exit--back fuselage">
        <%--</div>--%>
        <div class="d-flex justify-content-center">
            <asp:Button ID="btnProceed" runat="server" Text="Proceed" class="btn btn-danger"/>
        </div>
    </div>
</asp:Content>
