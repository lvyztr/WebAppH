<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateDetails.aspx.cs" Inherits="WebAppH.Update_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style50 {
            width: 100%;
            height: 676px;
        }
        .auto-style49 {
            height: 23px;
            font-size: x-large;
            text-align: justify;
        }
        .auto-style73 {
            width: 137px;
            text-align: justify;
            height: 43px;
        }
        .auto-style74 {
            width: 86px;
            text-align: justify;
            height: 43px;
        }
        .auto-style75 {
            width: 249px;
            text-align: justify;
            height: 43px;
        }
        .auto-style76 {
            width: 196px;
            text-align: justify;
            height: 43px;
        }
        .auto-style77 {
            width: 262px;
            text-align: justify;
            height: 43px;
        }
        .auto-style78 {
            text-align: justify;
            height: 43px;
            width: 266px;
        }
        .auto-style84 {
            height: 43px;
            width: 266px;
        }
        .auto-style80 {
            width: 86px;
            height: 43px;
        }
        .auto-style81 {
            width: 249px;
            height: 43px;
        }
        .auto-style41 {
            height: 43px;
            font-size: x-large;
        }
        .auto-style79 {
            height: 43px;
        }
        .auto-style82 {
            width: 196px;
            height: 43px;
        }
        .auto-style83 {
            width: 262px;
            height: 43px;
        }
        .auto-style51 {
            width: 137px;
            text-align: justify;
            height: 44px;
        }
        .auto-style52 {
            width: 86px;
            text-align: justify;
            height: 44px;
        }
        .auto-style53 {
            width: 249px;
            text-align: justify;
            height: 44px;
        }
        .auto-style54 {
            width: 196px;
            text-align: justify;
            height: 44px;
        }
        .auto-style55 {
            width: 262px;
            text-align: justify;
            height: 44px;
        }
        .auto-style85 {
            text-align: justify;
            height: 44px;
            width: 266px;
        }
        .auto-style42 {
            height: 44px;
            font-size: x-large;
        }
        .auto-style15 {
            height: 44px;
        }
        .auto-style63 {
            width: 86px;
            height: 44px;
        }
        .auto-style64 {
            width: 249px;
            height: 44px;
        }
        .auto-style65 {
            width: 196px;
            height: 44px;
        }
        .auto-style66 {
            width: 262px;
            height: 44px;
        }
        .auto-style86 {
            height: 44px;
            width: 266px;
        }
        .auto-style56 {
            text-align: left;
            height: 44px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="auto-style50">
        <tr>
            <td class="auto-style49" colspan="6"><strong>Personal Information</strong></td>
        </tr>
        <tr>
            <td class="auto-style73">Title</td>
            <td class="auto-style74">
                <asp:DropDownList ID="drpTitle" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Dr.</asp:ListItem>
                    <asp:ListItem>Ms.</asp:ListItem>
                    <asp:ListItem>Miss.</asp:ListItem>
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                    <asp:ListItem>Prof.</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style75">
                &nbsp;</td>
            <td class="auto-style76">Initial</td>
            <td class="auto-style77">
                <asp:TextBox ID="txtInitial" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style78">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtInitial" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style73">First Name</td>
            <td class="auto-style74">
                <asp:TextBox ID="txtFirstName" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style75">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style76">Last Name</td>
            <td class="auto-style77">
                <asp:TextBox ID="txtLastName" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style78">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtLastName" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style73">Cellphone</td>
            <td class="auto-style74">
                <asp:TextBox ID="txtcell" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style75">
                <asp:RequiredFieldValidator ID="cellValidator" runat="server" ControlToValidate="txtcell" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style76">Email</td>
            <td class="auto-style77">
                <asp:TextBox ID="txtEmail" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style78">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style73">Address</td>
            <td class="auto-style74">
                <asp:TextBox ID="txtAddress" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style75">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style76">Country</td>
            <td class="auto-style77">
                <asp:DropDownList ID="drpCountry" runat="server" Height="17px" Width="186px">
                    <asp:ListItem>Select Country</asp:ListItem>
                    <asp:ListItem>Afghanistan</asp:ListItem>
                    <asp:ListItem>Albania</asp:ListItem>
                    <asp:ListItem>Algeria</asp:ListItem>
                    <asp:ListItem>Andorra</asp:ListItem>
                    <asp:ListItem>Angola</asp:ListItem>
                    <asp:ListItem>Antigua and Barbuda</asp:ListItem>
                    <asp:ListItem>Argentina</asp:ListItem>
                    <asp:ListItem>Armenia</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>Austria</asp:ListItem>
                    <asp:ListItem>Azerbaijan</asp:ListItem>
                    <asp:ListItem>Bahamas</asp:ListItem>
                    <asp:ListItem>Bahrain</asp:ListItem>
                    <asp:ListItem>Bangladesh</asp:ListItem>
                    <asp:ListItem>Barbados</asp:ListItem>
                    <asp:ListItem>Belarus</asp:ListItem>
                    <asp:ListItem>Belgium</asp:ListItem>
                    <asp:ListItem>Belize</asp:ListItem>
                    <asp:ListItem>Benin</asp:ListItem>
                    <asp:ListItem>Bhutan</asp:ListItem>
                    <asp:ListItem>Bolivia</asp:ListItem>
                    <asp:ListItem>Bosnia</asp:ListItem>
                    <asp:ListItem>Botswana</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>Brunei</asp:ListItem>
                    <asp:ListItem>Bulgaria</asp:ListItem>
                    <asp:ListItem>Burkina Faso</asp:ListItem>
                    <asp:ListItem>Burundi</asp:ListItem>
                    <asp:ListItem>Cabo Verde</asp:ListItem>
                    <asp:ListItem>Cambodia</asp:ListItem>
                    <asp:ListItem>Cameroon</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>Central African Republic</asp:ListItem>
                    <asp:ListItem>Chad</asp:ListItem>
                    <asp:ListItem>Chile</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Colombia</asp:ListItem>
                    <asp:ListItem>Comoros</asp:ListItem>
                    <asp:ListItem>Côte d’Ivoire</asp:ListItem>
                    <asp:ListItem>Croatia</asp:ListItem>
                    <asp:ListItem>Cuba</asp:ListItem>
                    <asp:ListItem>Cyprus</asp:ListItem>
                    <asp:ListItem>Czech Republic</asp:ListItem>
                    <asp:ListItem>Democratic Republic of the Congo,</asp:ListItem>
                    <asp:ListItem>Denmark</asp:ListItem>
                    <asp:ListItem>Djibouti</asp:ListItem>
                    <asp:ListItem>Dominica</asp:ListItem>
                    <asp:ListItem>Dominican Republic</asp:ListItem>
                    <asp:ListItem>East Timor (Timor-Leste)</asp:ListItem>
                    <asp:ListItem>Ecuador</asp:ListItem>
                    <asp:ListItem>Egypt</asp:ListItem>
                    <asp:ListItem>El Salvador</asp:ListItem>
                    <asp:ListItem>Equatorial Guinea</asp:ListItem>
                    <asp:ListItem>Eritrea</asp:ListItem>
                    <asp:ListItem>Estonia</asp:ListItem>
                    <asp:ListItem>Eswatini</asp:ListItem>
                    <asp:ListItem>Ethiopia</asp:ListItem>
                    <asp:ListItem>Fiji</asp:ListItem>
                    <asp:ListItem>Finland</asp:ListItem>
                    <asp:ListItem>France</asp:ListItem>
                    <asp:ListItem>Gabon</asp:ListItem>
                    <asp:ListItem>Gambia</asp:ListItem>
                    <asp:ListItem>Georgia</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>Ghana</asp:ListItem>
                    <asp:ListItem>Greece</asp:ListItem>
                    <asp:ListItem>Grenada</asp:ListItem>
                    <asp:ListItem>Guatemala</asp:ListItem>
                    <asp:ListItem>Guinea</asp:ListItem>
                    <asp:ListItem>Guinea-Bissau</asp:ListItem>
                    <asp:ListItem>Guyana</asp:ListItem>
                    <asp:ListItem>Haiti</asp:ListItem>
                    <asp:ListItem>Honduras</asp:ListItem>
                    <asp:ListItem>Hungary</asp:ListItem>
                    <asp:ListItem>Iceland</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Indonesia</asp:ListItem>
                    <asp:ListItem>Iran</asp:ListItem>
                    <asp:ListItem>Iraq</asp:ListItem>
                    <asp:ListItem>Ireland</asp:ListItem>
                    <asp:ListItem>Israel</asp:ListItem>
                    <asp:ListItem>Italy</asp:ListItem>
                    <asp:ListItem>Jamaica</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                    <asp:ListItem>Jordan</asp:ListItem>
                    <asp:ListItem>Kazakhstan</asp:ListItem>
                    <asp:ListItem>Kenya</asp:ListItem>
                    <asp:ListItem>Kiribati</asp:ListItem>
                    <asp:ListItem>Korea, North</asp:ListItem>
                    <asp:ListItem>Korea, South</asp:ListItem>
                    <asp:ListItem>Kosovo</asp:ListItem>
                    <asp:ListItem>Kuwait</asp:ListItem>
                    <asp:ListItem>Kyrgyzstan</asp:ListItem>
                    <asp:ListItem>Laos</asp:ListItem>
                    <asp:ListItem>Latvia</asp:ListItem>
                    <asp:ListItem>Lebanon</asp:ListItem>
                    <asp:ListItem>Lesotho</asp:ListItem>
                    <asp:ListItem>Liberia</asp:ListItem>
                    <asp:ListItem>Libya</asp:ListItem>
                    <asp:ListItem>Liechtenstein</asp:ListItem>
                    <asp:ListItem>Lithuania</asp:ListItem>
                    <asp:ListItem>Luxembourg</asp:ListItem>
                    <asp:ListItem>Madagascar</asp:ListItem>
                    <asp:ListItem>Malawi</asp:ListItem>
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Maldives</asp:ListItem>
                    <asp:ListItem>Mali</asp:ListItem>
                    <asp:ListItem>Malta</asp:ListItem>
                    <asp:ListItem>Marshall Islands</asp:ListItem>
                    <asp:ListItem>Mauritania</asp:ListItem>
                    <asp:ListItem>Mauritius</asp:ListItem>
                    <asp:ListItem>Mexico</asp:ListItem>
                    <asp:ListItem>Micronesia, Federated States of</asp:ListItem>
                    <asp:ListItem>Moldova</asp:ListItem>
                    <asp:ListItem>Monaco</asp:ListItem>
                    <asp:ListItem>Mongolia</asp:ListItem>
                    <asp:ListItem>Montenegro</asp:ListItem>
                    <asp:ListItem>Morocco</asp:ListItem>
                    <asp:ListItem>Mozambique</asp:ListItem>
                    <asp:ListItem>Myanmar (Burma)</asp:ListItem>
                    <asp:ListItem>Namibia</asp:ListItem>
                    <asp:ListItem>Nauru</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>Netherlands</asp:ListItem>
                    <asp:ListItem>New Zealand</asp:ListItem>
                    <asp:ListItem>Nicaragua</asp:ListItem>
                    <asp:ListItem>Niger</asp:ListItem>
                    <asp:ListItem>Nigeria</asp:ListItem>
                    <asp:ListItem>North Macedonia</asp:ListItem>
                    <asp:ListItem>Norway</asp:ListItem>
                    <asp:ListItem>Oman</asp:ListItem>
                    <asp:ListItem>Pakistan</asp:ListItem>
                    <asp:ListItem>Palau</asp:ListItem>
                    <asp:ListItem>Panama</asp:ListItem>
                    <asp:ListItem>Papua New Guinea</asp:ListItem>
                    <asp:ListItem>Paraguay</asp:ListItem>
                    <asp:ListItem>Peru</asp:ListItem>
                    <asp:ListItem>Philippines</asp:ListItem>
                    <asp:ListItem>Poland</asp:ListItem>
                    <asp:ListItem>Portugal</asp:ListItem>
                    <asp:ListItem>Qatar</asp:ListItem>
                    <asp:ListItem>Romania</asp:ListItem>
                    <asp:ListItem>Russia</asp:ListItem>
                    <asp:ListItem>Rwanda</asp:ListItem>
                    <asp:ListItem>Saint Kitts and Nevis</asp:ListItem>
                    <asp:ListItem>Saint Lucia</asp:ListItem>
                    <asp:ListItem>Saint Vincent and the Grenadines</asp:ListItem>
                    <asp:ListItem>Samoa</asp:ListItem>
                    <asp:ListItem>San Marino</asp:ListItem>
                    <asp:ListItem>Sao Tome and Principe</asp:ListItem>
                    <asp:ListItem>Saudi Arabia</asp:ListItem>
                    <asp:ListItem>Senegal</asp:ListItem>
                    <asp:ListItem>Serbia</asp:ListItem>
                    <asp:ListItem>Seychelles</asp:ListItem>
                    <asp:ListItem>Sierra Leone</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Slovakia</asp:ListItem>
                    <asp:ListItem>Slovenia</asp:ListItem>
                    <asp:ListItem>Solomon Islands</asp:ListItem>
                    <asp:ListItem>Somalia</asp:ListItem>
                    <asp:ListItem>South Africa</asp:ListItem>
                    <asp:ListItem>Spain</asp:ListItem>
                    <asp:ListItem>Zambia</asp:ListItem>
                    <asp:ListItem>Zimbabwe</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style84"></td>
        </tr>
        <tr>
            <td class="auto-style73">City</td>
            <td class="auto-style74">
                <asp:TextBox ID="txtCity" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style75">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCity" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style77">&nbsp;</td>
            <td class="auto-style78">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style73">Postal Code</td>
            <td class="auto-style80">
                <asp:TextBox ID="txtPostalCode" runat="server" Width="89px"></asp:TextBox>
            </td>
            <td class="auto-style81">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style77">&nbsp;</td>
            <td class="auto-style78">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41" colspan="6"><strong>Educational Background</strong></td>
        </tr>
        <tr>
            <td class="auto-style79">Matric Year</td>
            <td class="auto-style80">
                <asp:DropDownList ID="drpMatricYear" runat="server" Height="22px" Width="186px">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style82">High School</td>
            <td class="auto-style83">
                <asp:TextBox ID="txtSchool" runat="server" Height="20px" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style84">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtSchool" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style79">Name of University</td>
            <td class="auto-style80">&nbsp;<asp:DropDownList ID="drpUniversty" runat="server" CssClass="auto-style40" Height="20px" Width="186px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>The University of Cape Town</asp:ListItem>
                <asp:ListItem>Stellenbosch University</asp:ListItem>
                <asp:ListItem>University of Pretoria</asp:ListItem>
                <asp:ListItem>University of Witswatersrand</asp:ListItem>
                <asp:ListItem>University of Kwazulu Natal</asp:ListItem>
                <asp:ListItem>University of Western Cape</asp:ListItem>
                <asp:ListItem>Rhodes University</asp:ListItem>
                <asp:ListItem>The University of South Africa</asp:ListItem>
                <asp:ListItem>North West Uiversity</asp:ListItem>
                <asp:ListItem>University of the Free State</asp:ListItem>
                <asp:ListItem>Nelson Mandela University</asp:ListItem>
                <asp:ListItem>Cape Peninsula University of Technology</asp:ListItem>
                <asp:ListItem>Durban University of Technology</asp:ListItem>
                <asp:ListItem>University of Zululand</asp:ListItem>
                <asp:ListItem>Monash University</asp:ListItem>
                <asp:ListItem>Vaal University of Technology</asp:ListItem>
                <asp:ListItem>Central University of Technology</asp:ListItem>
                <asp:ListItem>Walter Sisulu University</asp:ListItem>
                <asp:ListItem>University of Limpopo</asp:ListItem>
                <asp:ListItem>Tshwane University of Technology</asp:ListItem>
                <asp:ListItem>University Of Fort hare</asp:ListItem>
                </asp:DropDownList>
                &nbsp;</td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style82">Degree</td>
            <td class="auto-style83">
                <asp:DropDownList ID="drpDegree" runat="server" Height="16px" Width="186px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Phd</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>Honours</asp:ListItem>
                    <asp:ListItem>Bachelor</asp:ListItem>
                    <asp:ListItem>Btech</asp:ListItem>
                    <asp:ListItem>Diploma</asp:ListItem>
                    <asp:ListItem>Advanced Certificate</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style78">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">Study Field</td>
            <td class="auto-style80">
                <asp:DropDownList ID="drpStudyField" runat="server" Height="21px" Width="186px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Accounting </asp:ListItem>
                    <asp:ListItem>Administration</asp:ListItem>
                    <asp:ListItem>Agricultural Economics</asp:ListItem>
                    <asp:ListItem>Agricultural Extension / Production</asp:ListItem>
                    <asp:ListItem>Animal Production Science</asp:ListItem>
                    <asp:ListItem>Applied Communication Management</asp:ListItem>
                    <asp:ListItem>Business Management</asp:ListItem>
                    <asp:ListItem>Civil Law</asp:ListItem>
                    <asp:ListItem>Clinical Management of HIV &amp; AIDS </asp:ListItem>
                    <asp:ListItem>Commercial Law</asp:ListItem>
                    <asp:ListItem>Common Law</asp:ListItem>
                    <asp:ListItem>Criminal Law</asp:ListItem>
                    <asp:ListItem>Crop Science / Horticultural Science</asp:ListItem>
                    <asp:ListItem>Crop Science / Soil Science</asp:ListItem>
                    <asp:ListItem>Economics </asp:ListItem>
                    <asp:ListItem>Education</asp:ListItem>
                    <asp:ListItem>Fine Arts</asp:ListItem>
                    <asp:ListItem>General Accounting </asp:ListItem>
                    <asp:ListItem>Human Resource Management </asp:ListItem>
                    <asp:ListItem>Information Systems</asp:ListItem>
                    <asp:ListItem>Library and Information Sciences </asp:ListItem>
                    <asp:ListItem>Livestock / Pasture Science </asp:ListItem>
                    <asp:ListItem>Nursing</asp:ListItem>
                    <asp:ListItem>Social Sciences</asp:ListItem>
                    <asp:ListItem>Statuate Law</asp:ListItem>
                    <asp:ListItem>Theology</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style82">Graduation Year</td>
            <td class="auto-style83">
                <asp:DropDownList ID="drpGradDate" runat="server" Width="186px">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style78">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42" colspan="6"><strong>Work Experience</strong></td>
        </tr>
        <tr>
            <td class="auto-style15">Company Name</td>
            <td class="auto-style63">
                <asp:TextBox ID="txtCompanyName" runat="server" Height="21px" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style64">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCompanyName" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style65">Position</td>
            <td class="auto-style66">
                <asp:TextBox ID="txtPosition" runat="server" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style86">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPosition" ErrorMessage="*Do not leave field blank*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style56" colspan="6">
                <asp:Button ID="Button1" runat="server" Height="50px" style="text-align: left" Text="Submit" Width="131px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>
