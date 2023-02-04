project('com.github.aharotias2.libwp4vala', 'vala', 'c', version: '1.0.0')

inc = include_directories('.')

libwp4vala = static_library(
  'com.github.aharotias2.libwp4vala',
  'src/WpError.vala',
  'src/WpCommentmetaEntity.vala',
  'src/WpCommentsEntity.vala',
  'src/WpLinksEntity.vala',
  'src/WpOptionsEntity.vala',
  'src/WpPostmetaEntity.vala',
  'src/WpPostsEntity.vala',
  'src/WpTermRelationshipsEntity.vala',
  'src/WpTermTaxonomyEntity.vala',
  'src/WpTermsEntity.vala',
  'src/WpUsermetaEntity.vala',
  'src/WpUsersEntity.vala',
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

