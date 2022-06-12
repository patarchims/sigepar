@extends('Layout.Landing_layout')
@section('title','SIGEPAR|Announcement')
@section('content')


<section class="d-flex flex-column justify-content-center align-items-center testimonials section-bg" style="margin-top:15px;">
   <!-- ======= Galery Section ======= -->
    <section id="portfolio" class="portfolio services section-bg">
        <div class="container">

    
    <!-- ======= Galery Section ======= -->
    <section id="portfolio" class="portfolio services section-bg">
        <div class="container">

            <div class="section-title">
                <h2>Galery</h2>
            </div>



            <div class="row portfolio-container">
                  @foreach ($gallery as $value)
                <div class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="{{asset('fileweb/' . $value->image_gallery)}}" class="img-fluid" alt="">
                            <a href="{{asset('fileweb/' . $value->image_gallery)}}" data-gallery="portfolioGallery" class="link-preview portfolio-lightbox" title="Preview"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bx bx-link"></i></a>
                        </figure>

                        <!-- <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Perayaan Ulang Tahun HKI</a></h4>
                            <p>Dalam rangka merayakan Ulang tahun HKI yang ke 19 maka ....</p>
                        </div> -->
                    </div>
                </div>
                @endforeach

             

            </div>

        </div>
    </section><!-- End Galery Section -->
</section>
    
@endsection