<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChatDropdownUsc.ascx.cs" Inherits="Twogether.Components.Others.ChatDropdownUsc" %>
<%@ Import Namespace="Twogether.Helpers" %>

<li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle" style="background-color:#000000"><span><i class="notika-icon notika-chat" ></i></span></a>
<div role="menu" class="dropdown-menu message-dd chat-dd animated zoomIn">
    <div class="hd-mg-tt">
        <h2>Chat</h2>
    </div>
    <div class="search-people">
        <i class="notika-icon notika-left-arrow"></i>
        <input type="text" placeholder="Search People" />
    </div>
    <div class="hd-message-info">
        <a href="#">
            <div class="hd-message-sn">
                <div class="hd-message-img chat-img">
                    <img src="<%=Help.FormatUrl("/img/post/1.jpg") %>" alt="" />
                    <div class="chat-avaible"><i class="notika-icon notika-dot"></i></div>
                </div>
                <div class="hd-mg-ctn">
                    <h3>David Belle</h3>
                    <p>Available</p>
                </div>
            </div>
        </a>
        <a href="#">
            <div class="hd-message-sn">
                <div class="hd-message-img chat-img">
                    <img src="<%=Help.FormatUrl("/img/post/2.jpg") %>" alt="" />
                </div>
                <div class="hd-mg-ctn">
                    <h3>Jonathan Morris</h3>
                    <p>Last seen 3 hours ago</p>
                </div>
            </div>
        </a>
        <a href="#">
            <div class="hd-message-sn">
                <div class="hd-message-img chat-img">
                    <img src="<%=Help.FormatUrl("/img/post/4.jpg") %>" alt="" />
                </div>
                <div class="hd-mg-ctn">
                    <h3>Fredric Mitchell</h3>
                    <p>Last seen 2 minutes ago</p>
                </div>
            </div>
        </a>
        <a href="#">
            <div class="hd-message-sn">
                <div class="hd-message-img chat-img">
                    <img src="<%=Help.FormatUrl("/img/post/1.jpg") %>" alt="" />
                    <div class="chat-avaible"><i class="notika-icon notika-dot"></i></div>
                </div>
                <div class="hd-mg-ctn">
                    <h3>David Belle</h3>
                    <p>Available</p>
                </div>
            </div>
        </a>
        <a href="#">
            <div class="hd-message-sn">
                <div class="hd-message-img chat-img">
                    <img src="<%=Help.FormatUrl("/img/post/2.jpg") %>" alt="" />
                    <div class="chat-avaible"><i class="notika-icon notika-dot"></i></div>
                </div>
                <div class="hd-mg-ctn">
                    <h3>Glenn Jecobs</h3>
                    <p>Available</p>
                </div>
            </div>
        </a>
    </div>
    <div class="hd-mg-va">
        <a href="#">View All</a>
    </div>
</div>
</li>
