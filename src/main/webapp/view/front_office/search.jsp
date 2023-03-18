<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<title>Ghazwa Immobilier</title>
		<meta content="width=device-width, initial-scale=1.0" name="viewport">
		<link href="${pageContext.request.contextPath}/view/assets/img/favicon.ico" rel="icon">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap"
			rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/lib/animate/animate.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/lib/owlcarousel/assets/owl.carousel.min.css"
			rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/view/assets/css/style.css" rel="stylesheet">
	</head>
<body>

<%@ include file="../partials/header.jsp" %>
<!--Section Start-->
<section class="gray" >
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12">
                <div id="filter_search" class="simple-sidebar sm-sidebar" style="left: -310px;">

                    <div class="sidebar-widgets">
                        <div class="sidebar-widgets">
                            <form action="#" method="get" id="filters-form">
                                <div class="form-group simple">
                                    <div class="input-with-icon">
                                        <div class="input-with-icon"><input type="text" name="k" value="" placeholder="Rechercher une localisation" class="form-control"> </div>
                                    </div>
                                </div>
                                <div class="form-group simple"><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-15-80mp" style="width: 304px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-city_id-container" aria-controls="select2-city_id-container"><span class="select2-selection__rendered" id="select2-city_id-container" role="textbox" aria-readonly="true" title="Country, State, Ville"><span class="select2-selection__placeholder">Country, State, Ville</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                                <div class="form-group simple">
                                    <div class="simple-input">
                                        <select id="ptypes" data-placeholder="Catégorie" name="category_id" class="form-control has-sub-category select2-hidden-accessible" data-select2-id="select2-data-ptypes" tabindex="-1" aria-hidden="true">
                                            <option value="" data-select2-id="select2-data-6-9wqu">&nbsp;</option>
                                            <option value="13">
                                                Appartement
                                            </option>
                                            <option value="14">
                                                Villa
                                            </option>
                                            <option value="15">
                                                Riad
                                            </option>
                                            <option value="16">
                                                Hôtel
                                            </option>
                                            <option value="17">
                                                Maison D'hôte
                                            </option>
                                            <option value="18">
                                                Bureau
                                            </option>
                                            <option value="19">
                                                Local
                                            </option>
                                            <option value="20">
                                                Terrain
                                            </option>
                                            <option value="21">
                                                Programme neuf
                                            </option>
                                            <option value="22">
                                                Pavillon
                                            </option>
                                            <option value="23">
                                                Ferme
                                            </option>
                                            <option value="24">
                                                Duplex
                                            </option>
                                            <option value="25">
                                                Etage de villa
                                            </option>
                                            <option value="26">
                                                Studio
                                            </option>
                                            <option value="27">
                                                souhail
                                            </option>
                                        </select>
                                        <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-5-z82q" style="width: 304px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-ptypes-container" aria-controls="select2-ptypes-container"><span class="select2-selection__rendered" id="select2-ptypes-container" role="textbox" aria-readonly="true" title="Catégorie"><span class="select2-selection__placeholder">Catégorie</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                    </div>
                                </div>
                                <div class="form-group simple">
                                    <div class="simple-input">
                                        <select id="select-type" data-placeholder="Type" name="type" class="form-control select2-hidden-accessible" data-select2-id="select2-data-select-type" tabindex="-1" aria-hidden="true">
                                            <option value="" data-select2-id="select2-data-8-6f0q">-- Selectionner --</option>
                                            <option value="location">Location
                                            </option>
                                            <option value="vente">Vente
                                            </option>
                                            <option value="location-saisonniere">Location saisonnière
                                            </option>
                                            <option value="programmes-neufs">Programmes Neufs
                                            </option>
                                            <option value="international">International
                                            </option>
                                            <option value="test-test">souhail deep
                                            </option>
                                        </select>
                                        <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-7-qhov" style="width: 304px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-select-type-container" aria-controls="select2-select-type-container"><span class="select2-selection__rendered" id="select2-select-type-container" role="textbox" aria-readonly="true" title="Type"><span class="select2-selection__placeholder">Price</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="form-group simple">
                                            <div class="simple-input">
                                                <select id="minprice" data-placeholder="No Min" name="min_price" class="form-control select2-hidden-accessible" data-select2-id="select2-data-minprice" tabindex="-1" aria-hidden="true">
                                                    <option value="" data-select2-id="select2-data-12-tior">Min</option>

                                                    <option value="500">
                                                        500
                                                    </option>
                                                    <option value="1000">
                                                        1000
                                                    </option>
                                                    <option value="2000">
                                                        2000
                                                    </option>
                                                    <option value="5000">
                                                        5000
                                                    </option>
                                                    <option value="10000">
                                                        10000
                                                    </option>
                                                </select>
                                                <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-11-rh9v" style="width: 140px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-minprice-container" aria-controls="select2-minprice-container"><span class="select2-selection__rendered" id="select2-minprice-container" role="textbox" aria-readonly="true" title="No Min"><span class="select2-selection__placeholder">Type</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="form-group simple">
                                            <div class="simple-input">
                                                <select id="maxprice" data-placeholder="No Max" name="max_price" class="form-control select2-hidden-accessible" data-select2-id="select2-data-maxprice" tabindex="-1" aria-hidden="true">
                                                    <option value="" data-select2-id="select2-data-14-zuxo">Max</option>
                                                    <option value="1000">
                                                        1000
                                                    </option>
                                                    <option value="2000">
                                                        2000
                                                    </option>
                                                    <option value="5000">
                                                        5000
                                                    </option>
                                                    <option value="10000">
                                                        10000
                                                    </option>
                                                    <option value="50000">
                                                        50000
                                                    </option>
                                                </select>
                                                <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-13-r3ty" style="width: 140px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-maxprice-container" aria-controls="select2-maxprice-container"><span class="select2-selection__rendered" id="select2-maxprice-container" role="textbox" aria-readonly="true" title="No Max"></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group simple">
                                    <div class="simple-input">
                                        <select id="select-bedroom" data-placeholder="Chambre" name="bedroom" class="form-control select2-hidden-accessible" data-select2-id="select2-data-select-bedroom" tabindex="-1" aria-hidden="true">
                                            <option value="" data-select2-id="select2-data-2-vbxh">&nbsp;</option>
                                            <option value="1">
                                                sale
                                            </option>
                                            <option value="2">
                                                rent
                                            </option>


                                        </select>
                                        <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-1-q2bp" style="width: 304px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-select-bedroom-container" aria-controls="select2-select-bedroom-container"><span class="select2-selection__rendered" id="select2-select-bedroom-container" role="textbox" aria-readonly="true" title="Chambre"><span class="select2-selection__placeholder">Chambre</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                    </div>
                                </div>
                                <div class="form-group simple">
                                    <div class="simple-input">
                                        <select id="select-bathroom" data-placeholder="Salle de bains" name="bathroom" class="form-control select2-hidden-accessible" data-select2-id="select2-data-select-bathroom" tabindex="-1" aria-hidden="true">
                                            <option value="" data-select2-id="select2-data-4-2v9x">&nbsp;</option>
                                            <option value="1">
                                                1
                                            </option>
                                            <option value="2">
                                                2
                                            </option>
                                            <option value="3">
                                                3
                                            </option>
                                            <option value="4">
                                                4
                                            </option>
                                            <option value="5">
                                                5
                                            </option>
                                        </select>
                                        <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-3-4y2x" style="width: 304px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-select-bathroom-container" aria-controls="select2-select-bathroom-container"><span class="select2-selection__rendered" id="select2-select-bathroom-container" role="textbox" aria-readonly="true" title="Salle de bains"><span class="select2-selection__placeholder">Salle de bains</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <div class="simple-input"><input type="text" name="min_area" value="" placeholder="Surface min" class="form-control"></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <div class="simple-input"><input type="text" name="max_area" value="" placeholder="Surface max" class="form-control"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_search_boxed">
                                    <div class="widget-boxed-header">
                                        <h4><a href="#features" data-bs-toggle="collapse" aria-expanded="true" role="button">Recherche Avancée</a></h4>
                                    </div>
                                    <div id="features" data-parent="#features" class="widget-boxed-body collapse show">
                                        <ul class="no-ul-list second-row">
                                            <li><input id="features-0" name="features[]" type="checkbox" value="25" class="input-filter checkbox-custom"> <label for="features-0" class="checkbox-custom-label">Piscine</label></li>
                                            <li><input id="features-1" name="features[]" type="checkbox" value="26" class="input-filter checkbox-custom"> <label for="features-1" class="checkbox-custom-label">jardin</label></li>
                                            <li><input id="features-2" name="features[]" type="checkbox" value="28" class="input-filter checkbox-custom"> <label for="features-2" class="checkbox-custom-label">Piscine commune</label></li>
                                            <li><input id="features-3" name="features[]" type="checkbox" value="29" class="input-filter checkbox-custom"> <label for="features-3" class="checkbox-custom-label">Place de parking</label></li>
                                            <li><input id="features-4" name="features[]" type="checkbox" value="30" class="input-filter checkbox-custom"> <label for="features-4" class="checkbox-custom-label">Terrasse</label></li>
                                        </ul>
                                    </div>
                                </div>
                                <input type="hidden" id="filter_sort_by" name="sort_by" value=""> <button type="submit" class="btn btn-primary rounded full-width mt-3  ">Trouver une nouvelle maison</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-12 list-layout">
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="item-sorting-box">
                            <div class="item-sorting clearfix">
                                <div class="left-column pull-left">
