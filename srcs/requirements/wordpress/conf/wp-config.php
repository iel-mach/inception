<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'issam' );

/** Database password */
define( 'DB_PASSWORD', 'Zigolla123' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         '-P@|v|>x]~6ly+&R9{24a(`SNi8%I3-:&F]Z7+xu;!aU[skWz;n/#]y[p3qSoM8~');
define('SECURE_AUTH_KEY',  ';a.=&y!!62r[uDhIo&WZ2SM3O<M#+~?E%VP-HOmt3M3Yf5Ij5gp!];prf7eHb:mQ');
define('LOGGED_IN_KEY',    '6GP) 2)=%|F|I3G{y$VK?8p#Tq3Losjabev|6m|).av;g2;^GBMw0_f_.C3n-v~%');
define('NONCE_KEY',        'r{mk?Jr2>S$ B|l<wk~YS!,.Y80z6&r0P$gc-]X2gzykRx Z2.1.+q|5T| QN^|_');
define('AUTH_SALT',        'Y~-T//A`,NOEyYrn^w}.w)mzFtTAH~HoxGo>aYcH>qs]h-B8UCjeSOn%YGQ-|*x5');
define('SECURE_AUTH_SALT', 'rxx]^3oMys9I?,L+SSI[$ey%PAHQ?cx]jjj,U9XY-@3f$caKwYg5RxT+rjri@H4n');
define('LOGGED_IN_SALT',   '+sK%+zJd(NoPCN,Oc&3r%P7-tx>f:35ItA{#NqX{.U)ey,l03aTP[/T_?Nea(P+)');
define('NONCE_SALT',       '~p{C?%-U2>;`8u?.I+m:UB5/_reYbRP4lLmN8++fF?9=h|F2iBJ=;[FZXncw,-B6');

/**#@-*/

/**
 * WordPress database table prefix.
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

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';