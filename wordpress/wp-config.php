<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '.$4_x DNy@6h,S^hYKP#i=r:[:^x(GuflPfric ^uC6ELX (|8iFh9s[uUnDmkQp' );
define( 'SECURE_AUTH_KEY',  'oJ(+}]9eMQnwt-85DDkjesaU/xD]iRkb4B/P}:Bo`RntgRPLBM/LgaSa#_bo-@/h' );
define( 'LOGGED_IN_KEY',    'NJf fxh1AV$F,n^6:JDE#C:J6;hiVhN@>~f<?Q=(T0 BO^BKp)8MJ3utuJNUp^:d' );
define( 'NONCE_KEY',        'CKrf.0HbcX5UJQ2`zS7%#7^LV _l5%jw2Hn$P*Lm+f:&U8OqkAzI4k`~z?6rn;@9' );
define( 'AUTH_SALT',        'VFFX2+THORwA)~e9~R7#- sVk:D+1asYuI7_fNl<.f?f*/Qbm>jW;Ryw*)l_ yoQ' );
define( 'SECURE_AUTH_SALT', ':Oz12rk<4)YdHOkk,]CkYHifMfU!Ct:4B!mN;{3W;p/(sgwdgzF ,HcO@E_W2)[x' );
define( 'LOGGED_IN_SALT',   'vX8uI:Ro8^{cU{Bi<0xJ@:p_<NKV[doOZT/;vhM.u1o}[{F1,f{*r{4eFK9-:T=)' );
define( 'NONCE_SALT',       '~</4[j)GGw7&k: iR3@E7^%BN#-TqY(:.#l|A#RFP:##ykMX2`CM_:m3/>2Ul~kQ' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
