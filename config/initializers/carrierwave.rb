CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["99WC00zT4M8fYqm57M26EQJpwlftFPdlLiBs7N6M"]
  config.qiniu_secret_key    = ENV["P0QRMjbbSpF4Eo_x4T8hOsnT6wne9jYmkcF7aF32"]
  config.qiniu_bucket        = ENV["jdstore-demo2"]
  config.qiniu_bucket_domain = ENV["oqvf5d9pq.bkt.clouddn.com"]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniug.com"  #选择不同的区域时，"up.qiniug.com" 不同

end
