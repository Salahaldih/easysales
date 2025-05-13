import type { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.easysales.app',
  appName: 'مبيعات سهل',
  webDir: 'dist',
  server: {
    androidScheme: 'https',
    cleartext: true
  },
  android: {
    buildOptions: {
      keystorePath: 'android/app/easysales.keystore',
      keystoreAlias: 'easysales',
      keystorePassword: 'easysales123',
      keystoreAliasPassword: 'easysales123'
    }
  },
  ios: {
    scheme: 'EasySales',
    deployMethod: 'development',
    contentInset: 'always'
  },
  electron: {
    bundleId: 'com.easysales.app',
    appName: 'مبيعات سهل',
    icon: 'public/icon.svg',
    splashScreenEnabled: true,
    splashScreenImageName: 'splash.png'
  }
};

export default config;
