@extends('layouts.frontend.app')
@section('content')
<section>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <!-- <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li> -->
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="/slide.png" alt="BOLMONG HEBAT">
                <div class="carousel-caption d-none d-md-block">
                    <h5>BOLMONG HEBAT</h5>
                    <p>Selamat datang di website "Survei Kepuasan Masyarakat" Kabupaten Bolaang Mongondow</p>
                </div>
            </div>
            <!-- <div class="carousel-item">
                <img class="d-block w-100" src=".../800x400?auto=yes&bg=666&fg=444&text=Second slide" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src=".../800x400?auto=yes&bg=555&fg=333&text=Third slide" alt="Third slide">
            </div> -->
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>
<section>
    <div class="container">
        <div class="row">
            <div class="col text-center m-4">
                <h1 class="h2 text-dark text-bold">DASAR HUKUM</h1>
                <p class="text-center text-dark text-break m-4">Adapun yang menjadi dasar hukum dalam melakukan Survei Kepuasan Masyarakat mengunakan Peraturan Menteri PAN RB No 14 Tahun 2017.</p>

                <div class="row mt-4 mb-4">
                    <div class="col">
                        1. Survei Kepuasan Masyarakat adalah kegiatan pengukuran secara
                        komprehensif tentang tingkat kepuasan masyarakat terhadap kualitas
                        layanan yang diberikan oleh penyelenggara pelayanan publik
                    </div>
                    <div class="col">
                        2. Indeks Kepuasan Masyarakat adalah hasil pengukuran dari kegiatan
                        Survei Kepuasan Masyarakat berupa angka. Angka ditetapkan dengan
                        skala 1 (satu) sampai dengan 4 (empat)
                    </div>
                </div>
                <div class="row mt-4 mb-4">
                    <div class="col">
                        3. Unit pelayanan publik adalah unit kerja/kantor pelayanan pada
                        instansi pemerintah, yang secara langsung maupun tidak langsung
                        memberikan pelayanan kepada penerima pelayanan.
                    </div>
                    <div class="col">
                        4. Unsur Survei Kepuasaan Masyarakat adalah unsur-unsur yang
                        menjadi indikator pengukuran kepuasan masyarakat terhadap
                        penyelenggaraan pelayanan publik.
                    </div>
                </div>
                <div class="row mt-4 mb-4">
                    <div class="col">
                        5. Pemberi pelayanan publik adalah pegawai instansi pemerintah yang
                        melaksanakan tugas dan fungsi pelayanan publik sesuai peraturan
                        peraturan perundang-undangan.
                    </div>
                    <div class="col">
                        6. Penerima pelayanan publik adalah orang, masyarakat, lembaga instansi
                        pemerintah dan dunia usaha, yang menerima pelayanan dari aparatur
                        penyelenggara pelayanan publik.
                    </div>
                </div>
                <a href="/fRibvK-permen-14-2017.pdf" class="btn mt-4 mb-4" style="background-color: #3ABF00; color:#ffffff;">Download</a>
            </div>
        </div>
    </div>
</section>
<section>
    <div class="container">
        <div class="row mt-4 mb-4">
            <div class="col text-center">
                <h1 class="h2 text-dark text-bold">SURVEI IKM</h1>
                <p class="text-center text-dark text-break">Guna meningkatkan mutu layanan dan kualitas kerja yang lebih baik, kami sangat berterima kasih apabila Anda bersedia berpartisipasi dan berkenan meluangkan waktu untuk mengisi Survey Indeks Kepuasan Masyarakat (IKM) terkait kinerja Organisasi Perangkat Daerah/Instansi di Lingkup Pemerintah Kabupaten Bolaang Mongondow dalam memberikan pelayanan kepada masyarakat.</p>
                <a href="/survei" class="btn mt-4 mb-4" style="background-color: #3ABF00; color:#ffffff;">MENUJU SURVEI</a>
            </div>
        </div>
    </div>
</section>
@endsection