<%--                                    <h4 class="m-0">--%>
<%--                                        Trouvé :de - :à De 200 Résultats--%>
<%--                                    </h4>--%>
                                </div>
                            </div>
                            <div class="item-sorting-box-right">
                                <div class="sorting-by">
                                    <select id="sort_by" name="sort_by" data-placeholder="Trier par" class="form-control select2-hidden-accessible" data-select2-id="select2-data-sort_by" tabindex="-1" aria-hidden="true">
                                        <option value="" data-select2-id="select2-data-10-p4qv">Trier par</option>
                                        <option value="">Défaut</option>
                                        <option value="date_asc">le plus ancien</option>
                                        <option value="date_desc">Le plus récent</option>
                                        <option value="price_asc">Prix : Croissant</option>
                                        <option value="price_desc">Prix : Décroissant</option>
                                        <option value="name_asc">Nom: A-Z</option>
                                        <option value="name_desc">Nom: Z-A</option>
                                    </select>
                                    <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="select2-data-9-cmlv" style="width: 106.953px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-sort_by-container" aria-controls="select2-sort_by-container"><span class="select2-selection__rendered" id="select2-sort_by-container" role="textbox" aria-readonly="true" title="Trier par"></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                <!--first property start-->
                <div class="col-12 col-md-6 pt-3 mb-3"   >
                    <div class="property-item rounded overflow-hidden">
                        <div class="position-relative overflow-hidden">
                            <a href=""><img class="img-fluid" src="assets/img/property-5.jpg" alt=""></a>
                            <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For
                                Sell</div>
                            <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
                                Home</div>
                        </div>
                        <div class="p-4 pb-0">
                            <h5 class="text-primary mb-3">$12,345</h5>
                            <a class="d-block h5 mb-2" href="">Golden Urban House For
                                Sell</a>
                            <p>
                                <i class="fa fa-map-marker-alt text-primary me-2"></i>123
                                Street, New York, USA
                            </p>
                        </div>
                        <div class="d-flex border-top">
                            <small class="flex-fill text-center border-end py-2"><i
                                    class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3
                                Bed</small> <small class="flex-fill text-center py-2"><i
                                class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                        </div>
                    </div>
                </div>
                <!--first property end-->
                <!--second property start-->

                <div class="col-12 col-md-6 pt-3 mb-3"   >
                    <div class="property-item rounded overflow-hidden">
                        <div class="position-relative overflow-hidden">
                            <a href=""><img class="img-fluid" src="assets/img/property-5.jpg" alt=""></a>
                            <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For
                                Sell</div>
                            <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
                                Home</div>
                        </div>
                        <div class="p-4 pb-0">
                            <h5 class="text-primary mb-3">$12,345</h5>
                            <a class="d-block h5 mb-2" href="">Golden Urban House For
                                Sell</a>
                            <p>
                                <i class="fa fa-map-marker-alt text-primary me-2"></i>123
                                Street, New York, USA
                            </p>
                        </div>
                        <div class="d-flex border-top">
                            <small class="flex-fill text-center border-end py-2"><i
                                    class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3
                                Bed</small> <small class="flex-fill text-center py-2"><i
                                class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                        </div>
                    </div>
                </div>
                <!--second property end-->

                    <!--third propery start-->

                    <div class="col-12 col-md-6 pt-3 mb-3"   >
                        <div class="property-item rounded overflow-hidden">
                            <div class="position-relative overflow-hidden">
                                <a href=""><img class="img-fluid" src="assets/img/property-5.jpg" alt=""></a>
                                <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For
                                    Sell</div>
                                <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
                                    Home</div>
                            </div>
                            <div class="p-4 pb-0">
                                <h5 class="text-primary mb-3">$12,345</h5>
                                <a class="d-block h5 mb-2" href="">Golden Urban House For
                                    Sell</a>
                                <p>
                                    <i class="fa fa-map-marker-alt text-primary me-2"></i>123
                                    Street, New York, USA
                                </p>
                            </div>
                            <div class="d-flex border-top">
                                <small class="flex-fill text-center border-end py-2"><i
                                        class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3
                                    Bed</small> <small class="flex-fill text-center py-2"><i
                                    class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                            </div>
                        </div>
                    </div>
                    <!--third propery end-->
                    <!--fourth propery end-->

                    <div class="col-12 col-md-6 pt-3 mb-3"  >
                        <div class="property-item rounded overflow-hidden">
                            <div class="position-relative overflow-hidden">
                                <a href=""><img class="img-fluid" src="assets/img/property-5.jpg" alt=""></a>
                                <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For
                                    Sell</div>
                                <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
                                    Home</div>
                            </div>
                            <div class="p-4 pb-0">
                                <h5 class="text-primary mb-3">$12,345</h5>
                                <a class="d-block h5 mb-2" href="">Golden Urban House For
                                    Sell</a>
                                <p>
                                    <i class="fa fa-map-marker-alt text-primary me-2"></i>123
                                    Street, New York, USA
                                </p>
                            </div>
                            <div class="d-flex border-top">
                                <small class="flex-fill text-center border-end py-2"><i
                                        class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3
                                    Bed</small> <small class="flex-fill text-center py-2"><i
                                    class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                            </div>
                        </div>
                    </div>
                    <!--fourth propery end-->
                </div>
            </div>

        </div>
        </div>
    </div>
</section>
<!-- Section End-->
	<%@ include file="../partials/footer.jsp" %>

		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>





		<!-- JavaScript Libraries -->
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/view/assets/lib/wow/wow.min.js"></script>
		<script src="${pageContext.request.contextPath}/view/assets/lib/easing/easing.min.js"></script>
		<script src="${pageContext.request.contextPath}/view/assets/lib/waypoints/waypoints.min.js"></script>
		<script src="${pageContext.request.contextPath}/view/assets/lib/owlcarousel/owl.carousel.min.js"></script>


		<script src="${pageContext.request.contextPath}/view/assets/js/main.js"></script>
		
</body>
</html>
