@extends('Layout.Landing_layout')
@section('title','SIGEPAR|Announcement')
@section('content')


<section class="d-flex flex-column justify-content-center align-items-center testimonials section-bg" style="margin-top:15px;">
   <!-- ======= Galery Section ======= -->
    <section id="portfolio" class="portfolio services section-bg">
        <div class="container">

            <div class="section-title">
                <h2>Galery</h2>
                <p>Sit sint consectetur velit quisquam cupiditate impedit suscipit</p>
            </div>



            <div class="row portfolio-container">

                <div class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="{{asset('assets/img/gereja.jpg')}}" class="img-fluid" alt="">
                            <a href="{{asset('assets/img/gereja.jpg')}}" data-gallery="portfolioGallery" class="link-preview portfolio-lightbox" title="Preview"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bx bx-link"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Perayaan Ulang Tahun HKI</a></h4>
                            <p>Dalam rangka merayakan Ulang tahun HKI yang ke 19 maka ....</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp" data-wow-delay="0.1s">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="{{asset('assets/img/dalamgereja.jpg')}}" class="img-fluid" alt="">
                            <a href="{{asset('assets/img/gereja2.jpg')}}" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Preview"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bx bx-link"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Ibadah 5 Mei 2022</a></h4>
                            <p>Jemaat HKI Parsoburan melaksanakan ibadah hari minggu di Gereja HKI Parsoburan</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp" data-wow-delay="0.1s">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="{{asset('assets/img/dalamgereja.jpg')}}" class="img-fluid" alt="">
                            <a href="{{asset('assets/img/dalamgereja.jpg')}}" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Preview"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bx bx-link"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Ibadah 5 Mei 2022</a></h4>
                            <p>Jemaat HKI Parsoburan melaksanakan ibadah hari minggu di Gereja HKI Parsoburan</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp" data-wow-delay="0.1s">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="{{asset('assets/img/gereja.jpg')}}" class="img-fluid" alt="">
                            <a href="{{asset('assets/img/gereja.jpg')}}" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Preview"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bx bx-link"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Ibadah 5 Mei 2022</a></h4>
                            <p>Jemaat HKI Parsoburan melaksanakan ibadah hari minggu di Gereja HKI Parsoburan</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp" data-wow-delay="0.1s">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="{{asset('assets/img/gereja2.jpg')}}" class="img-fluid" alt="">
                            <a href="{{asset('assets/img/gereja2.jpg')}}" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Preview"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bx bx-link"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Ibadah 5 Mei 2022</a></h4>
                            <p>Jemaat HKI Parsoburan melaksanakan ibadah hari minggu di Gereja HKI Parsoburan</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp" data-wow-delay="0.1s">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="{{asset('assets/img/dalamgereja.jpg')}}" class="img-fluid" alt="">
                            <a href="{{asset('assets/img/dalamgereja.jpg')}}" class="link-preview portfolio-lightbox" data-gallery="portfolioGallery" title="Preview"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bx bx-link"></i></a>
                        </figure>

                        <div class="portfolio-info text-center">
                            <h4><a href="portfolio-details.html">Ibadah 5 Mei 2022</a></h4>
                            <p>Jemaat HKI Parsoburan melaksanakan ibadah hari minggu di Gereja HKI Parsoburan</p>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Galery Section -->
</section>
    
@endsection