<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.Master" AutoEventWireup="true" EnableEventValidation="false" EnableViewStateMac="false" EnableViewState="false" CodeBehind="Booking.aspx.cs" Inherits="MovieBooking.User.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../css/booking.css" rel="stylesheet" />
    <script>
        function disableBookedSeat(disabledSeats) {
            debugger;
            console.log(disabledSeats);
            let seats = disabledSeats.split(',');
            for (i = 0; i < seats.length ; i++) {
                var seat = document.getElementById(seats[i]);
                seat.disabled = true;
            }
        }
    </script>
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
                        <asp:CheckBox ID="A1" runat="server" Text="A1" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="B1" runat="server" Text="B1" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="C1" runat="server" Text="C1" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="D1" runat="server" Text="D1" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="E1" runat="server" Text="E1" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="F1" runat="server" Text="F1" ClientIDMode="Static" />
                    </li>
                </ol>
            </li>
            <li class="row row--2">
                <ol class="seats" type="A">
                    <li class="seat">
                        <asp:CheckBox ID="A2" runat="server" Text="A2" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="B2" runat="server" Text="B2" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="C2" runat="server" Text="C2" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="D2" runat="server" Text="D2" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="E2" runat="server" Text="E2" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="F2" runat="server" Text="F2" ClientIDMode="Static" />
                    </li>
                </ol>
            </li>
            <li class="row row--3">
                <ol class="seats" type="A">
                    <li class="seat">
                        <asp:CheckBox ID="A3" runat="server" Text="A3" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="B3" runat="server" Text="B3" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="C3" runat="server" Text="C3" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="D3" runat="server" Text="D3" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="E3" runat="server" Text="E3" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="F3" runat="server" Text="F3" ClientIDMode="Static" />
                    </li>
                </ol>
            </li>
            <li class="row row--4">
                <ol class="seats" type="A">
                    <li class="seat">
                        <asp:CheckBox ID="A4" runat="server" Text="A4" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="B4" runat="server" Text="B4" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="C4" runat="server" Text="C4" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="D4" runat="server" Text="D4" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="E4" runat="server" Text="E4" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="F4" runat="server" Text="F4" ClientIDMode="Static" />
                    </li>
                </ol>
            </li>
            <li class="row row--5">
                <ol class="seats" type="A">
                    <li class="seat">
                        <asp:CheckBox ID="A5" runat="server" Text="A5" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="B5" runat="server" Text="B5" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="C5" runat="server" Text="C5" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="D5" runat="server" Text="D5" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="E5" runat="server" Text="E5" ClientIDMode="Static" />
                    </li>
                    <li class="seat">
                        <asp:CheckBox ID="F5" runat="server" Text="F5" ClientIDMode="Static" />
                    </li>
                </ol>
            </li>

        </ol>
        <div class="exit exit--back fuselage">
        </div>
        <div class="d-flex justify-content-center">
            <asp:Button ID="btnProceed" runat="server" Text="Proceed" class="btn btn-danger" OnClick="btnProceed_Click" />
        </div>
        <asp:HiddenField ID="hdnMovieID" runat="server" />
    </div>

</asp:Content>
