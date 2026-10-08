package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.LocaleList;
import android.os.StatFs;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import io.sentry.DateUtils;
import io.sentry.IConnectionStatusProvider;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.ContextUtils;
import io.sentry.android.core.internal.util.CpuInfoUtils;
import io.sentry.android.core.internal.util.RootChecker;
import io.sentry.protocol.Device;
import io.sentry.protocol.OperatingSystem;
import io.sentry.util.AutoClosableReentrantLock;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeviceInfoUtil {
    public static volatile DeviceInfoUtil i;
    public static final AutoClosableReentrantLock j = new ReentrantLock();
    public final Context a;
    public final SentryAndroidOptions b;
    public final BuildInfoProvider c;
    public final Boolean d;
    public final ContextUtils.SideLoadedInfo e;
    public final ContextUtils.SplitApksInfo f;
    public final OperatingSystem g;
    public final Long h;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.DeviceInfoUtil$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[IConnectionStatusProvider.ConnectionStatus.values().length];
            a = iArr;
            try {
                iArr[IConnectionStatusProvider.ConnectionStatus.DISCONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[IConnectionStatusProvider.ConnectionStatus.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0119, code lost:
    
        if (r6 == null) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x011c, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01a1  */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, io.sentry.protocol.OperatingSystem] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DeviceInfoUtil(Context context, SentryAndroidOptions sentryAndroidOptions) {
        String str;
        ContextUtils.SideLoadedInfo sideLoadedInfo;
        ApplicationInfo applicationInfo;
        PackageInfo c;
        ContextUtils.SplitApksInfo splitApksInfo;
        ActivityManager.MemoryInfo b;
        Bundle bundle;
        PackageInfo c2;
        PackageManager packageManager;
        boolean z;
        Process process;
        Process process2;
        boolean z2;
        boolean z3;
        boolean z4;
        PackageManager.PackageInfoFlags of;
        this.a = context;
        this.b = sentryAndroidOptions;
        this.c = new BuildInfoProvider(sentryAndroidOptions.getLogger());
        CpuInfoUtils.c.a();
        ?? obj = new Object();
        obj.j = "Android";
        obj.k = Build.VERSION.RELEASE;
        obj.m = Build.DISPLAY;
        ILogger logger = sentryAndroidOptions.getLogger();
        String property = System.getProperty("os.version");
        File file = new File("/proc/version");
        if (file.canRead()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                try {
                    String readLine = bufferedReader.readLine();
                    bufferedReader.close();
                    property = readLine;
                } finally {
                }
            } catch (IOException e) {
                logger.b(SentryLevel.ERROR, "Exception while attempting to read kernel information", e);
            }
        }
        if (property != null) {
            obj.n = property;
        }
        boolean z5 = false;
        if (sentryAndroidOptions.isEnableRootCheck()) {
            RootChecker rootChecker = new RootChecker(this.a, sentryAndroidOptions.getLogger(), this.c);
            rootChecker.b.getClass();
            String str2 = Build.TAGS;
            if (str2 == null || !str2.contains("test-keys")) {
                String[] strArr = rootChecker.d;
                int length = strArr.length;
                int i2 = 0;
                while (true) {
                    ILogger iLogger = rootChecker.c;
                    if (i2 < length) {
                        String str3 = strArr[i2];
                        try {
                        } catch (RuntimeException e2) {
                            iLogger.a(SentryLevel.ERROR, e2, "Error when trying to check if root file %s exists.", str3);
                        }
                        if (new File(str3).exists()) {
                            break;
                        } else {
                            i2++;
                        }
                    } else {
                        Process process3 = "su";
                        try {
                            try {
                                process = rootChecker.f.exec(new String[]{"/system/xbin/which", "su"});
                                try {
                                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(process.getInputStream(), RootChecker.g));
                                    try {
                                        if (bufferedReader2.readLine() != null) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        bufferedReader2.close();
                                        process.destroy();
                                    } finally {
                                    }
                                } catch (IOException unused) {
                                    iLogger.c(SentryLevel.DEBUG, "SU isn't found on this Device.", new Object[0]);
                                    process3 = process;
                                    process2 = process;
                                } catch (Throwable th) {
                                    th = th;
                                    iLogger.b(SentryLevel.DEBUG, "Error when trying to check if SU exists.", th);
                                    process3 = process;
                                    process2 = process;
                                }
                            } finally {
                                if (process3 != 0) {
                                    process3.destroy();
                                }
                            }
                        } catch (IOException unused2) {
                            process = null;
                        } catch (Throwable th2) {
                            th = th2;
                            process = null;
                        }
                        if (!z2) {
                            new BuildInfoProvider(iLogger);
                            PackageManager packageManager2 = rootChecker.a.getPackageManager();
                            if (packageManager2 != null) {
                                for (String str4 : rootChecker.e) {
                                    try {
                                        if (Build.VERSION.SDK_INT >= 33) {
                                            of = PackageManager.PackageInfoFlags.of(0L);
                                            packageManager2.getPackageInfo(str4, of);
                                        } else {
                                            packageManager2.getPackageInfo(str4, 0);
                                        }
                                        z3 = true;
                                        if (!z3) {
                                            z4 = false;
                                        }
                                    } catch (PackageManager.NameNotFoundException unused3) {
                                    }
                                }
                            }
                            z3 = false;
                            if (!z3) {
                            }
                        }
                    }
                }
            }
            z4 = true;
            obj.o = Boolean.valueOf(z4);
        }
        this.g = obj;
        this.d = this.c.a();
        ILogger logger2 = sentryAndroidOptions.getLogger();
        try {
            c2 = ContextUtils.c(context, this.c);
            packageManager = context.getPackageManager();
        } catch (IllegalArgumentException unused4) {
            str = null;
        }
        if (c2 != null && packageManager != null) {
            str = c2.packageName;
            try {
                String installerPackageName = packageManager.getInstallerPackageName(str);
                if (installerPackageName == null) {
                    z = true;
                } else {
                    z = false;
                }
                sideLoadedInfo = new ContextUtils.SideLoadedInfo(installerPackageName, z);
            } catch (IllegalArgumentException unused5) {
                logger2.c(SentryLevel.DEBUG, "%s package isn't installed.", str);
                sideLoadedInfo = null;
                this.e = sideLoadedInfo;
                BuildInfoProvider buildInfoProvider = this.c;
                buildInfoProvider.getClass();
                if (Build.VERSION.SDK_INT >= 33) {
                }
                c = ContextUtils.c(context, buildInfoProvider);
                if (c != null) {
                }
                this.f = splitApksInfo;
                b = ContextUtils.b(context, sentryAndroidOptions.getLogger());
                if (b != null) {
                }
            }
            this.e = sideLoadedInfo;
            BuildInfoProvider buildInfoProvider2 = this.c;
            buildInfoProvider2.getClass();
            if (Build.VERSION.SDK_INT >= 33) {
                applicationInfo = (ApplicationInfo) ContextUtils.d.a(context);
            } else {
                applicationInfo = (ApplicationInfo) ContextUtils.e.a(context);
            }
            c = ContextUtils.c(context, buildInfoProvider2);
            if (c != null) {
                String[] strArr2 = c.splitNames;
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    z5 = bundle.getBoolean("com.android.vending.splits.required");
                }
                splitApksInfo = new ContextUtils.SplitApksInfo(z5, strArr2);
            } else {
                splitApksInfo = null;
            }
            this.f = splitApksInfo;
            b = ContextUtils.b(context, sentryAndroidOptions.getLogger());
            if (b != null) {
                this.h = Long.valueOf(b.totalMem);
                return;
            } else {
                this.h = null;
                return;
            }
        }
        sideLoadedInfo = null;
        this.e = sideLoadedInfo;
        BuildInfoProvider buildInfoProvider22 = this.c;
        buildInfoProvider22.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
        }
        c = ContextUtils.c(context, buildInfoProvider22);
        if (c != null) {
        }
        this.f = splitApksInfo;
        b = ContextUtils.b(context, sentryAndroidOptions.getLogger());
        if (b != null) {
        }
    }

    public static Float b(Intent intent, SentryOptions sentryOptions) {
        try {
            int intExtra = intent.getIntExtra("level", -1);
            int intExtra2 = intent.getIntExtra("scale", -1);
            if (intExtra != -1 && intExtra2 != -1) {
                return Float.valueOf((intExtra / intExtra2) * 100.0f);
            }
            return null;
        } catch (Throwable th) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Error getting device battery level.", th);
            return null;
        }
    }

    public static DeviceInfoUtil c(Context context, SentryAndroidOptions sentryAndroidOptions) {
        if (i == null) {
            ISentryLifecycleToken a = j.a();
            try {
                if (i == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    i = new DeviceInfoUtil(context, sentryAndroidOptions);
                }
                a.close();
            } catch (Throwable th) {
                try {
                    a.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return i;
    }

    public static Boolean d(Intent intent, SentryOptions sentryOptions) {
        try {
            int intExtra = intent.getIntExtra("plugged", -1);
            boolean z = true;
            if (intExtra != 1 && intExtra != 2) {
                z = false;
            }
            return Boolean.valueOf(z);
        } catch (Throwable th) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Error getting device charging state.", th);
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(28:1|(1:3)|4|5|6|(1:(21:9|(3:140|141|142)|11|(1:13)|14|15|16|(1:18)|19|20|21|(1:23)(1:133)|24|(3:127|128|129)|26|(1:28)|29|(1:31)|32|(12:36|(1:38)(1:124)|(6:40|41|42|(2:44|45)|47|45)|50|(1:(1:53)(1:122))(1:123)|54|(1:57)|58|(7:60|61|62|63|64|65|66)|(7:74|75|76|(4:(1:79)(1:116)|80|(3:82|(1:(1:110)(2:113|92))(2:84|85)|86)|114)(1:117)|115|109|(6:96|97|98|99|100|101))|119|(1:121))|125)(1:146))(1:148)|147|(0)|11|(0)|14|15|16|(0)|19|20|21|(0)(0)|24|(0)|26|(0)|29|(0)|32|(13:34|36|(0)(0)|(0)|50|(0)(0)|54|(1:57)|58|(0)|(0)|119|(0))|125|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x00dc, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x00dd, code lost:
    
        r8.getLogger().a(io.sentry.SentryLevel.ERROR, r0, "Error getting the device's boot time.", new java.lang.Object[0]);
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x00a3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x00a4, code lost:
    
        r4.b(io.sentry.SentryLevel.ERROR, "Error getting DisplayMetrics.", r0);
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0280, code lost:
    
        r14 = new android.os.StatFs(r4.getPath());
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x023f  */
    /* JADX WARN: Type inference failed for: r7v0, types: [io.sentry.protocol.Device, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Device a(boolean z, boolean z2) {
        Device.DeviceOrientation deviceOrientation;
        Boolean bool;
        DisplayMetrics displayMetrics;
        LocaleList locales;
        TimeZone timeZone;
        String str;
        ArrayList a;
        boolean isCollectExternalStorageContext;
        Intent registerReceiver;
        int i2;
        Boolean bool2;
        ActivityManager.MemoryInfo b;
        File dataDirectory;
        Long l;
        File file;
        String str2;
        Long l2;
        Long l3;
        Float f;
        int intExtra;
        int i3;
        Device.DeviceOrientation deviceOrientation2;
        String str3;
        String str4;
        Context context = this.a;
        ?? obj = new Object();
        obj.k = Build.MANUFACTURER;
        obj.l = Build.BRAND;
        SentryAndroidOptions sentryAndroidOptions = this.b;
        obj.m = ContextUtils.a(sentryAndroidOptions.getLogger());
        obj.n = Build.MODEL;
        obj.o = Build.ID;
        obj.p = Build.SUPPORTED_ABIS;
        this.c.getClass();
        if (Build.VERSION.SDK_INT >= 31) {
            StringBuilder sb = new StringBuilder();
            str3 = Build.SOC_MANUFACTURER;
            sb.append(str3);
            sb.append(" ");
            str4 = Build.SOC_MODEL;
            sb.append(str4);
            obj.Q = sb.toString();
        }
        Long l4 = null;
        try {
            i3 = context.getResources().getConfiguration().orientation;
        } catch (Throwable th) {
            th = th;
            deviceOrientation = null;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                deviceOrientation = null;
                if (deviceOrientation == null) {
                    try {
                        sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "No device orientation available (ORIENTATION_SQUARE|ORIENTATION_UNDEFINED)", new Object[0]);
                        deviceOrientation = null;
                    } catch (Throwable th2) {
                        th = th2;
                        sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error getting device orientation.", th);
                        obj.t = deviceOrientation;
                        bool = this.d;
                        if (bool != null) {
                        }
                        ILogger logger = sentryAndroidOptions.getLogger();
                        displayMetrics = context.getResources().getDisplayMetrics();
                        if (displayMetrics != null) {
                        }
                        Date date = DateUtils.c(System.currentTimeMillis() - SystemClock.elapsedRealtime());
                        obj.H = date;
                        locales = context.getResources().getConfiguration().getLocales();
                        if (!locales.isEmpty()) {
                        }
                        obj.I = timeZone;
                        if (obj.J == null) {
                        }
                        Locale locale = Locale.getDefault();
                        if (obj.K == null) {
                        }
                        a = CpuInfoUtils.c.a();
                        if (!a.isEmpty()) {
                        }
                        obj.v = this.h;
                        if (z) {
                        }
                        return obj;
                    }
                }
                obj.t = deviceOrientation;
                bool = this.d;
                if (bool != null) {
                    obj.u = bool;
                }
                ILogger logger2 = sentryAndroidOptions.getLogger();
                displayMetrics = context.getResources().getDisplayMetrics();
                if (displayMetrics != null) {
                    obj.D = Integer.valueOf(displayMetrics.widthPixels);
                    obj.E = Integer.valueOf(displayMetrics.heightPixels);
                    obj.F = Float.valueOf(displayMetrics.density);
                    obj.G = Integer.valueOf(displayMetrics.densityDpi);
                }
                Date date2 = DateUtils.c(System.currentTimeMillis() - SystemClock.elapsedRealtime());
                obj.H = date2;
                locales = context.getResources().getConfiguration().getLocales();
                if (!locales.isEmpty()) {
                    timeZone = Calendar.getInstance(locales.get(0)).getTimeZone();
                } else {
                    timeZone = Calendar.getInstance().getTimeZone();
                }
                obj.I = timeZone;
                if (obj.J == null) {
                    try {
                        str = Installation.a(context);
                    } catch (Throwable th3) {
                        sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error getting installationId.", th3);
                        str = null;
                    }
                    obj.J = str;
                }
                Locale locale2 = Locale.getDefault();
                if (obj.K == null) {
                    obj.K = locale2.toString();
                }
                a = CpuInfoUtils.c.a();
                if (!a.isEmpty()) {
                    obj.O = Double.valueOf(((Integer) Collections.max(a)).doubleValue());
                    obj.N = Integer.valueOf(a.size());
                }
                obj.v = this.h;
                if (z && sentryAndroidOptions.isCollectAdditionalContext()) {
                    isCollectExternalStorageContext = sentryAndroidOptions.isCollectExternalStorageContext();
                    IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
                    if (Build.VERSION.SDK_INT < 33) {
                        registerReceiver = context.registerReceiver(null, intentFilter, null, null, 4);
                    } else {
                        registerReceiver = context.registerReceiver(null, intentFilter, null, null);
                    }
                    if (registerReceiver != null) {
                        obj.q = b(registerReceiver, sentryAndroidOptions);
                        obj.r = d(registerReceiver, sentryAndroidOptions);
                        try {
                            intExtra = registerReceiver.getIntExtra("temperature", -1);
                        } catch (Throwable th4) {
                            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error getting battery temperature.", th4);
                        }
                        if (intExtra != -1) {
                            f = Float.valueOf(intExtra / 10.0f);
                            obj.M = f;
                        }
                        f = null;
                        obj.M = f;
                    }
                    i2 = AnonymousClass1.a[sentryAndroidOptions.getConnectionStatusProvider().p0().ordinal()];
                    if (i2 == 1) {
                        if (i2 != 2) {
                            bool2 = null;
                        } else {
                            bool2 = Boolean.TRUE;
                        }
                    } else {
                        bool2 = Boolean.FALSE;
                    }
                    obj.s = bool2;
                    b = ContextUtils.b(context, sentryAndroidOptions.getLogger());
                    if (b != null && z2) {
                        obj.w = Long.valueOf(b.availMem);
                        obj.y = Boolean.valueOf(b.lowMemory);
                    }
                    dataDirectory = Environment.getDataDirectory();
                    if (dataDirectory != null) {
                        StatFs statFs = new StatFs(dataDirectory.getPath());
                        try {
                            l2 = Long.valueOf(statFs.getBlockCountLong() * statFs.getBlockSizeLong());
                        } catch (Throwable th5) {
                            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error getting total internal storage amount.", th5);
                            l2 = null;
                        }
                        obj.z = l2;
                        try {
                            l3 = Long.valueOf(statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong());
                        } catch (Throwable th6) {
                            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error getting unused internal storage amount.", th6);
                            l3 = null;
                        }
                        obj.A = l3;
                    }
                    if (isCollectExternalStorageContext) {
                        File externalFilesDir = context.getExternalFilesDir(null);
                        try {
                            File[] externalFilesDirs = context.getExternalFilesDirs(null);
                            if (externalFilesDirs != null) {
                                if (externalFilesDir != null) {
                                    str2 = externalFilesDir.getAbsolutePath();
                                } else {
                                    str2 = null;
                                }
                                int length = externalFilesDirs.length;
                                for (int i4 = 0; i4 < length; i4++) {
                                    file = externalFilesDirs[i4];
                                    if (file != null) {
                                        if (str2 == null || str2.isEmpty() || !file.getAbsolutePath().contains(str2)) {
                                            break;
                                        }
                                    }
                                }
                            } else {
                                sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "Not possible to read getExternalFilesDirs", new Object[0]);
                            }
                            file = null;
                        } catch (Throwable unused) {
                            sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "Not possible to read external files directory", new Object[0]);
                        }
                        StatFs statFs2 = null;
                        if (statFs2 != null) {
                            try {
                                l = Long.valueOf(statFs2.getBlockCountLong() * statFs2.getBlockSizeLong());
                            } catch (Throwable th7) {
                                sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error getting total external storage amount.", th7);
                                l = null;
                            }
                            obj.B = l;
                            try {
                                l4 = Long.valueOf(statFs2.getAvailableBlocksLong() * statFs2.getBlockSizeLong());
                            } catch (Throwable th8) {
                                sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error getting unused external storage amount.", th8);
                            }
                            obj.C = l4;
                        }
                    }
                    if (obj.L == null) {
                        obj.L = sentryAndroidOptions.getConnectionStatusProvider().B();
                    }
                }
                return obj;
            }
            deviceOrientation2 = Device.DeviceOrientation.LANDSCAPE;
        } else {
            deviceOrientation2 = Device.DeviceOrientation.PORTRAIT;
        }
        deviceOrientation = deviceOrientation2;
        if (deviceOrientation == null) {
        }
        obj.t = deviceOrientation;
        bool = this.d;
        if (bool != null) {
        }
        ILogger logger22 = sentryAndroidOptions.getLogger();
        displayMetrics = context.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
        }
        Date date22 = DateUtils.c(System.currentTimeMillis() - SystemClock.elapsedRealtime());
        obj.H = date22;
        locales = context.getResources().getConfiguration().getLocales();
        if (!locales.isEmpty()) {
        }
        obj.I = timeZone;
        if (obj.J == null) {
        }
        Locale locale22 = Locale.getDefault();
        if (obj.K == null) {
        }
        a = CpuInfoUtils.c.a();
        if (!a.isEmpty()) {
        }
        obj.v = this.h;
        if (z) {
            isCollectExternalStorageContext = sentryAndroidOptions.isCollectExternalStorageContext();
            IntentFilter intentFilter2 = new IntentFilter("android.intent.action.BATTERY_CHANGED");
            if (Build.VERSION.SDK_INT < 33) {
            }
            if (registerReceiver != null) {
            }
            i2 = AnonymousClass1.a[sentryAndroidOptions.getConnectionStatusProvider().p0().ordinal()];
            if (i2 == 1) {
            }
            obj.s = bool2;
            b = ContextUtils.b(context, sentryAndroidOptions.getLogger());
            if (b != null) {
                obj.w = Long.valueOf(b.availMem);
                obj.y = Boolean.valueOf(b.lowMemory);
            }
            dataDirectory = Environment.getDataDirectory();
            if (dataDirectory != null) {
            }
            if (isCollectExternalStorageContext) {
            }
            if (obj.L == null) {
            }
        }
        return obj;
    }
}
