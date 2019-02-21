﻿<%@ Page Title="Consultar Proceso" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="ConsultarProceso.aspx.cs" Inherits="juefi2.Views.ConsultarProceso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <div class="col-md-12 ">
        <div class="box box-primary">
            <div class="toolbar__nav">
                <a href="/Views/principal.aspx">
                    <h5><i class="fa fa-home"></i>Inicio <span>>> </span><a href='#'><i class="fa fa-search-minus"></i>Consultar Proceso</h5>
                    <br />
                </a>
            </div>
        </div>
    </div>
     <br />


    <section class="content">
        <div class="box">
            <div class="box-header text-center">
                <b class="box-title" >Consultar Proceso</b>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <asp:Repeater ID="consultarproceso" runat="server">
                    <HeaderTemplate>
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>N°</th>
                                    <th>Radicado</th>
                                    <th>accionante</th>
                                    <th>accionado</th>
                                    <th>Aseso</th>
                                    <th>Tipo proceso</th>
                                     <th>Archivo</th>
                                    <th>edit</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <%--<td><%#Eval("idproceso")%></td>
                            <td><%#Eval("radicado_proceso")%></td>
                            <td><%#Eval("accionante")%></td>
                            <td><%#Eval("accionado")%></td>
                            <td><%#Eval("asesor")%></td>
                            <td><%#Eval("nombre_tipo")%></td>--%>
                            <td><%#Eval("idproceso")%></td>
                            <td><%#Eval("radicado_proceso")%></td>
                            <td><%#Eval("accionante")%></td>
                            <td><%#Eval("accionado")%></td>
                            <td><%#Eval("asesor")%></td>
                            <td><%#Eval("nombre_tipo")%></td>
                                <td> <a href='<%# Page.ResolveUrl( Eval("archivos").ToString()) %>'  target="_blank">Ver/Descargar</a></td>
                             </td>
                          <%--td><button type="button" class="fa fa-pencil" data-toggle="modal" data-target="#modal-default"></button></td>--%>
                            <td><asp:LinkButton ID="Editar" runat="server" CssClass="btn btn-primary btn-sm " data-toggle="modal" data-target="#modal-default"><i class="fa fa-pencil"></i></asp:LinkButton>
                                <asp:LinkButton ID="asignar" runat="server" CssClass="btn btn-primary btn-sm " OnCommand="asignar_Command" CommandArgument='<%#Eval("idproceso")%>' CommandName="id">Asignar</asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                    <tfoot>
                        <tr>
                            <th>N°</th>
                            <th>Radicado</th>
                            <th>accionante</th>
                            <th>accionado</th>
                            <th>Aseso</th>
                            <th>Tipo proceso</th>
                             <th>Archivo</th>
                            <th>edit</th>
                        </tr>
                    </tfoot>

                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </section>

 <%--<a href="#modal-default" class="btn btn-default" id="idmodelddd" data-toggle="modal" data-target="#modal-default"><i class="fa fa-pencil"></i></a>--%>

       

 <div class="modal fade" id="modal-default" data-keyboard="false" data-backdrop="static">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Default Modal</h4>
              </div>
              <div class="modal-body">
                <p>One fine body&hellip;</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                 <asp:LinkButton ID="guardar_datos" class="btn btn-primary" runat="server" OnClick="guardar_datos_Click"> Guardar </asp:LinkButton>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

    <div class="modal fade" id="modal-default22" data-keyboard="false" data-backdrop="static">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center">Asignar Proceso</h4>
                    <div class="col-md-6  ">
                        <div class="form-group">
                            <br />
                            <label>Proceso</label><br />
                            <asp:DropDownList ID="droplisestudiante" CssClass="form-control select2 text-center" AppendDataBoundItems="true" runat="server">
                                <asp:ListItem >  --------------------------- seleccioné -------------------------</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
              </div>
             
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <asp:Button ID="Asignar_Persona" runat="server" OnClick="guardar_datos_Click" CssClass="btn btn-primary" Text="Asignar"></asp:Button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>

</asp:Content>
