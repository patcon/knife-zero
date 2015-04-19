require 'i18n'
require 'yaml'

I18n.enforce_available_locales = false
I18n.backend = I18n::Backend::Simple.new
I18n.backend.class.send(:include, I18n::Backend::Fallbacks)

langs = Dir.glob(File.expand_path('../locales/*.yml', __FILE__))
I18n.backend.load_translations(langs)


I18n.default_locale = 'en_us'
I18n.locale = ENV['LANG'] ? ENV['LANG'].split('.').first.downcase : 'en_us'.to_sym
