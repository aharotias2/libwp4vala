project('com.github.aharotias2.libwp4vala', 'vala', 'c', version: '1.0.0')

inc = include_directories('.')

libwp4vala = static_library(
  'com.github.aharotias2.libwp4vala',
  'src/WpError.vala',
  'src/WpCommentmetaDto.vala',
  'src/WpCommentsDto.vala',
  'src/WpLinksDto.vala',
  'src/WpOptionsDto.vala',
  'src/WpPostmetaDto.vala',
  'src/WpPostsDto.vala',
  'src/WpTermRelationshipsDto.vala',
  'src/WpTermTaxonomyDto.vala',
  'src/WpTermsDto.vala',
  'src/WpUsermetaDto.vala',
  'src/WpUsersDto.vala',
  'src/WpCommentmetaDao.vala',
  'src/WpCommentsDao.vala',
  'src/WpLinksDao.vala',
  'src/WpOptionsDao.vala',
  'src/WpPostmetaDao.vala',
  'src/WpPostsDao.vala',
  'src/WpTermRelationshipsDao.vala',
  'src/WpTermTaxonomyDao.vala',
  'src/WpTermsDao.vala',
  'src/WpUsermetaDao.vala',
  'src/WpUsersDao.vala',
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

