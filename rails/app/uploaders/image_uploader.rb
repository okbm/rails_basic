class ImageUploader < CarrierWave::Uploader::Base
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/

  def cache_dir
    "#{Rails.root}/tmp/uploads/cache/#{model.class.to_s.underscore}/#{model.id}"
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(pdf doc docx docm xls xlsx xlsm zip jpg ppt pptx)
  end

  def fog_attributes
    { 'x-amz-server-side-encryption': 'AES256' }
  end

  def asset_host
  end
end
