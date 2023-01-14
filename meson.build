project('com.github.aharotias2.libwp4vala', 'vala', 'c', version: '1.0.0')

inc = include_directories('.')

libwp4vala = library(
  'com.github.aharotias2.libwp4vala',
  'src/WpCommentmetaDto.vala',
  'src/WpCommentsDto.vala',
  'src/WpError.vala',
  'src/WpLinksDto.vala',
  'src/WpOptionsDto.vala',
  'src/WpPostmetaDto.vala',
  'src/WpPostsDto.vala',
  'src/WpTermRelationshipsDto.vala',
  'src/WpTermTaxonomyDto.vala',
  'src/WpTermsDto.vala',
  'src/WpUsermetaDto.vala',
  'src/WpUsersDto.vala',
  dependencies: [
    dependency('glib-2.0'),
    dependency('libgda-5.0'),
    dependency('gee-0.8'),
    dependency('libxml-2.0'),
    dependency(
      'libpetitconn',
      fallback: [
        'libpetitconn',
        'libpetitconn_dep'
      ]
    )
  ]
)

libwp4vala_dep = declare_dependency(include_directories: inc, link_with: libwp4vala)

