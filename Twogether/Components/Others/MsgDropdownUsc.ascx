<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MsgDropdownUsc.ascx.cs" Inherits="Twogether.Components.Others.MsgDropdownUsc" %>
<%@ Import Namespace="Twogether.Helpers" %>

<li class="nav-item dropdown">
<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle" style="background-color:#000000"><span><i class="notika-icon notika-mail"></i></span></a>
    <div role="menu" class="dropdown-menu message-dd animated zoomIn">
        <div class="hd-mg-tt">
            <h2>Messages</h2>
        </div>
        <div class="hd-message-info">
            <a href="#">
                <div class="hd-message-sn">
                    <div class="hd-message-img">
                        <img src=" <%=Help.FormatUrl("/img/post/1.jpg") %>" alt="" />
                    </div>
                    <div class="hd-mg-ctn">
                        <h3>David Belle</h3>
                        <p>Olá Professor não esquece de mim!</p>
                    </div>
                </div>
            </a>
            <a href="#">
                <div class="hd-message-sn">
                    <div class="hd-message-img">
                        <img src=" <%=Help.FormatUrl("/img/post/2.jpg") %>" alt="" />
                    </div>
                    <div class="hd-mg-ctn">
                        <h3>Jonathan Morris</h3>
                        <p>Professor Hoje é o dia da avaliação ?</p>
                    </div>
                </div>
            </a>
            <a href="#">
                <div class="hd-message-sn">
                    <div class="hd-message-img">
                        <img src="<%=Help.FormatUrl("/img/post/4.jpg") %>" alt="" />
                    </div>
                    <div class="hd-mg-ctn">
                        <h3>Fredric Mitchell</h3>
                        <p>Bom dia, é hoje ou amanhã a minha avaliação ?</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="hd-mg-va">
            <a href="#">View All</a>
        </div>
    </div>
</li>
