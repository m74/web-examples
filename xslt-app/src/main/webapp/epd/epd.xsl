<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>

<xsl:stylesheet xmlns:fmt="http://xml.apache.org/xalan/java/tk.xsl.Format"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:import href="/xsl/blank.xsl"/>

    <xsl:template match="/blank">
        <style>
            div.h1{font-size:12px;font-weight:normal;margin-top:30px;margin-left:650px;}
            .h2{font-size:12px;font-weight:normal;width:130px;border-style:solid;border-width:1px;border-color:black;position:absolute;left:851px;text-align:center;top:75px;}
            .nrmplrgh{border-color:black;border-width:2px;border-style:solid;border-top:0px;border-bottom:0px;border-left:0px;text-align:left;vertical-align:top;}
            .nrm{font-size:12px;font-weight:normal;border-collapse: collapse;}
            .ctrbtm{border-color:black;border-width:1px;border-style:solid;border-top:0px;border-right:0px;border-left:0px;text-align:center;}
            .brdrbtm{border-color:black;border-width:1px;border-style:solid;border-top:0px;border-right:0px;border-left:0px;vertical-align:bottom;}
            .brdr{border-color:black;border-width: 2px;border-style: solid;width: 10;text-align:center;}
            .nrmtbl{border-color:black;border-width:1px;border-style:solid;text-align:center;padding-top:2px;padding-left:2px;padding-right:2px;padding-bottom:2px;}
            .nrmtblr{border-color:black;border-width:1px;border-style:solid;text-align:right;padding-top:2px;padding-left:2px;padding-right:2px;padding-bottom:2px;vertical-align:top;}
            .nrmtbll{border-color:black;border-width:1px;border-style:solid;text-align:left;padding-top:2px;padding-left:2px;padding-right:2px;padding-bottom:2px;vertical-align:top;}
            .undtext{vertical-align: top;text-align: center;font-size: 9px;}
        </style>
        <table class="nrm" name="table1">
            <tr>
                <td style="70px"/>
                <td/>
                <td/>
                <td/>
                <td style="width:9%"/>
                <td style="width:1.1%"/>
                <td/>
                <td/>
                <td/>
                <td width="23%"/>
                <td/>
            </tr>
            <tr>
                <td colspan="3" rowspan="3" class="nrmplrgh" width="100" style="padding-right:16px">Универсальный
                    передаточный документ
                </td>
                <td style="width:11.2%">Счёт-фактура №</td>
                <td colspan="2" class="ctrbtm">
                    <xsl:value-of select="number"/>
                </td>
                <td style="width:4%; text-align:center">от</td>
                <td style="width:12.3%" class="ctrbtm">
                    <xsl:value-of select="fmt:date(@date)"/>
                </td>
                <td style="width:28.2%">(1)</td>
                <td rowspan="2" colspan="2" style="text-align:right; font-size:9px;">Приложение №1<br/>к постановлению
                    Правительства Российской Федерации<br/>от 26 декабря 2011 г. №1137
                </td>
            </tr>
            <tr>
                <td class="nrm">Исправление №</td>
                <td colspan="2" class="ctrbtm">-</td> <!--?-->
                <td style="text-align:center">от</td>
                <td class="ctrbtm">-</td>
                <td>(1a)</td>
            </tr>
            <tr>
                <td colspan="2" style="font-weight:bold">Продавец:</td>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="sender/legalTitle"/>
                </td>
                <td>(2)</td>
            </tr>
            <tr>
                <td style="font-align:right; padding-right:5px">Статус</td>
                <td class="brdr" style="padding-right:3px; padding-left:3px;">1</td>
                <td class="nrmplrgh"/>
                <td colspan="2">Адрес:</td>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="sender/legalAddress"/>
                </td>
                <td>(2a)</td>
            </tr>
            <tr>
                <td colspan="3" class="nrmplrgh"/>
                <td colspan="2">ИНН/КПП продавца:</td>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="sender/inn"/>
                    <xsl:text>/</xsl:text>
                    <xsl:value-of select="sender/kpp"/>
                </td>
                <td>(2б)</td>
            </tr>
            <tr>
                <td colspan="3" rowspan="8" class="nrmplrgh" style="font-size:9">1-счёт-фактура и передаточный документ
                    (акт)<br/>2-передаточный документ (акт)
                </td>
                <td colspan="2">Грузоотправитель и его адрес:</td>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="sender/legalTitle"/>
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="sender/legalAddress"/>
                </td>
                <td>(3)</td>
            </tr>
            <tr>
                <td colspan="2">Грузополучатель и его адрес:</td>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="recipier/legalTitle"/>
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="recipier/legalAddress"/>
                </td>
                <td>(4)</td>
            </tr>
            <tr>
                <td colspan="2">К платёжно-рассчётному документу №</td>
                <td colspan="5" class="brdrbtm">от</td>
                <td>(5)</td>
            </tr>
            <tr>
                <td colspan="2" style="font-weight:bold">Покупатель:</td>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="recipier/legalTitle"/>
                </td>
                <td>(6)</td>
            </tr>
            <tr>
                <td colspan="2">Адрес:</td>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="recipier/legalAddress"/>
                </td>
                <td>(6a)</td>
            </tr>
            <tr>
                <td colspan="2">ИНН/КПП покупателя:</td>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="recipier/inn"/>
                    <xsl:text>/</xsl:text>
                    <xsl:value-of select="recipier/kpp"/>
                </td>
                <td>(6б)</td>
            </tr>
            <tr>
                <td colspan="2">Валюта: наименование, код</td>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="currency/@legalTitle"/>
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="currency/@code"/>
                </td>
                <td>(7)</td>
            </tr>
        </table>
        <table class="nrm" name="table2">
            <tr>
                <td rowspan="2" class="nrmtbl" width="25">№ п/п</td>
                <td rowspan="2" class="nrmtbl" style="border-right-width:2px;" width="63">Код товара/работ, услуг</td>
                <td rowspan="2" class="nrmtbl">Наименование товара (описание выполненных работ, оказанных услуг),
                    имущественного права
                </td>
                <td colspan="2" class="nrmtbl" width="50">Единица измерения</td>
                <td rowspan="2" colspan="2" class="nrmtbl">Коли- чество (объем)</td>
                <td rowspan="2" class="nrmtbl">Цена (тариф) за еденицу измерения</td>
                <td rowspan="2" class="nrmtbl">Стоимость товаров (работ, услуг), имущественных прав без налога - всего
                </td>
                <td rowspan="2" colspan="2" class="nrmtbl">В том числе сумма акциза</td>
                <td rowspan="2" class="nrmtbl">Нало- говая ставка</td>
                <td rowspan="2" colspan="2" class="nrmtbl">Сумма налога, предъяв- ляемая покупателю</td>
                <td rowspan="2" class="nrmtbl">Стоимость товаров (работ, услуг), имущественных прав с налогом - всего
                </td>
                <td colspan="3" class="nrmtbl">Страна происхождения товара</td>
                <td rowspan="2" class="nrmtbl">Номер таможенной декларации</td>
            </tr>
            <tr>
                <td class="nrmtbl">код</td>
                <td class="nrmtbl">условное обозна- чение (нацио- нальное)</td>
                <td class="nrmtbl" colspan="2">циф- ро- вой код</td>
                <td class="nrmtbl">краткое наиме- нование</td>
            </tr>
            <tr>
                <td class="nrmtbl">A</td>
                <td class="nrmtbl" style="border-right-width:2px;">Б</td>
                <td class="nrmtbl">1</td>
                <td class="nrmtbl">2</td>
                <td class="nrmtbl">2а</td>
                <td class="nrmtbl" colspan="2">3</td>
                <td class="nrmtbl">4</td>
                <td class="nrmtbl">5</td>
                <td class="nrmtbl" colspan="2">6</td>
                <td class="nrmtbl">7</td>
                <td class="nrmtbl" colspan="2">8</td>
                <td class="nrmtbl">9</td>
                <td class="nrmtbl" colspan="2">10</td>
                <td class="nrmtbl">10a</td>
                <td class="nrmtbl">11</td>
            </tr>
            <xsl:for-each select="item">
                <tr>
                    <td class="nrmtblr">
                        <xsl:value-of select="position()"/>
                    </td>
                    <td class="nrmtbll" style="border-right-width:2px;">
                    </td>
                    <td class="nrmtbll">
                        <xsl:value-of select="@text"/>
                    </td>
                    <td class="nrmtbll">
                        <xsl:value-of select="unit/@code"/>
                    </td>
                    <td class="nrmtbll">
                        <xsl:value-of select="unit/@title"/>
                    </td>
                    <td class="nrmtblr" colspan="2">
                        <xsl:value-of select="@count"/>
                    </td>
                    <td class="nrmtblr">
                        <xsl:value-of select="fmt: money(@price)"/>
                    </td>
                    <td class="nrmtblr">
                        <xsl:value-of select="fmt: money(@cost - @costTax)"/>
                    </td>
                    <td class="nrmtbll" colspan="2"></td>
                    <td class="nrmtbll">
                        <xsl:value-of select="@taxPercent"/>
                    </td>
                    <td class="nrmtblr" colspan="2">
                        <xsl:value-of select="fmt: money(@costTax)"/>
                    </td>
                    <td class="nrmtblr">
                        <xsl:value-of select="fmt: money(@cost)"/>
                    </td>
                    <td class="nrmtbll" colspan="2"></td>
                    <td class="nrmtbll"></td>
                    <td class="nrmtbll"></td>
                </tr>
            </xsl:for-each>
            <tr>
                <td class="nrmtbll" colspan="2" style="border-right-width:2px;"/>
                <td class="nrmtbll" colspan="6" style="font-weight:bold">Всего к оплате</td>
                <td class="nrmtblr">
                    <xsl:value-of select="fmt: money(summary/@sum - summary/@taxSum)"/>
                </td>
                <td class="nrmtbl" colspan="3">X</td>
                <td class="nrmtblr" colspan="2">
                    <xsl:value-of select="fmt: money(summary/@taxSum)"/>
                </td>
                <td class="nrmtblr">
                    <xsl:value-of select="fmt: money(summary/@sum)"/>
                </td>
                <td class="nrmtbll" colspan="4"/>
            </tr>
            <tr>
                <td rowspan="4" colspan="2"
                    style="border-color:black; border-width: 0px; border-style: solid; border-right-width:2px; vertical-align: top;">
                    Документ составлен на 1 листе
                </td>
                <td>Руководитель организации или иное уполномоченное лицо</td>
                <td colspan="3" class="brdrbtm"/>
                <td/>
                <td colspan="2" class="brdrbtm">
                    <xsl:value-of select="document/recipier/director"/>
                </td>
                <td colspan="5">Главный бухгалтер или иное уполномоченное лицо</td>
                <td colspan="2" class="brdrbtm"/>
                <td/>
                <td colspan="2" class="brdrbtm">
                    <xsl:value-of select="document/recipier/accounter"/>
                </td>
            </tr>
            <tr>
                <td/>
                <td colspan="3" class="undtext">(подпись)</td>
                <td width="10px"/>
                <td colspan="2" class="undtext">(Ф.и.о)</td>
                <td colspan="5"/>
                <td colspan="2" class="undtext">(подпись)</td>
                <td width="10px"/>
                <td colspan="2" class="undtext">(Ф.и.о)</td>
            </tr>
            <tr>
                <td>Индивидуальный предприниматель</td>
                <td colspan="3" class="brdrbtm"/>
                <td/>
                <td colspan="2" class="brdrbtm"/>
                <td/>
                <td colspan="9" class="brdrbtm"/>
            </tr>
            <tr style="border-color:black; border-width: 0px; border-style: solid; border-bottom-width:2px;">
                <td/>
                <td colspan="3" class="undtext">(подпись)</td>
                <td width="10px"/>
                <td colspan="2" class="undtext">(Ф.и.о)</td>
                <td/>
                <td colspan="9" class="undtext">(реквизиты свидетельства государственной регистрации индивидуального
                    предпринимателя)
                </td>
            </tr>
        </table>
        <table name="table3" class="nrm" width="100%">
            <tr>
                <td colspan="4">Основание передачи(сдачи)/получения(приемки)</td>
                <td colspan="10" class="brdrbtm" style="text-align:left"></td>
                <td width="20">[8]</td>
            </tr>
            <tr>
                <td colspan="4"/>
                <td colspan="10" class="undtext">(договор, доверенность и др.)</td>
                <td/>
            </tr>
            <tr>
                <td colspan="3">Данные о транспортировке и грузе</td>
                <td colspan="11" class="brdrbtm"/>
                <td>[9]</td>
            </tr>
            <tr>
                <td colspan="3"/>
                <td colspan="11" class="undtext">(транспортная накладная, поручение экспедитору,
                    экспедиторская/складская расписка и др./масса нетто/брутто груза, если не приведены ссылки на
                    транспортные документы, содержащие эти сведения)
                </td>
                <td/>
            </tr>
            <tr>
                <td colspan="8">Товар(груз) передал/услуги, результаты работ, права сдал</td>
                <td width="5px"
                    style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td colspan="6">Товар(груз) передал/услуги, результаты работ, права принял</td>
            </tr>
            <tr>
                <td class="brdrbtm" height="30" width="14%"/>
                <td width="10px"/>
                <td colspan="3" class="brdrbtm" width="14%"/>
                <td width="10px"/>
                <td class="brdrbtm" width="14%"/>
                <td width="23">[10]</td>
                <td style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td class="brdrbtm" width="14%"/>
                <td width="10px"/>
                <td class="brdrbtm" width="14%"/>
                <td width="10px"/>
                <td class="brdrbtm" width="14%"/>
                <td>[15]</td>
            </tr>
            <tr>
                <td class="undtext">(должность)</td>
                <td width="10px"/>
                <td colspan="3" class="undtext">(подпись)</td>
                <td/>
                <td class="undtext">(Ф.и.о.)</td>
                <td/>
                <td style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td class="undtext">(должность)</td>
                <td/>
                <td class="undtext">(подпись)</td>
                <td/>
                <td class="undtext">(Ф.и.о.)</td>
                <td/>
            </tr>
            <tr>
                <td colspan="3">Дата отгрузки, передачи(сдачи)</td>
                <td colspan="2" class="brdrbtm"></td>
                <td colspan="2"/>
                <td>[11]</td>
                <td style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td colspan="2">Дата получения(приемки)</td>
                <td class="brdrbtm"></td>
                <td colspan="2"/>
                <td>[16]</td>
            </tr>
            <tr>
                <td colspan="8">Иные сведения об отгрузке, передаче</td>
                <td width="5px"
                    style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td colspan="6">Иные сведения о получении, приемке</td>
            </tr>
            <tr>
                <td colspan="7" class="brdrbtm" height="30"/>
                <td>[12]</td>
                <td width="5px"
                    style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td colspan="5" class="brdrbtm"/>
                <td>[17]</td>
            </tr>
            <tr>
                <td colspan="7" class="undtext">(ссылки на неотъемлемые приложения, сопутствующие документы, иные
                    документы и т.п.)
                </td>
                <td/>
                <td width="5px"
                    style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td colspan="5" class="undtext">(информация о наличии/отсутствии претензий; ссылки на неотъемлемые
                    приложения, и другие документы и т.п.)
                </td>
                <td/>
            </tr>
            <tr>
                <td colspan="8" width="50%">Ответственность за правильность оформления факта хозяйственной жизни</td>
                <td width="5px"
                    style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td colspan="6">Ответственность за правильность оформления факта хозяйственной жизни</td>
            </tr>
            <tr>
                <td class="brdrbtm" height="30"/>
                <td/>
                <td colspan="3" class="brdrbtm"/>
                <td/>
                <td class="brdrbtm"/>
                <td>[13]</td>
                <td style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td class="brdrbtm"/>
                <td/>
                <td class="brdrbtm"/>
                <td/>
                <td class="brdrbtm"/>
                <td>[18]</td>
            </tr>
            <tr>
                <td class="undtext">(должность)</td>
                <td width="10px"/>
                <td colspan="3" class="undtext">(подпись)</td>
                <td/>
                <td class="undtext">(Ф.и.о.)</td>
                <td/>
                <td style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td class="undtext">(должность)</td>
                <td/>
                <td class="undtext">(подпись)</td>
                <td/>
                <td class="undtext">(Ф.и.о.)</td>
                <td/>
            </tr>
            <tr>
                <td colspan="7" class="brdrbtm" height="30">
                    <xsl:value-of select="sender/legalTitle"/>
                    <xsl:text>, ИНН/КПП </xsl:text>
                    <xsl:value-of select="sender/inn"/>
                    <xsl:text>/</xsl:text>
                    <xsl:value-of select="sender/kpp"/>
                </td>
                <td>[14]</td>
                <td width="5px"
                    style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td colspan="5" class="brdrbtm">
                    <xsl:value-of select="recipier/legalTitle"/>
                    <xsl:text>, ИНН/КПП </xsl:text>
                    <xsl:value-of select="recipier/inn"/>
                    <xsl:text>/</xsl:text>
                    <xsl:value-of select="recipier/kpp"/>
                </td>
                <td>[19]</td>
            </tr>
            <tr>
                <td colspan="7" class="undtext">(может не заполняться при проставлении печати в М.П., может быть указан
                    ИНН/КПП)
                </td>
                <td/>
                <td width="5px"
                    style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td colspan="5" class="undtext">(может не заполняться при проставлении печати в М.П., может быть указан
                    ИНН/КПП)
                </td>
                <td/>
            </tr>
            <tr>
                <td style="text-align:center">М.П.</td>
                <td colspan="7"/>
                <td width="5px"
                    style="border-color:black; border-width: 0px; border-style: solid; border-left-width:2px;"/>
                <td style="text-align:center">М.П.</td>
                <td colspan="5"/>
            </tr>
        </table>

    </xsl:template>


</xsl:stylesheet>
