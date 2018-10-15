<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authentication var="principal" property="principal" />

<div title="交易管理" data-options="iconCls:'fa fa-gear'" style="padding:10px;">
	<ul class="easyui-datalist" fit=true border=false>
		<li>
			<i class="fa fa-credit-card"></i>
			<a class="zhyk-nav-link " data-href="<c:url value="/admin/downDspInvoice/index"/>" onclick="openTabs(this);return false;">交易明细</a>
		</li>
		<li>
			<i class="fa fa-area-chart"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downDspInvoice/sum"/>" onclick="openTabs(this);return false;">交易汇总(机构)</a>
		</li>
		<li>
			<i class="fa fa-line-chart"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downDspInvoice/sumTwo"/>" onclick="openTabs(this);return false;">交易汇总(统计)</a>
		</li>
		<li>
			<i class="fa fa-money"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downMerchantFundAccount/index"/>" onclick="openTabs(this);return false;">余额管理(机构)</a>
		</li>
		<li>
			<i class="fa fa-rocket"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downDspInvoiceRoute/index"/>" onclick="openTabs(this);return false;">机构交易路由</a>
		</li>
		<li>
			<i class="fa fa-user-secret"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downMerchant/index"/>" onclick="openTabs(this);return false;">机构管理</a>
		</li>
		<li>
			<i class="fa fa-cny"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downMerchantBalance/index"/>" onclick="openTabs(this);return false;">收支明细(机构)</a>
		</li>
		<!-- 充值頁面 -->
		<li>
			<i class="fa fa-handshake-o"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/chargeDetail/index"/>" onclick="openTabs(this);return false;">充值管理</a>
		</li>
	</ul>
</div>
<div title="运营管理" data-options="iconCls:'fa fa-gear'" style="padding:10px;">
	<ul class="easyui-datalist" fit=true border=false>
		<li>
			<i class="fa fa-university"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downAgent/index"/>" onclick="openTabs(this);return false;">代理商管理</a>
		</li>
		<li>
			<i class="fa fa-drupal"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/passwayDspMerchant/index"/>" onclick="openTabs(this);return false;">通道配置</a>
		</li>
		<li>
			<i class="fa fa-thumbs-up"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downDspInvoice/upSum"/>" onclick="openTabs(this);return false;">交易汇总(通道)</a>
		</li>
	</ul>
</div>
<div title="系统设置" data-options="iconCls:'fa fa-gear'" style="padding:10px;">
	<ul class="easyui-datalist" fit=true border=false>
		<li>
			<i class="fa fa-snapchat"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/user/index"/>" onclick="openTabs(this);return false;">运维人员管理</a>
		</li>
		<li>
			<i class="fa fa-twitter"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/userInfo/index"/>" onclick="openTabs(this);return false;">机构操作员</a>
		</li>
		<li>
			<i class="fa fa-tumblr"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/agent/index"/>" onclick="openTabs(this);return false;">*代理商操作员</a>
		</li>
		<li>
			<i class="fa fa-vimeo"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/kbin/index"/>" onclick="openTabs(this);return false;">卡bin管理</a>
		</li>
		<li>
			<i class="fa fa-bitcoin "></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/system/index"/>" onclick="openTabs(this);return false;">系统信息</a>
		</li>
		<li>
			<i class="fa fa-anchor"></i>
			<a class="zhyk-nav-link" onclick="confirmExit();return false;">退出系统</a>
		</li>
	</ul>
</div>









