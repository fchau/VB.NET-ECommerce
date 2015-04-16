<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Productlist.aspx.vb" Inherits="ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
			<!-- ================ -->
			<!-- Products section -->
			<!-- ================ -->
			<section class="product">
				<div class="row">
					<div class="span3 hidden-phone">
						<div class="sidebar">
							<section>				
									<ul>
                   <asp:SqlDataSource ID="SqlDSSubCategory" runat="server" ConnectionString="<%$ ConnectionStrings:CategoryConnection %>" SelectCommand=""></asp:SqlDataSource>
                        <asp:Repeater id="rpSubCategory" runat="server" DataSourceID="SqlDSSubCategory">
	                        <ItemTemplate>
						        <div class="panel-heading">
							        <a href="ProductList.aspx?SubCategoryID=<%# Container.DataItem("CategoryID")%>&SubCategoryName=<%# Trim(Container.DataItem("CategoryName"))%>&MainCategoryName=<%# Container.DataItem("ParentName")%>"><%# Container.DataItem("CategoryName")%></a>
						        </div>
	                        </ItemTemplate>
                        </asp:Repeater>
									</ul>
							</section> 
                        </div>
                        <!--/category-products-->
                        </div>
                        </div>

                        </div>

					<div class="span9">
						<div class="row-fluid">
							<!-- Collection -->
							<div class="tab-content sideline">
								<asp:Label ID="lblMainCategory" runat="server"></asp:Label>
                             <asp:Label ID="lblSubCategory" runat="server"></asp:Label>
                                <br /><br />

	 <asp:Panel ID="pnlProductList" runat="server">
            <asp:SqlDataSource ID="SqlDSProductList" runat="server" ConnectionString="<%$ ConnectionStrings:CategoryConnection %>" SelectCommand=""></asp:SqlDataSource>
            <asp:Repeater id="rpProductList" runat="server" DataSourceID="SqlDSProductList">

                        <ItemTemplate>
                          
                                <div class="image">
                                        <a href="category.aspx?ProductID=<%# Eval("ProductID")%>">
                                            <img src="img/product/<%# Eval("ProductID")%>.jpg" width="300" height="225" alt="" /></a></div>
                                <div class="name"><a><%# Eval("ProductName")%></a></div>
                                <div class="price"><%# Eval("UnitPrice", "{0:c}")%></div>
                                
                                <div class="clear"></div>
                                <br />
                           
                        </ItemTemplate>
            </asp:Repeater>
        </asp:Panel>
        <asp:Panel ID="pnlProductDetail" runat="server" Visible="False">
            Here is product detail.
        </asp:Panel>
	</div>
							
	</div>
</div>

		</div>

</asp:Content>

