<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChosenUsc.ascx.cs" Inherits="Twogether.Components.Common.ChosenUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<div  class="bootstrap-select fm-cmp-mg">
    <select class="selectpicker" data-live-search="true">
		<option>Drama</option>
		<option>Cariska</option>
		<option>Cheriska</option>
		<option>Malias</option>
		<option>Kamines</option>
		<option>Austranas</option>
	</select>
</div>

<%: Scripts.Render("~/bundles/js") %>
<%: Scripts.Render("~/bundles/mask") %>