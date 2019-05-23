<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NotificationDropdownUsc.ascx.cs" Inherits="Twogether.Components.Others.NotificationDropdownUsc" %>
<%@ Import Namespace="Twogether.Helpers" %>

<li class="nav-item nc-al"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle" style="background-color:#000000"><span><i class="notika-icon notika-alarm"></i></span><div class="spinner4 spinner-4"></div><div class="ntd-ctn"><span>3</span></div></a>
    <div role="menu" class="dropdown-menu message-dd notification-dd animated zoomIn">
        <div class="hd-mg-tt">
            <h2>Notificações</h2>
        </div>
        <div class="hd-message-info">
            <a href="#">
                <div class="hd-message-sn">
                    <div class="hd-message-img">
                        <img src="<%=Help.FormatUrl("/img/post/1.jpg") %>" alt="" />
                    </div>
                    <div class="hd-mg-ctn">
                        <h3>David Belle</h3>
                        <p>Olá, Etapa 1 as 14h:30m de Hoje.......</p>
                    </div>
                </div>
            </a>
            <a href="#">
                <div class="hd-message-sn">
                    <div class="hd-message-img">
                        <img src="<%=Help.FormatUrl("/img/post/2.jpg") %>" alt="" />
                    </div>
                    <div class="hd-mg-ctn">
                        <h3>Jonathan Morris</h3>
                        <p>Olá, Etapa 3 as 16h:30m de Hoje.......</p>
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
                        <p>Olá, Etapa 2 as 18h:30m de Hoje......</p>
                    </div>
                </div>
            </a>
            <a href="#">
                <div class="hd-message-sn">
                    <div class="hd-message-img">
                        <img src="<%=Help.FormatUrl("/img/post/1.jpg") %>" alt="" />
                    </div>
                    <div class="hd-mg-ctn">
                        <h3>Lucas Burnot</h3>
                        <p>Olá, Etapa 1 as 14h:30m de Amanhã...</p>
                    </div>
                </div>
            </a>
            <a href="#">
                <div class="hd-message-sn">
                    <div class="hd-message-img">
                        <img src="<%=Help.FormatUrl("/img/post/2.jpg") %>" alt="" />
                    </div>
                    <div class="hd-mg-ctn">
                        <h3>Glenn Jecobs</h3>
                        <p>Olá, Etapa 5 as 16h:30m de Amanhã...</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="hd-mg-va">
            <a href="#">Ver Todos</a>
        </div>
    </div>
</li>
