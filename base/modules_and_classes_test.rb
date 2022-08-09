require_relative 'modules_and_classes'

about = About.new
about.title = 'About us'
about.body = 'You can find us at the addresses'
about.phones = ['+38053575465']
about.address = 'Some addres'
about.meta_title = about.title
about.meta_description = "Address: #{about.address}"
about.meta_keywords = ['About us', 'Address', 'Phones']
p about.title
p about.body
p about.phones.join ', '
p about.address
p about.meta_title
p about.meta_description
p about.meta_keywords.join ', '
p Seo.say 'Billy'
