@extends('layouts.app')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Tambah  Tanah</h1>
        </div>

        <div class="section-body">

            <div class="card">
                <div class="card-header">
                    <h4><i class="fas fa-book"></i> Tambah Tanah</h4>
                </div>

                <div class="card-body">
                    <form action="{{ route('admin.tanah.store') }}" method="POST" enctype="multipart/form-data">
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

                        <div class="row" style="display: none">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Status</label>
                                    <input type="text" name="status" value="ada" readonly placeholder="Masukkan Status" class="form-control @error('status') is-invalid @enderror">
                                    @error('status')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
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
                        <div class="row col-md-3" style="display: none">
                            <h6>Lokasi Tanah</h6>
                        </div>
                        <div class="row" style="display: none">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Alamat</label>
                                    <textarea name="alamat" class="form-control @error('alamat') is-invalid @enderror" placeholder="Masukan alamat" id="" cols="30" rows="5">{{ old('alamat') }}</textarea>
                                    @error('alamat')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Kelurahan/Desa</label>
                                    <input type="text" name="kelurahan_desa" value="{{ old('kelurahan_desa') }}" placeholder="Masukkan Kelurahan/Desa" class="form-control @error('kelurahan_desa') is-invalid @enderror">
                                    @error('kelurahan_desa')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Kecamatan</label>
                                    <input type="text" name="kecamatan" value="{{ old('kecamatan') }}" placeholder="Masukkan Kecamatan" class="form-control @error('kecamatan') is-invalid @enderror">
                                    @error('kecamatan')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                            
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Titik Koordinat</label>
                                    <input type="text" name="koordinat" value="{{ old('koordinat') }}" placeholder="Masukkan Titik Koordinat" class="form-control @error('koordinat') is-invalid @enderror">
                                    @error('koordinat')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="row" style="display: none">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="mb-1">Batas Utara</label>
                                    <input type="text" name="batas_utara" class="form-control mb-2 @error('batas_utara') is-invalid @enderror" placeholder="Masukkan batas utara" value="{{ old('batas_utara') }}">
                                    @error('koordinat')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="mb-1 @error('batas_timur') is-invalid @enderror">Batas Timur</label>
                                    <input type="text" name="batas_timur" class="form-control mb-2" placeholder="Masukkan batas timur" value="{{ old('batas_timur') }}">
                                    @error('batas_timur')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="mb-1">Batas Selatan</label>
                                    <input type="text" name="batas_selatan" class="form-control mb-2 @error('batas_selatan') is-invalid @enderror" placeholder="Masukkan batas selatan" value="{{ old('batas_selatan') }}">
                                    @error('batas_selatan')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="mb-1">Batas Barat</label>
                                    <input type="text" name="batas_barat" class="form-control @error('batas_barat') is-invalid @enderror" placeholder="Masukkan batas barat" value="{{ old('batas_barat') }}">
                                    @error('batas_barat')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="row" style="display: none">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Luas</label>
                                    <input type="number" name="luas" value="{{ old('luas') }}" placeholder="Masukkan Luas" class="form-control @error('luas') is-invalid @enderror">
                                    @error('luas')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="row col-md-3" style="display: none">
                            <h6>Legalitas Tanah</h6>
                        </div>
                        <div class="row" style="display: none">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="surat-tanah">Surat Tanah</label>
                                    <Select name="surat_tanah" class="form-control @error('surat_tanah') is-invalid @enderror" id="surat-tanah">
                                        <option value="Ada">Ada</option>
                                        <option value="Tidak ada">Tidak ada</option>
                                    </Select>
                                    @error('surat_tanah')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="bentuk-surat">Bentuk Surat</label>
                                    <Select name="bentuk_surat" class="form-control @error('bentuk_surat') is-invalid @enderror" id="bentuk-surat">
                                        <option value="" selected disabled>Pilih bentuk surat</option>
                                        <option value="SPH">SPH</option>
                                        <option value="Sertifikat">Sertifikat</option>
                                    </Select>
                                    @error('bentuk_surat')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="no-surat">No Surat</label>
                                    <input type="text" name="no_surat_dokumen" value="{{ old('no_surat_dokumen') }}" placeholder="Masukkan No" class="form-control @error('no_surat_dokumen') is-invalid @enderror" id="no-surat">
                                        @error('no_surat_dokumen')
                                        <div class="invalid-feedback" style="display: block">
                                            {{ $message }}
                                        </div>
                                        @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="tanggal-surat">Tanggal Surat</label>
                                    <input type="date" name="tgl_surat_dokumen" value="{{ old('tgl_surat_dokumen') }}" 
                                        class="form-control" id="tanggal-surat">
                                </div>
                            </div>
                        </div>
                        <div class="row col-md-3" style="display: none">
                            <h6>Asal usul Tanah</h6>
                        </div>
                        <div class="row" style="display: none">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Bentuk asal usul Tanah</label>
                                    <Select name="asal_usul" class="form-control">
                                        <option value="Pembebasan">Pembebasan</option>
                                        <option value="Hibah">Hibah</option>
                                        <option value="Kas Desa">Kas Desa</option>
                                    </Select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No Surat</label>
                                    <input type="text" name="no_surat_asal_usul" value="{{ old('no_surat_asal_usul') }}" placeholder="Masukkan No" class="form-control @error('no_surat_asal_usul') is-invalid @enderror" required>
                                    @error('no_surat_asal_usul')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Tanggal Surat</label>
                                    <input type="date" name="tgl_surat_asal_usul" value="{{ old('tgl_surat_asal_usul') }}" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Konflik Tanah</label>
                                    <Select name="konflik" class="form-control">
                                        <option value="Sengketa">Sengketa</option>
                                        <option value="Clear & Clean">Clear & Clean</option>
                                    </Select>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="display: none">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Keterangan Legalitas Tanah</label>
                                    <textarea name="keterangan_legalitas" class="form-control" placeholder="Masukan Keterangan" id="" cols="30" rows="5">{{ old('keterangan_legalitas') }}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row col-md-3" style="display: none">
                            <h6>Status Tanah</h6>
                        </div>
                        <div class="row" style="display: none">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Perangkat Daerah</label>
                                    <input type="text" name="perangkat_daerah" value="{{ old('perangkat_daerah') }}" placeholder="Masukkan Perangkat Daerah" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Kode Barang</label>
                                    <input type="text" name="kode_barang" value="{{ old('kode_barang') }}" placeholder="Masukkan Kode" class="form-control @error('kode_barang') is-invalid @enderror" required>
                                    @error('kode_barang')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>No Register</label>
                                    <input type="number" name="register" value="{{ old('register') }}" placeholder="Masukkan Register" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Tahun</label>
                                    <Select name="tahun_perolehan" class="form-control">
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
                                    <label>Harga</label>
                                    <input type="number" name="harga" value="{{ old('harga') }}" placeholder="Masukkan Harga" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Peruntukan Awal</label>
                                    <input type="text" name="peruntukan_awal" class="form-control" placeholder="Masukkan Peruntukan Awal" value="{{ old('peruntukan_awal') }}">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Keterangan Status Tanah</label>
                                    <textarea name="keterangan_status" class="form-control" placeholder="Masukan Keterangan" id="" cols="30" rows="5">{{ old('keterangan_status') }}</textarea>
                                </div>
                            </div>
                        </div>                         
                        
                       
                        
                        {{-- Submit Button --}}
                        <div class="text-center" id="button" style="display: none">
                            <button class="btn btn-primary mr-1 btn-submit" type="submit"><i class="fa fa-paper-plane"></i>
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
        <script>
            $("#surat-tanah").change(function () { 
                var $suratTanah = $(this);
                if ($suratTanah.val() == "Tidak ada") {
                    $("#bentuk-surat").prop("disabled", true);
                    $("#no-surat").prop("disabled", true);
                    $("#tanggal-surat").prop("disabled", true);
                } else {
                    $("#bentuk-surat").prop("disabled", false)
                    $("#no-surat").prop("disabled", false)
                    $("#tanggal-surat").prop("disabled", false)
                }
            });
        </script>
@endpush