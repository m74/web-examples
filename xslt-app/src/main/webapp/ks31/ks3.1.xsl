<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>

<xsl:stylesheet xmlns:fmt="http://xml.apache.org/xalan/java/tk.xsl.Format"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" />

<xsl:template match="document">
	<html>
	<head>
		<link rel="stylesheet" type="text/css" href="style_ks3.css" />
		<title>test</title>
	</head>
	<body>
		<table border="0px" style="width: 100%;">
			<tr>
				<td class="h1" colspan="11" style=" padding:5px;">
					<div style="text-align:right; padding-right:83px;">
						Унифицированная форма № КС-3
					</div>
					<div style="text-align:right; padding-right:1px;">
						Утверждена Постановлением Госкомстата России
					</div>
					<div style="text-align:right; padding-right:168px;">
						от 11.11.99 №100
					</div>
				</td>
			</tr>
			<tr >
				<td colspan="8"></td>
				<td class="k1" style="width:300px; border:solid 1px;" colspan="3">Код</td>
			</tr>
			<tr>
				<td class="k2" colspan="8">Форма по ОКУД</td>
				<td class="k1" colspan="3" style="border:solid 2px; border-bottom:solid 1px;">0322001</td>
			</tr>
			<tr>
				<td class="k3" style="width:60px;">Инвестор</td>
				<td class="k3" colspan="6" style="width:1000px; border-bottom:solid 1px;">
					<xsl:value-of select="recipier/@legalTitle" />
					<xsl:text>, </xsl:text>
					<xsl:value-of select="recipier/property[@name = 'legalAddress']" />
					<xsl:text>, </xsl:text>
					<xsl:value-of select="recipier/property[@name = 'phone']" />
				</td>
				<td class="k2" style="width: 54px; padding-right:10px;">по ОКПО</td>
				<td class="k1" colspan="3" style="border:solid 2px; border-bottom:solid 0px; border-top:solid 1px;"><xsl:value-of select="recipier/property[@name = 'okpo']" /></td>
			</tr>

			<tr>
				<td colspan="8" class="l1" style="padding-left:30%;">(организация, адрес, телефон, факс)</td>
				<td colspan="3" style="border:solid 2px; border-bottom:solid 0px; border-top:solid 0px;"></td>
			</tr>

			<tr>
				<td class="k3" colspan="2">Заказчик(Генподрядчик)</td>
				<td colspan="5" class="k3" style="border-bottom:solid 1px;">
					<xsl:value-of select="recipier/@legalTitle" />
					<xsl:text>, </xsl:text>
					<xsl:value-of select="recipier/property[@name = 'legalAddress']" />
					<xsl:text>, </xsl:text>
					<xsl:value-of select="recipier/property[@name = 'phone']" />
				</td>
				<td class="k2" style="padding-right:10px;">по ОКПО</td>
				<td class="k1" colspan="3" style="border:solid 2px; border-bottom:solid 1px; border-top:solid 1px;"><xsl:value-of select="recipier/property[@name = 'okpo']" /></td>
			</tr>

			<tr>
				<td colspan="8" class="l1" style="padding-left:30%;">(организация, адрес, телефон, факс)</td>
				<td colspan="3" style="border:solid 2px; border-bottom:solid 0px; border-top:solid 0px;"></td>
			</tr>

			<tr>
				<td colspan="3" class="k3" style="width:90px;">Подрядчик(Субподрядчик)</td>
				<td colspan="4" class="k3" style="border-bottom:solid 1px;">
					<xsl:value-of select="sender/@legalTitle" />
					<xsl:text>, </xsl:text>
					<xsl:value-of select="sender/property[@name = 'legalAddress']" />
					<xsl:text>, </xsl:text>
					<xsl:value-of select="sender/property[@name = 'phone']" />
				</td>
				<td class="k2" style="padding-right:10px;">по ОКПО</td>
				<td class="k1" colspan="3" style="border:solid 2px; border-bottom:solid 1px; border-top:solid 0px;"><xsl:value-of select="sender/property[@name = 'okpo']" /></td>
			</tr>

			<tr>
				<td colspan="8" class="l1" style="padding-left:30%;">(организация, адрес, телефон, факс)</td>
				<td colspan="3" style="border:solid 2px; border-bottom:solid 0px; border-top:solid 0px;"></td>
			</tr>

			<tr>
				<td class="k3"  style="padding-top:50px;">Стройка</td>
				<td colspan="6" style="border-bottom:solid 1px;"></td>
				<td class="k2" style="padding-top:45px; padding-right:10px;">по ОКПО</td>
				<td colspan="3" style="border:solid 2px; border-bottom:solid 1px; border-top:solid 0px;"></td>
			</tr>

			<tr>
				<td colspan="8">
					<div class="l1" style="padding-left:3px; padding-left:40%; z-index:1;">
						(наименование, адрес)
					</div>
					<div class="k2" style="z-index:2;">
						Вид деятельности по ОКДП
					</div>
				</td>
				<td colspan="3" style="border:solid 2px; border-bottom:solid 1px; border-top:solid 1px;"></td>
			</tr>

			<tr>
				<td colspan="7" class="k2" style="padding-right:10%;">Договор подряда (контракт)</td>
				<td class="k2" style="border:solid 1px;">номер</td>
				<td class="k1" colspan="3" style="border:solid 2px; border-bottom:solid 1px; border-top:solid 1px;">
					<xsl:value-of select="@number"/>
				</td>
			</tr>
			<tr>
				<td colspan="7"></td>
				<td class="k2" style="border:solid 1px;">дата</td>
				<td class="k1" style="border:solid 1px; border-left:solid 2px;">
					<xsl:value-of select="fmt:date(@date, 'dd')"/>
				</td>
				<td class="k1" style="border:solid 1px;">
					<xsl:value-of select="fmt:date(@date, 'MM')"/>
				</td>
				<td class="k1" style="border:solid 1px; border-right:solid 2px;">
					<xsl:value-of select="fmt:date(@date, 'yyyy')"/>
				</td>
			</tr>
			<tr>
				<td colspan="8" class="k2" style="padding-right:10px;">Вид операции</td>
				<td colspan="3" style="border:solid 2px; border-top:solid 1px;"></td>
			</tr>
		</table>
		<table class="m1">
			<tr>
				<td rowspan="2"></td>
				<td rowspan="2" class="k1" style="border:solid 1px; width:120px;">Номер документа</td>
				<td rowspan="2" class="k1" style="border:solid 1px; width:120px;">Дата составления</td>
				<td rowspan="3" class="k1" style="width:10px"></td>
				<td colspan="2" class="k1" style="border:solid 1px;">Отчетный период</td>
			</tr>
			<tr>
				<td class="k1" style="border:solid 1px; width:50px;">с</td>
				<td class="k1" style="border:solid 1px; width:50px">по</td>
			</tr>
			<tr>
				<td class="k2" style="padding-right:10px; font-weight:bold;">СПРАВКА</td>
				<td class="k1" style="border:solid 2px; border-right:solid 1px;">23</td>
				<td class="k1" style="border:solid 2px; border-left:solid 1px;"><xsl:value-of select="fmt:date(@date)"/></td>
				<td class="k1" style="border:solid 2px; border-right:solid 1px;">X</td>
				<td class="k1" style="border:solid 2px; border-left:solid 1px;">X</td>
			</tr>
		</table>
		<div class="k3" style="font-weight:bold; padding-left:20%;">
			О СТОИМОСТИ ВЫПОЛНЕННЫХ РАБОТ
		</div>

		<table>
			<tr>
				<td rowspan="2" class="k11" style="width:33px;">Но- мер по по- рядку</td>
				<td rowspan="2" class="k11">Наименование пусковых комплексов, этапов, объектов, видов выполненных работ, оборудования, затрат</td>
				<td rowspan="2" class="k11" style="width:50px;">Код</td>
				<td colspan="3" class="k11">Стоимость выполненных работ и затрат,руб.</td>
			</tr>
			<tr>
				<td class="k11">с начала проведения работ</td>
				<td class="k11">с начала года</td>
				<td class="k11">в том числе за отчетный период</td>
			</tr>
			<tr>
				<td class="k11">1</td>
				<td class="k11">2</td>
				<td class="k11">3</td>
				<td class="k11">4</td>
				<td class="k11">5</td>
				<td class="k11">6</td>
			</tr>
			<xsl:for-each select="item">
			<tr>
				<td class="k11">
					<xsl:value-of select="position()"/>
				</td>
				<td class="k13">
					<xsl:value-of select="@text" />
				</td>
				<td class="k11" style="border-left:solid 2px; border-top:solid 2px;">
					X
				</td>
				<td class="k11" style="border-top:solid 2px;">23456</td>
				<td class="k11" style="border-top:solid 2px;">234567</td>
				<td class="k11" style="border-top:solid 2px; border-right:solid 2px;">1234567</td>
			</tr>
			</xsl:for-each>
			<tr>
				<td colspan="5" class="k2">Итого</td>
				<td class="k11">123456</td>
			</tr>
			<tr>
				<td colspan="5" class="k2">Сумма НДС в т.ч.</td>
				<td class="k11">123456</td>
			</tr>
			<tr>
				<td colspan="5" class="k2">Всего с учётом НДС</td>
				<td class="k1">12345678</td>
			</tr>
		</table>
		<table style="margin-top:40px; width:100%;">
			<tr>
				<td class="k3" style="width:160px">Заказчик(Генподрядчик)</td>
				<td class="q">
					<xsl:value-of select="sender/@directorPost"/>
				</td>
				<td style="width:15px"></td>
				<td class="q"></td>
				<td style="width:15px"></td>
				<td class="q">
					<xsl:value-of select="sender/@director"/>
				</td>
			</tr>
			<tr>
				<td></td>
				<td class="l1" style="text-align:center;">(должность)</td>
				<td></td>
				<td class="l1" style="text-align:center;">(подпись)</td>
				<td></td>
				<td class="l1" style="text-align:center;">(расшифровка подписи)</td>
			</tr>
			<tr>
				<td colspan="6" class="k3" style="padding-bottom:20px;">М.П.</td>
			</tr>
			<tr>
				<td class="k3" style="width:160px">Подрядчик(Субподрядчик)</td>
				<td class="q">
					<xsl:value-of select="recipier/@directorPost"/>
				</td>
				<td style="width:15px"></td>
				<td class="q"></td>
				<td style="width:15px"></td>
				<td class="q">
					<xsl:value-of select="recipier/@director"/>
				</td>
			</tr>
			<tr>
				<td></td>
				<td class="l1" style="text-align:center;">(должность)</td>
				<td></td>
				<td class="l1" style="text-align:center;">(подпись)</td>
				<td></td>
				<td class="l1" style="text-align:center;">(расшифровка подписи)</td>
			</tr>
			<tr>
				<td colspan="6" class="k3">М.П.</td>
			</tr>
		</table>
	</body>
	</html>
	</xsl:template>

</xsl:stylesheet>