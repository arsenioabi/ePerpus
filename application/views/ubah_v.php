<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" />

    <title>Edit Daftar Menu</title>

    <style type="text/css">
      body {
          background: #edf1f5;
      }

      .nav-item a {
          color: grey;
      }

      .nav-item a.active {
          color: white;
          font-weight: bold;
      }

      .nav-item :hover {
          font-weight: bold;
          color: white;
          /* background-color: blue; */
      }

      #sidebar{
            min-height : 100vh;
        }
    </style>
  </head>
<body>

      <!-- Navbar  -->
    <nav class="navbar navbar-light bg-info fixed-top">
        <div>
            <button type="button" class="btn btn-outline-light" id="sidebarmenu" title="Daftar Menu">
                <i class="fas fa-bars"></i>
            </button>
            <a href="<?=base_url()?>Buku" class="navbar-brand text-white">E-<strong>Perpus</strong></a>
        </div>
        <a href="<?php echo base_url('Login/logout'); ?>">
        <button type="button" class="btn btn-outline-light " title="sign out">
            <i class="fas fa-sign-out-alt"></i>
        </button>
        </a>
    </nav>

		<div class="container-fluid mt-4">
			<div class="row">

        <!-- sidebar -->
            <div class="col-2 pt-5 bg-dark" id="sidebar">
                <div class="position-fixed">
                    <ul class="nav flex-column">
                        <?php if($this->session->userdata('user_role') == "1"): ?>
                            <li class="nav-item">
                                <a class="nav-link active" href="<?=base_url()?>Buku" title="Daftar Buku">
                                    <i class="fas fa-book"></i>
                                    <span class="ml-3"> Daftar Buku</span>
                                </a>
                                <hr class="bg-secondary">
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?=base_url()?>User" title="Kelola User">
                                    <i class="fas fa-clipboard-list"></i>
                                    <span class="ml-3">Kelola User</span>
                                </a>
                                <hr class="bg-secondary">
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?=base_url()?>Pinjam" title="Pinjaman">
                                    <i class="fas fa-cart-arrow-down"></i>
                                    <span class="ml-3">Peminjaman Buku</span>
                                </a>
                                <hr class="bg-secondary">
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="<?=base_url()?>Riwayat" title="pendapatan">
                                    <i class="fas fa-history"></i>
                                    <span class="ml-3">Riwayat Peminjaman</span>
                                </a>
                                <hr class="bg-secondary">
                            </li>

                        <?php elseif($this->session->userdata('user_role') == "2"): ?>
                             <li class="nav-item">
                                <a class="nav-link active" href="<?=base_url()?>Buku" title="Daftar Buku">
                                    <i class="fas fa-book"></i>
                                    <span class="ml-3"> Daftar Buku</span>
                                </a>
                                <hr class="bg-secondary">
                            </li>
                            
                        <?php else:  ?>

                            <li class="nav-item">
                                <a class="nav-link active" href="<?=base_url()?>Buku" title="Daftar Buku">
                                    <i class="fas fa-book"></i>
                                    <span class="ml-3"> Daftar Buku</span>
                                </a>
                                <hr class="bg-secondary">
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" href="<?=base_url()?>Pinjam" title="pendapatan">
                                    <i class="fas fa-cart-arrow-down"></i>
                                    <span class="ml-3">Peminjaman Buku</span>
                                </a>
                                <hr class="bg-secondary">
                            </li>



                    <?php endif?>
                    </ul>
                </div>
            </div>

				<!-- main -->
        <div class="col-10" id="utama">

        <div class="bg-white m-2 mt-5">
          <nav aria-label="breadcrumb ">
            <ol class="breadcrumb bg-white ">
              <li class="breadcrumb-item"><a href="<?=base_url()?>Buku">Daftar Buku</a></li>
              <li class="breadcrumb-item active" aria-current="page">Edit Daftar Buku</li>
            </ol>
          </nav>
        </div>

					<div class="card m-2">
					  <div class="card-header">
					    Ubah Menu
					  </div>
						 <div class="card-body">
							<form action="" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                      <input class="form-control" name="id_buku" id="exampleFormControlInput1" placeholder="" value="<?= $buku['id_buku'] ?>" hidden >
                      
                    </div>


                    <label for="inputGroupFile01" >Masukan Gambar</label>
                    
                    <div class="input-group mb-3 md-6">
                       
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" name="gambar" value="<?= $buku['gambar'] ?>">
                            <label class="custom-file-label" for="inputGroupFile01"><?= $buku['gambar'] ?></label>
                        </div>      
                        
                    </div>
                   
                            
                         
                   

                    <label for="inputGroupFile01">Judul</label>
                    <div class="input-group mb-3">
                        <input type="text" name="nama" class="form-control" aria-label="judul" placeholder="" value="<?= $buku['judul'] ?>">
                    </div>
                   
                    <label for="inputGroupFile01">Tahun</label>
                    <div class="input-group mb-3">
                        <input type="number" name="tahun" class="form-control" aria-label="tahun" placeholder="" value="<?= $buku['tahun'] ?>">
                    </div>

                    <label for="inputGroupFile01">Penulis</label>
                    <div class="input-group mb-3">
                        <input type="text" name="penulis" class="form-control" aria-label="penulis" placeholder="" value="<?= $buku['penulis'] ?>">
                    </div>

                    <label for="inputGroupFile01">Penerbit</label>
                    <div class="input-group mb-3">
                        <input type="text" name="penerbit" class="form-control" aria-label="penerbit" placeholder="" value="<?= $buku['penerbit'] ?>">
                    </div>

                    <label for="inputGroupFile01">Jumlah Buku</label>
                    <div class="input-group mb-3">
                        <input type="number" name="jumlah_buku" class="form-control" aria-label="penerbit" placeholder="" value="<?= $buku['jumlah_buku'] ?>">
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-info">Update</button>
                    </div>
                  </form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <script>

        $(function () {

        // mobile aplication
        if ($(window).width() < 768) {
            $("#sidebar").hide();
            $("#utama").toggleClass('col-10 col');
        } else {
            $("#sidebar").show();
        }

        // want user show/head navbar
        $("#sidebarmenu").click(function () {
            if ($("#sidebar").is(":hidden")) {
                if ($(window).width() < 768) {
                    $("#sidebar").show();
                    $("#utama").toggleClass('col col-10');
                    $(".nav-item span").hide();
                    // $(".nav-item hr").hide();
                } else {
                    $("#sidebar").show();
                    $("#utama").toggleClass('col col-10');
                }

            } else {
                $("#sidebar").hide();
                $("#utama").toggleClass('col-10 col');
            }
        });
        });

        $('.custom-file-input').on('change', function(){
            let fileName =$(this).val().split('\\').pop();
            $(this).next('.custom-file-label').addClass("selected").html(fileName);
        });
    </script>
</html>