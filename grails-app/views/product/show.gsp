<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<div class="container">

    <a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="home" controller="admin" action="index"><g:message
                    code="default.admin.home.label"/></g:link></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label"
                                                               args="[entityName]"/></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>


    <div id="show-product" class="page-header">
        <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    </div>

    <g:if test="${flash.message}">
        <div class="alert alert-info alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>
            <i class="fas fa-info-circle fa-2x"></i>&nbsp;${flash.message}</div>
    </g:if>

    <div>
        <dl class="dl-horizontal">
            <dt><g:message code="product.number.label" default="Number"/></dt>
            <dd><f:display bean="product" property="number"/></dd>

            <dt><g:message code="product.name.label" default="Name"/></dt>
            <dd><f:display bean="product" property="name"/></dd>

            <dt><g:message code="product.brand.label" default="Brand"/></dt>
            <dd><f:display bean="product" property="brand"/></dd>

            <dt><g:message code="product.shortDescription.label" default="Short Description"/></dt>
            <dd><f:display bean="product" property="shortDescription"/></dd>

            <dt><g:message code="product.longDescription.label" default="Long Description"/></dt>
            <dd><f:display bean="product" property="longDescription"/></dd>

            <dt><g:message code="product.largeDescription.label" default="Large Description"/></dt>
            <dd><f:display bean="product" property="largeDescription"/></dd>

            <dt><g:message code="product.conditionDescription.label" default="Condition Description"/></dt>
            <dd><f:display bean="product" property="conditionDescription"/></dd>

            <dt><g:message code="product.variantGroupId.label" default="Variant Group Id"/></dt>
            <dd><f:display bean="product" property="variantGroupId"/></dd>

            <dt><g:message code="product.taxCode.label" default="Tax Code"/></dt>
            <dd><f:display bean="product" property="taxCode"/></dd>

            <dt><g:message code="product.listPrice.label" default="List Price"/></dt>
            <dd><f:display bean="product" property="listPrice"/></dd>

            <dt><g:message code="product.shipWeight.label" default="Shipping Weight"/></dt>
            <dd><f:display bean="product" property="shipWeight"/></dd>

            <dt><g:message code="product.productType.label" default="Type"/></dt>
            <dd><f:display bean="product" property="productType"/></dd>

            <dt><g:message code="product.productConditionType.label" default="Condition"/></dt>
            <dd><f:display bean="product" property="productConditionType"/></dd>

            <dt><g:message code="product.primaryVariant.label" default="Primary Variant"/></dt>
            <dd><f:display bean="product" property="primaryVariant"/></dd>

            <dt><g:message code="product.display.label" default="Display"/></dt>
            <dd><f:display bean="product" property="display"/></dd>

            <dt><g:message code="product.showcase.label" default="Showcase"/></dt>
            <dd><f:display bean="product" property="showcase"/></dd>

            <dt><g:message code="product.outOfStock.label" default="Out of Stock"/></dt>
            <dd><f:display bean="product" property="outOfStock"/></dd>

            <dt><g:message code="product.webSell.label" default="Web Sell"/></dt>
            <dd><f:display bean="product" property="webSell"/></dd>

            <dt><g:message code="default.dateCreated.label" default="Created Date"/></dt>
            <dd><f:display bean="product" property="dateCreated"/></dd>

            <dt><g:message code="default.lastUpdated.label" default="Last Updated Date"/></dt>
            <dd><f:display bean="product" property="lastUpdated"/></dd>

            <dt><g:message code="product.salesDiscontinuationDate.label"
                           default="Sales Discontinuation Date"/></dt>
            <dd><f:display bean="product" property="salesDiscontinuationDate"/></dd>

            <dt><g:message code="product.supportDiscontinuationDate.label"
                           default="Support Discontinuation Date"/></dt>
            <dd><f:display bean="product" property="supportDiscontinuationDate"/></dd>

            <dt><g:message code="product.goodIdentifications.label" default="Good Identifications"/></dt>
            <dd>
                <g:each in="${product.goodIdentifications}" var="pg">
                    <b>${pg.goodIdentificationType}</b> - ${pg.value}<br/>
                </g:each>
                <g:link controller="goodIdentification" action="create"
                        params="['product.id': product?.id]">${message(code: 'default.add.label', args: [message(code: 'goodIdentification.label', default: 'GoodIdentification')])}
                </g:link>
            </dd>

            <dt><g:message code="product.productFeatureAppls.label" default="Features"/></dt>
            <dd>
                <g:each in="${product.productFeatureAppls}" var="pfa">
                    <b>${pfa.productFeature.productFeatureCategory.description}</b> - ${pfa.productFeature.description}<br/>
                </g:each>
                <g:link controller="productFeatureAppl" action="create"
                        params="['product.id': product?.id]">${message(code: 'default.add.label', args: [message(code: 'productFeatureAppl.label', default: 'ProductFeatureAppl')])}
                </g:link>
            </dd>

            <dt><g:message code="product.productCategories.label" default="Product Categories"/></dt>
            <dd>
                <g:each in="${product.productCategories}" var="pc">
                    ${pc.description}<br/>
                </g:each>
            </dd>

            <dt><g:message code="product.otherAttributes.label" default="Other Attributes"/></dt>
            <dd>
                <g:each in="${product.otherAttributes}" var="oa">
                    ${oa}<br/>
                </g:each>
            </dd>

        </dl>

        <g:form resource="${this.product}" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${this.product}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                <input class="delete" type="submit"
                       value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                       onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>

    </div>

    <h2><g:message code="product.photos.label" default="Photos"/></h2>

    <div class="table-responsive">
        <table class="table">

            <tbody>
            <g:each in="${product.photos}" var="photo">
                <tr>
                    <td>
                        <cb:image image="${photo.photo.getCloudFile('thumb')}"/><br/>
                    </td>
                    <td>
                        <dl class="dl-horizontal">
                            <dt><g:message code="photo.name.label" default="Name"/></dt>
                            <dd>${photo.name}</dd>
                            <dt><g:message code="photo.alt.label" default="Alt"/></dt>
                            <dd>${photo.alt}</dd>
                            <dt><g:message code="photo.title.label" default="Title"/></dt>
                            <dd>${photo.title}</dd>
                        </dl>
                        <g:link action="removePhoto"
                                params="[id: product.id, photo: photo.id]">Remove Attachment</g:link>&nbsp;(Doesn't delete photo)<br/>
                    </td>
                </tr>

            </g:each>

            </tbody>
        </table>
    </div><!-- .table-responsive -->

    <h2>Upload Photo and Attach</h2>
    <g:uploadForm name="upload" url="[action: 'uploadPhoto', controller: 'product']">
        <g:hiddenField name="id" value="${product.id}"/>
        <div class="row">
            <div class="form-group col-md-6">
                <label for="name">Name</label>
                <g:textField class="form-control" name="name" placeholder="name"/>
            </div>

            <div class="form-group col-md-6">
                <label for="alt">Alt</label>
                <g:textField class="form-control" name="alt" placeholder="alt"/>

                <p class="help-block">Used if no image is loaded and screen readers</p>
            </div>

            <div class="form-group col-md-6">
                <label for="title">Title</label>
                <g:textField class="form-control" name="title" placeholder="title"/>

                <p class="help-block">Displays as tooltip on hover</p>
            </div>

            <div class="form-group col-md-6">
                <label for="photo">File input</label>
                <input class="form-control" type="file" name="photo" id="photo">

                <p class="help-block">Select file to upload...</p>
            </div>
        </div> <%-- /.row --%>

        <fieldset class="buttons">
            <g:submitButton name="upload" class="save"
                            value="${message(code: 'default.addPhoto.label', default: 'default.addPhoto.label')}"/>
        </fieldset>
    </g:uploadForm>

    <h2>Attach Existing Photo</h2>

    <g:form action="attachPhoto">
        <div class="row">

            <g:hiddenField name="id" value="${product.id}"/>

            <div class="form-group col-md-6">
                <label for="photo2">
                    <g:message code="photo.label" default="photo.label"/>
                </label>
                <g:select id="photo2" name="photo" from="${net.codebuilders.mybusiness.Photo.list()}"
                          optionKey="id" optionValue="name" size="10" class="selectpicker form-control"
                          multiple data-max-options="1" data-live-search="true" title="Select a photo by name"/>
            </div>

        </div>
        <fieldset class="buttons">
            <g:submitButton name="attachPhoto" class="save"
                            value="${message(code: 'default.button.update.label', default: 'default.button.update.label')}"/>
        </fieldset>
    </g:form>

</div> <!-- container -->
</body>
</html>
