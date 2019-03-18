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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'divi');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '].eKF*V3.fWdbN:f#l1I?7MBsLd[Ji_sR2CY:GD+ ,K 1qb.NHek)GyXykd4Au&=');
define('SECURE_AUTH_KEY',  'PXk3K0hUh-k{ib+k#k|S[l@[n9;%wpWWe>1QO?dfJI ]daVMB CK!TpDB4-iz)6o');
define('LOGGED_IN_KEY',    'XmM%BFow3]>DV<ZkZ63T>2szB!bym-sO-e*I5mDrMQ$6[.gTbf~BF*6ys:Tw>Tzx');
define('NONCE_KEY',        '|(=_/Th7 *}/Zc3!>!CKN,17P=[1)&l1ntfZZYBLkQ3ne&Ewv d].u[1BYi+^~.g');
define('AUTH_SALT',        'pn>;cw4GgY+P7P#n-qs:.I(U0&&Y}R*LQ!#v?D-[5T*($ngYdJVcEmTqZJMBF,yd');
define('SECURE_AUTH_SALT', 'R6H?cEW1+,Aw7^;hdie)dA21^DcJJ9{|EI`-55j(zJg}moaW<kQ8SHb/b[=tH}^3');
define('LOGGED_IN_SALT',   'ABR<XV`+,N>l#vjd?[s::rh2#+Q[~dLZ6t;f8@?:x niq9P(!.jzq#E<S}[!=e}]');
define('NONCE_SALT',       'jv&X&vF57[_@#+h-DZYLdYRdqF_`nWucYTjBZe4 3vEb!B#Wy8g}GG7^Pht}oJk>');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