<c:if test="${principal.username eq 'hidden' }">
<div title="交易管理" data-options="iconCls:'fa fa-gear'" style="padding:10px;">
	<ul class="easyui-datalist" fit=true border=false>
		<li>
			<i class="fa fa-credit-card"></i>
			<a class="zhyk-nav-link " data-href="<c:url value="/admin/downNoCardInvoice/index"/>" onclick="openTabs(this);return false;">快捷交易明细</a>
		</li>
		<li>
			<i class="fa fa-paypal"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downMerchantDeposit/index"/>" onclick="openTabs(this);return false;">代付交易明细</a>
		</li>
		<li>
			<i class="fa fa-area-chart"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downNoCardInvoice/sum"/>" onclick="openTabs(this);return false;">快捷汇总(机构)</a>
		</li>
		<li>
			<i class="fa fa-bar-chart"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downMerchantDeposit/sum"/>" onclick="openTabs(this);return false;">代付汇总(机构)</a>
		</li>
		<%-- <li>
			<i class="fa fa-anchor"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downAgent/index"/>" onclick="openTabs(this);return false;">*代理商</a>
		</li> --%>
		<li>
			<i class="fa fa-money"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downMerchantFundAccount/index"/>" onclick="openTabs(this);return false;">余额管理(机构)</a>
		</li>
		
		
		<%-- <li>
			<i class="fa fa-anchor"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/recon/index"/>" onclick="openTabs(this);return false;">*机构对账单</a>
		</li> --%>
		<li>
			<i class="fa fa-cny"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downMerchantBalance/index"/>" onclick="openTabs(this);return false;">收支明细(机构)</a>
		</li>
		
		<li>
			<i class="fa fa-align-justify"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downTradeLog/index"/>" onclick="openTabs(this);return false;">快捷交易日志</a>
		</li>
		<%-- <li>
			<i class="fa fa-anchor"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/passwayTransfer/index"/>" onclick="openTabs(this);return false;">*快捷分润提现</a>
		</li> --%>
	</ul>
</div>
<div title="运营管理" data-options="iconCls:'fa fa-gear'" style="padding:10px;">
	<ul class="easyui-datalist" fit=true border=false>
		<li>
			<i class="fa fa-university"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downAgent/index"/>" onclick="openTabs(this);return false;">代理商管理</a>
		</li>
		<li>
			<i class="fa fa-user-secret"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downMerchant/index"/>" onclick="openTabs(this);return false;">机构管理</a>
		</li>
		<li>
			<i class="fa fa-user-plus"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/userInfo/index"/>" onclick="openTabs(this);return false;">机构操作员</a>
		</li>
		<li>
			<i class="fa fa-thumbs-up"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downNoCardInvoice/upSum"/>" onclick="openTabs(this);return false;">快捷汇总(通道)</a>
		</li>
		<li>
			<i class="fa fa-rss-square"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downMerchantDeposit/upSum"/>" onclick="openTabs(this);return false;">代付汇总(通道)</a>
		</li>
		<li>
			<i class="fa fa-rocket"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/downNoCardRoute/index"/>" onclick="openTabs(this);return false;">机构交易路由</a>
		</li>
	</ul>
</div>
<div title="系统设置" data-options="iconCls:'fa fa-gear'" style="padding:10px;">
	<ul class="easyui-datalist" fit=true border=false>
		<li>
			<i class="fa fa-dropbox"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/passwayRouteSetting/index"/>" onclick="openTabs(this);return false;">通道参数设置</a>
		</li>
		<li>
			<i class="fa fa-drupal"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/passwayRouteMerchant/index"/>" onclick="openTabs(this);return false;">通道商户配置</a>
		</li>
		<li>
			<i class="fa fa-digg"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/qrcodeAccount/index"/>" onclick="openTabs(this);return false;">打码账户配置</a>
		</li>
		<li>
			<i class="fa fa-chrome"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/qrcodeStock/index"/>" onclick="openTabs(this);return false;">可用码管理</a>
		</li>
		<li>
			<i class="fa fa-snapchat"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/user/index"/>" onclick="openTabs(this);return false;">运维人员管理</a>
		</li>
		<li>
			<i class="fa fa-twitter"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/userInfo/index"/>" onclick="openTabs(this);return false;">机构操作员</a>
		</li>
		<li>
			<i class="fa fa-tumblr"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/agent/index"/>" onclick="openTabs(this);return false;">*代理商操作员</a>
		</li>
		<%-- <li>
			<i class="fa fa-anchor"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/user/indexRole"/>" onclick="openTabs(this);return false;">角色类别</a>
		</li>
		<li>
			<i class="fa fa-anchor"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/user/indexRoleMenu"/>" onclick="openTabs(this);return false;">角色菜单</a>
		</li> --%>
		<li>
			<i class="fa fa-vimeo"></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/kbin/index"/>" onclick="openTabs(this);return false;">卡bin管理</a>
		</li>
		<li>
			<i class="fa fa-bitcoin "></i>
			<a class="zhyk-nav-link" data-href="<c:url value="/admin/system/index"/>" onclick="openTabs(this);return false;">系统信息</a>
		</li>
		<li>
			<i class="fa fa-anchor"></i>
			<a class="zhyk-nav-link" onclick="confirmExit();return false;">退出系统</a>
		</li>
	</ul>
</div>
</c:if>