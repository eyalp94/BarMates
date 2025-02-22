﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="challenges.aspx.cs" Inherits="challenges" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="images/logo_whiteBackground_withoutBorders.png" type="image/x-icon" />
    <title>אתגרים BarMates</title>
    <link href="css/materialize.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />
    <link href="css/challenge.css" rel="stylesheet" />
</head>
<body>
    <!--LOADER-->
    <div id="screen_loader" class="hide">
        <div id="screen_loader_inner">
            <div class="preloader-wrapper active">
                <div class="spinner-layer">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <div class="loader_text"></div>
        </div>
    </div>
    <header>
        <div id="toolbar">
            <div class="logo_wrapper">
                <img alt="bar mates logo" src="images/logo_menu.png" />
            </div>
            <div class="topnav" id="myTopnav">
                <div class="topnav_inner">
                    <a id="Homepage" href="Homepage.aspx">ראשי</a>
                    <a id="SearchBar" href="SearchBar.aspx">חיפוש בר</a>
                    <a id="BarRating" href="BarRating.aspx">דירוג בר</a>
                    <a id="challenges" href="challenges.aspx" class="active">אתגרים</a>
                    <a id="leaderboard" href="leaderboard.aspx">המבוסמים</a>
                    <a id="Contact" href="Contact.aspx">צור קשר</a>
                </div>
            </div>
            <a id="iconnav" class="icon" onclick="ToggleNav()">
                <i class="material-icons">menu</i>
            </a>
            <div class="left_header">
                <a onclick="logout()">התנתק</a>
            </div>
        </div>
    </header>
    <main>
        <div class="card">
            <div class="row">
                <h3>ברוך הבא לעמוד האתגרים!</h3>
            </div>
            <div class="row">
                <h5>דרג כמה שיותר ברים מהאתגרים העומדים בפנייך, צבור נקודות, קבל באדג'ים ותהילת עולם</h5>
            </div>
            <div class="row">
                <div class="col">
                    <h3>אתגרי תל אביב</h3>
                </div>
                <div class="col">
                    <img src="images/chall/tlv.jpeg" style="height: 100px; width: 86px" />
                </div>

            </div>
            <div class="row">
                <div class="col">
                    <h5>אתגר דיזינגוף:</h5>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/dizi/dizi.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">דיזי פרישדון<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="1" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">דיזי פרישדון<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: דיזנגוף 121, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 03-523-4111</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/dizi/consier.png" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">קונסיירג'<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="2" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">קונסיירג'<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: דיזנגוף 95, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 03-522-3340</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/dizi/ilka.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator text-darken-4">אילקה<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="3" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">אילקה<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: דיזנגוף 148, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 052-977-2244</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/dizi/mila.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">מילה<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="4" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">מילה<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: דיזנגוף 164, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 052-833-3668</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/dizi/zina.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">צינה<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="5" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">צינה<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: דיזנגוף 116, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 052-533-0028</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/dizi/simta.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">סימטא<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="6" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">סימטא<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: דיזנגוף 122, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 052-533-0028</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/dizi/rutina.png" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">רוטינה<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="7" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">רוטינה<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: פרישמן 41, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 054-578-4838</p>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col">
                    <h5>אתגר אבן גבירול:</h5>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/iben/giora.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">בר-גיורא<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="8" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">בר-גיורא<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שלמה אבן גבירול 30, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 03-543-3963</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/iben/liliroz.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">לילי רוז<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="9" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">לילי רוז<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שלמה אבן גבירול 146, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 03-544-6663</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">

                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/iben/mezeg.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">המזג<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="10" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">המזג<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שלמה אבן גבירול 151, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 052-397-4760</p>
                        </div>
                    </div>

                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/iben/silvib.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">סילביה באמפר<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="11" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">סילביה באמפר<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שלמה אבן גבירול 38, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 054-456-6228</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/iben/square.png" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">משבצת<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="12" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">משבצת<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שדרות דוד המלך 1, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 055-660-9167</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <h5>אתגר רוטשילד:</h5>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/rotshild/beerbazar.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">ביר-באזאר<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="13" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">ביר-באזאר<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שדרות רוטשילד 142, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 054-796-7995</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/rotshild/patricks.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">פטריקס<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="14" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">פטריקס<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שדרות רוטשילד 39, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 03-605-0509</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">

                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/rotshild/poli.png" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">פולי<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="15" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">פולי<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שדרות רוטשילד 60, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 073-757-6245</p>
                        </div>
                    </div>

                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/rotshild/speak.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">speakeasy<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="16" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">speakeasy<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שדרות רוטשילד 24, תל אביב יפו</p>
                            <br />
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/rotshild/zozo.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">זו-זו<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="17" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">זו-זו<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שדרות רוטשילד 32, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 072-395-2045</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- jerusalem challenges-->
            <div class="row">
                <div class="col">
                    <h3>אתגרי ירושלים</h3>
                </div>
                <div class="col">
                    <img src="images/chall/jerus.jpeg" style="height: 100px; width: 86px" />
                </div>

            </div>

            <div class="row">
                <div class="col">
                    <h5>אתגר מחנה יהודה:</h5>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/mahne/fredy.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">פרדי למון<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="18" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">פרדי למון<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: עץ חיים 19, ירושלים</p>
                            <br />
                            <p>טלפון: 052-440-5591</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/mahne/neighber.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">השכנה<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="19" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">השכנה<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: בית יעקב 11, ירושלים</p>
                            <br />
                            <p>טלפון: 02-537-59169</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">

                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/mahne/paris.png" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">קזינו דה פריס<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="20" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">קזינו דה פריס<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: מחנה יהודה 3, ירושלים</p>
                            <br />
                            <p>טלפון: 02-650-4235</p>
                        </div>
                    </div>

                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/mahne/shoka.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">שוקא<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="21" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">שוקא<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: האגוז, ירושלים</p>
                            <br />
                            <p>טלפון: 054-946-6554</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/mahne/tear.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">הטיפה<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="22" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">הטיפה<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: הדקל 2, ירושלים</p>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <h5>אתגר העיר:</h5>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/jerusalem/kaktus9.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">קקטוס 9<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="23" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">קקטוס 9<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שושן 4, ירושלים</p>
                            <br />
                            <p>טלפון: 054-482-3671</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/jerusalem/taklit.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">התקליט<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="24" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">התקליט<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: הלני המלכה 7, ירושלים</p>
                            <br />
                            <p>טלפון: 02-624-4073</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">

                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/jerusalem/zabotinsky.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">זבוטינסקי בר<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="25" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">זבוטינסקי בר<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: 1 94147, שמעון בן שטח, ירושלים</p>
                            <br />
                            <p>טלפון: 055-725-1561</p>
                        </div>
                    </div>

                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/jerusalem/gatsbi.png" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">גטסבי<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="26" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">גטסבי<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: הלל 18, ירושלים</p>
                            <br />
                            <p>טלפון: 054-814-7143</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/jerusalem/glen.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">גלן<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="27" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">גלן<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: שלומציון המלכה 18, ירושלים</p>
                            <br />
                            <p>טלפון: 054-901-0076</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- world challenges-->
            <div class="row">
                <div class="col">
                    <h3>אתגרים עולמיים</h3>
                </div>
                <div class="col">
                    <img src="images/chall/world.jpeg" style="height: 100px; width: 86px" />
                </div>

            </div>

            <div class="row">
                <div class="col">
                    <h5>אתגר איטליה:</h5>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/pizza/bardak.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">ברדק<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="28" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">ברדק<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: קרן היסוד 38, ירושלים</p>
                            <br />
                            <p>טלפון: 1599-599779</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/pizza/goons.png" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">גונס פיצה בר<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="29" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">גונס פיצה בר<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: כיכר העצמאות 8, נתניה</p>
                            <br />
                            <p>טלפון: 09-775-5033</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">

                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/pizza/icar.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">האיכר פיצה בר<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="30" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">האיכר פיצה בר<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: יורדי הסירה 1, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 050-554-8989</p>
                        </div>
                    </div>

                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/pizza/pazzo.png" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">פאצו<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="31" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">פאצו<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: היצירה 5, רעננה</p>
                            <br />
                            <p>טלפון: 09-741-8833</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/pizza/teder.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">תדר<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="32" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">תדר<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: בית רומנו, דרך יפו 9, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 03-571-9622</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <h5>אתגר אירלנד:</h5>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/irish/dublin.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">דאבלין<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="33" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">דאבלין<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: אריה שנקר 4, הרצליה</p>
                            <br />
                            <p>טלפון: 09-954-4889</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/irish/molli.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">מולי בלומס<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="34" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">מולי בלומס<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: מנדלי מוכר ספרים 2, תל אביב יפו</p>
                            <br />
                            <p>טלפון: 055-886-0188</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">

                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/irish/murphys.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">מרפיס<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="35" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">מרפיס<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: אזור התעשיה הסדנא 3, רעננה</p>
                            <br />
                            <p>טלפון: 077-504-0620</p>
                        </div>
                    </div>

                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/irish/osullivan.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">או'סאליבן<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="36" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">או'סאליבן<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: ישפרו סנטר, שדרות המלאכות 121, מודיעין מכבים רעות</p>
                            <br />
                            <p>טלפון: 08-970-2119</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/irish/patricks.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">פטריקס<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="37" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">פטריקס<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: משה בקר 16, ראשון לציון</p>
                            <br />
                            <p>טלפון: 03-532-7586</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/irish/temple.png" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">טמפל בר<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="38" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">טמפל בר<i class="material-icons right">close</i></span>
                            <br />
                            <p>מתחם G, ויצמן 301, כפר סבא</p>
                            <br />
                            <p>טלפון: 09-767-7575</p>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light" style="height: 200px">
                            <img class="activator" src="images/irish/wild.jpg" />
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">אוסקר ווילד<i class="material-icons right">more_vert</i></span>
                            <p><a class="waves-effect waves-light btn" id="39" onclick="myFunc(this.id)">דרג אותי!</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">אוסקר ווילד<i class="material-icons right">close</i></span>
                            <br />
                            <p>כתובת: סינמה סיטי, המחקר 3, נתניה</p>
                            <br />
                            <p>טלפון: 09-977-4575</p>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </main>
</body>
<script src="js/jquery-1.11.3.js"></script>
<script src="js/materialize.min.js"></script>
<script src="js/menu.js"></script>
<script src="js/challenge.js"></script>
</html>
