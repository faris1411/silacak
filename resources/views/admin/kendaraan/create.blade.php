@extends('layouts.app')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Tambah Kendaraan</h1>
        </div>

        <div class="section-body">

            <div class="card">
                <div class="card-header">
                    <h4><i class="fas fa-book"></i> Tambah Kendaraan</h4>
                </div>

                <div class="card-body">
                    <form action="{{ route('admin.kendaraan.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Keberadaan</label>
                                    <select name="user_id" id="user_id" class="form-control">
                                        <option value="">Pilih Keberadaan</option>
                                        @foreach ($user as $item)
                                            <option value="{{ $item->id }}">{{ $item->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Bidang</label>
                                    <input type="text" class="form-control" disabled id="bidang">
                                </div>
                            </div>
                        </div>

                        <div class="row" @if(!$errors->any()) style="display: none" @endif>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Status</label>
                                    <input type="text" name="status" class="form-control" readonly value="ada" id="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Foto</label>
                                    <input type="file" name="foto" value="{{ old('foto') }}" class="form-control @error('foto') is-invalid @enderror" required>
                                    @error('foto')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row col-md-3" @if(!$errors->any()) style="display: none" @endif>
                            <h6>Identifikasi Kendaraan</h6>
                        </div>
                        <div class="row" @if(!$errors->any()) style="display: none" @endif>
                             <div class="col-md-3">
                                <div class="form-group">
                                    <label>Objek Kendaraan</label>
                                    <select name="type_roda" id="" class="form-control" required>
                                        <option value="Roda 2">Roda 2</option>
                                        <option value="Roda 3">Roda 3</option>
                                        <option value="Roda 4">Roda 4</option>
                                        <option value="Air">Air</option>
                                        <option value="Udara">Udara</option>
                                        <option value="Alat Berat">Alat Berat</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Jenis Kendaraan</label>
                                    <input type="text" name="jenis_kendaraan" value="{{ old('jenis_kendaraan') }}" placeholder="Masukkan Jenis" class="form-control @error('jenis_kendaraan') is-invalid @enderror"  required>
                                    @error('jenis_kendaraan')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Merk Kendaraan</label>
                                    <input type="text" name="merk_kendaraan" value="{{ old('merk_kendaraan') }}" placeholder="Masukkan Merk" class="form-control @error('merk_kendaraan') is-invalid @enderror" required>
                                    @error('merk_kendaraan')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Tipe Kendaraan</label>
                                    <input type="text" name="tipe_kendaraan" value="{{ old('tipe_kendaraan') }}" placeholder="Masukkan Tipe"
                                        class="form-control @error('tipe_kendaraan') is-invalid @enderror" required>
                                        @error('tipe_kendaraan')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row col-md-3" @if(!$errors->any()) style="display: none" @endif>
                            <h6>Legalitas Kendaraan</h6>
                        </div>
                        <div class="row" @if(!$errors->any()) style="display: none" @endif>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No Polisi</label>
                                    <input type="text" name="no_polisi" value="{{ old('no_polisi') }}" class="form-control @error('no_polisi') is-invalid @enderror" placeholder="Masukkan No Polisi" required>
                                    @error('no_polisi')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No Rangka</label>
                                    <input type="text" name="no_rangka" value="{{ old('no_rangka') }}" placeholder="Masukkan No Rangka" class="form-control @error('no_rangka') is-invalid @enderror" required>
                                    @error('no_rangka')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No Mesin</label>
                                    <input type="number" name="no_mesin" value="{{ old('no_mesin') }}" placeholder="Masukkan No Mesin " class="form-control @error('no_mesin') is-invalid @enderror" required>
                                    @error('no_mesin')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row" @if(!$errors->any()) style="display: none" @endif>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No BPKB</label>
                                    <input type="text" name="no_bpkb" value="{{ old('no_bpkb') }}" placeholder="Masukkan No BPKB" class="form-control @error('no_bpkb') is-invalid @enderror" required>
                                    @error('no_bpkb')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Tanggal BPKB</label>
                                    <input type="date" name="tanggal_bpkb" value="{{ old('tanggal_bpkb') }}" 
                                        class="form-control" placeholder="Masukkan bertingkat" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Keterangan BPKB</label>
                                    <textarea name="keterangan_bpkb" required class="form-control" placeholder="Masukan Keterangan" id="" cols="30" rows="10">{{ old('keterangan_bpkb') }}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row" @if(!$errors->any()) style="display: none" @endif>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No STNK</label>
                                    <input type="text" name="no_stnk" value="{{ old('no_stnk') }}" placeholder="Masukkan No STNK" class="form-control @error('no_stnk') is-invalid @enderror" required>
                                    @error('no_stnk')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Masa Berlaku STNK</label>
                                    <input type="date" name="masa_berlaku_stnk" value="{{ old('masa_berlaku_stnk') }}" class="form-control" placeholder="Masukkan bertingkat" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Keterangan STNK</label>
                                    <textarea name="keterangan_stnk" required class="form-control" placeholder="Masukan Keterangan STNK" id="" cols="30" rows="10">{{ old('keterangan_stnk') }}</textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row col-md-3" @if(!$errors->any()) style="display: none" @endif>
                            <h6>Fisik Kendaraan</h6>
                        </div>
                        <div class="row" @if(!$errors->any()) style="display: none" @endif>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Warna</label>
                                    <input type="text" name="warna" value="{{ old('warna') }}" placeholder="Masukkan Warna" class="form-control @error('warna') is-invalid @enderror" required>
                                    @error('warna')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Silinder Mesin/CC</label>
                                    <input type="text" name="silinder_mesin_cc" value="{{ old('silinder_mesin_cc') }}" placeholder="Masukkan Silinder Mesin/CC" class="form-control @error('silinder_mesin_cc') is-invalid @enderror" required>
                                    @error('silinder_mesin_cc')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Tahun Produksi</label>
                                    <Select name="tahun_produksi" class="form-control" required>
                                        <option value="1990">1990</option>
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                        <option value="1999">1999</option>
                                        <option value="2000">2000</option>
                                        <option value="2001">2001</option>
                                        <option value="2002">2002</option>
                                        <option value="2003">2003</option>
                                        <option value="2004">2004</option>                                        
                                        <option value="2004">2004</option>
                                        <option value="2005">2005</option>
                                        <option value="2006">2006</option>
                                        <option value="2007">2007</option>
                                        <option value="2008">2008</option>
                                        <option value="2009">2009</option>
                                        <option value="2010">2010</option>
                                        <option value="2011">2011</option>
                                        <option value="2012">2012</option>
                                        <option value="2013">2013</option>
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                    </Select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Bahan Bakar</label>
                                    <select name="bahan_bakar" id="" class="form-control" required>
                                        <option value="Bensin">Bensin</option>
                                        <option value="Solar">Solar</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Kapasitas Angkut</label>
                                    <input type="text" name="kapasitas_angkut" value="{{ old('kapasitas_angkut') }}" placeholder="Masukkan Kapasitas" class="form-control @error('kapasitas_angkut') is-invalid @enderror" required>
                                    @error('kapasitas_angkut')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Kondisi</label>
                                    <select name="kondisi" id="" class="form-control" required>
                                        <option value="Baik">Baik</option>
                                        <option value="Rusak">Rusak</option>
                                        <option value="Rusak Berat">Rusak Berat</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row col-md-3" @if(!$errors->any()) style="display: none" @endif>
                            <h6>Status Kendaraan</h6>
                        </div>
                        <div class="row" @if(!$errors->any()) style="display: none" @endif>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Perangkat Daerah</label>
                                    <input type="text" name="perangkat_daerah" value="{{ old('perangkat_daerah') }}" placeholder="Masukkan Perangkat Daerah"
                                        class="form-control @error('perangkat_daerah') is-invalid @enderror" required>
                                        @error('perangkat_daerah')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Kode Barang</label>
                                    <input type="text" name="kode_barang" value="{{ old('kode_barang') }}" placeholder="Masukkan Kode" class="form-control @error('kode_barang') is-invalid @enderror"  required>
                                    @error('kode_barang')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Register</label>
                                    <input type="number" name="register" value="{{ old('register') }}" placeholder="Masukkan Register"
                                        class="form-control @error('register') is-invalid @enderror" required>
                                        @error('register')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Tahun Perolehan</label>
                                    <Select name="tahun_perolehan" class="form-control" required>
                                        <option value="1990">1990</option>
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                        <option value="1999">1999</option>
                                        <option value="2000">2000</option>
                                        <option value="2001">2001</option>
                                        <option value="2002">2002</option>
                                        <option value="2003">2003</option>
                                        <option value="2004">2004</option>                                        
                                        <option value="2004">2004</option>
                                        <option value="2005">2005</option>
                                        <option value="2006">2006</option>
                                        <option value="2007">2007</option>
                                        <option value="2008">2008</option>
                                        <option value="2009">2009</option>
                                        <option value="2010">2010</option>
                                        <option value="2011">2011</option>
                                        <option value="2012">2012</option>
                                        <option value="2013">2013</option>
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                    </Select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Harga Perolehan</label>
                                    <input type="number" name="harga_perolehan" value="{{ old('harga_perolehan') }}" placeholder="Masukkan Harga" class="form-control @error('harga_perolehan') is-invalid @enderror" required>
                                    @error('harga_perolehan')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                         <div class="row col-md-3" @if(!$errors->any()) style="display: none" @endif>
                            <h6>Penggunaan Kendaraan</h6>
                        </div>
                        <div class="row" @if(!$errors->any()) style="display: none" @endif>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Peruntukan</label>
                                    <select name="peruntukan" id="" class="form-control" required>
                                        <option value="Perorangan Dinas">Perorangan Dinas</option>
                                        <option value="Jabatan">Jabatan</option>
                                        <option value="Operasional Dinas">Operasional Dinas</option>
                                        <option value="Pinjam Pakai">Pinjam Pakai</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Nama Pengguna</label>
                                    <input type="text" name="nama_pengguna" value="{{ old('nama_pengguna') }}" placeholder="Masukkan Nama" class="form-control @error('nama_pengguna') is-invalid @enderror"  required>
                                    @error('nama_pengguna')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Jabatan Pengguna</label>
                                    <input type="text" name="jabatan_pengguna" value="{{ old('jabatan_pengguna') }}" placeholder="Masukkan Jabatan" class="form-control @error('jabatan_pengguna') is-invalid @enderror"  required>
                                    @error('jabatan_pengguna')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Instansi Pengguna</label>
                                    <input type="text" name="instansi_pengguna" value="{{ old('instansi_pengguna') }}" placeholder="Masukkan Instansi" class="form-control @error('instansi_pengguna') is-invalid @enderror"  required>
                                    @error('instansi_pengguna')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Alamat Pengguna</label>
                                    <textarea name="alamat_pengguna" required class="form-control" placeholder="Masukan Alamat" id="" cols="30" rows="10">{{ old('alamat_pengguna') }}</textarea>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No Telepon</label>
                                    <input type="text" name="no_telp" value="{{ old('no_telp') }}" placeholder="Masukkan No Telepon" class="form-control @error('no_telp') is-invalid @enderror"  required>
                                    @error('no_telp')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No BAST</label>
                                    <input type="text" name="no_bast" value="{{ old('no_bast') }}" placeholder="Masukkan No BAST" class="form-control @error('no_bast') is-invalid @enderror"  required>
                                    @error('no_bast')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Masa Berlaku</label>
                                    <input type="date" name="masa_berlaku_pinjam" value="{{ old('masa_berlaku_pinjam') }}" class="form-control" placeholder="Masukkan bertingkat" required>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Keterangan Pengunaan</label>
                                    <textarea name="keterangan_penggunaan" required class="form-control" placeholder="Masukan Keterangan" id="" cols="30" rows="10">{{ old('keterangan_penggunaan') }}</textarea>
                                </div>
                            </div>                             
                        </div>
                         

                        <div class="text-center" id="button" @if(!$errors->any())
                                style="display: none"
                                @endif>
                            <button class="btn btn-primary mr-1 btn-submit" type="submit" ><i class="fa fa-paper-plane"></i>
                            SIMPAN</button>
                        <button class="btn btn-warning btn-reset" type="reset"><i class="fa fa-redo"></i> RESET</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection
@push('addon-script')
          <script>
                $(document).ready(function () {
                    $('select').select2({
                        theme: 'bootstrap4',
                        width: 'style',
                    });
                });
          </script>
        <script>
              $(document).ready(function(){
                $("#user_id").on("change",function(){
                    const user = $(this).val();
                    if (user) {
                        jQuery.ajax({
                            url: '/api/user/'+user,
                            type: "GET",
                            dataType: "json",
                            success: function (response) {
                                // console.log(response)
                                if(response.upb_id){
                                    $("#bidang").val(response.upb.name)

                                }else if(response.subunit_id){
                                    $("#bidang").val(response.subunit.name)


                                }else if(response.unit_id){
                                    $("#bidang").val(response.unit.name)

                                }else{
                                    $("#bidang").val(response.bidang.name)

                                }

                                $(".row").show();
                                $("#button").show();
                           
                            },
                        });
                    }else{
                        $("#bidang").val("Pilih Keberadaan")

                        // $(".row").hide();
                        $("#button").hide();
                    }
                })
              })

             
          </script>

@endpush