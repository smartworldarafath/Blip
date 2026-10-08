package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.Arrays;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProfileInstaller {
    public static final DiagnosticsCallback a = new Object();
    public static final DiagnosticsCallback b = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.profileinstaller.ProfileInstaller$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements DiagnosticsCallback {
        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public final void a() {
            Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public final void b(int i, Object obj) {
            String str;
            switch (i) {
                case 1:
                    str = "RESULT_INSTALL_SUCCESS";
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    str = "RESULT_ALREADY_INSTALLED";
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    str = "RESULT_UNSUPPORTED_ART_VERSION";
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    str = "RESULT_NOT_WRITABLE";
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    str = "RESULT_IO_EXCEPTION";
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    str = "RESULT_PARSE_EXCEPTION";
                    break;
                case KeyModifiers.a /* 9 */:
                default:
                    str = "";
                    break;
                case KeyModifiers.b /* 10 */:
                    str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                    break;
                case 11:
                    str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                    break;
            }
            if (i != 6 && i != 7 && i != 8) {
                Log.d("ProfileInstaller", str);
            } else {
                Log.e("ProfileInstaller", str, (Throwable) obj);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface DiagnosticsCallback {
        void a();

        void b(int i, Object obj);
    }

    public static void a(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x02c9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x015e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01fa  */
    /* JADX WARN: Type inference failed for: r7v24, types: [java.io.OutputStream, java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r7v25, types: [int] */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v46 */
    /* JADX WARN: Type inference failed for: r7v47 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(Context context, Executor executor, DiagnosticsCallback diagnosticsCallback, boolean z) {
        boolean z2;
        ?? r7;
        byte[] bArr;
        DexProfileData[] dexProfileDataArr;
        DexProfileData[] dexProfileDataArr2;
        DexProfileData[] dexProfileDataArr3;
        byte[] bArr2;
        boolean z3;
        boolean z4;
        Throwable th;
        Throwable th2;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        ?? byteArrayOutputStream;
        DeviceProfileWriter deviceProfileWriter;
        String str;
        String str2;
        FileInputStream a2;
        boolean z9;
        boolean z10;
        boolean z11;
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        AssetManager assets = applicationContext.getAssets();
        String name = new File(applicationInfo.sourceDir).getName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            File filesDir = context.getFilesDir();
            if (!z) {
                File file = new File(filesDir, "profileinstaller_profileWrittenFor_lastUpdateTime.dat");
                if (file.exists()) {
                    try {
                        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                        try {
                            long readLong = dataInputStream.readLong();
                            dataInputStream.close();
                            if (readLong == packageInfo.lastUpdateTime) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (z11) {
                                diagnosticsCallback.b(2, null);
                            }
                        } finally {
                        }
                    } catch (IOException unused) {
                    }
                    if (z11) {
                        Log.d("ProfileInstaller", "Skipping profile installation for " + context.getPackageName());
                        ProfileVerifier.c(context, false);
                        return;
                    }
                }
                z11 = false;
                if (z11) {
                }
            }
            Log.d("ProfileInstaller", "Installing profile for " + context.getPackageName());
            File file2 = new File(new File("/data/misc/profiles/cur/0", packageName), "primary.prof");
            DeviceProfileWriter deviceProfileWriter2 = new DeviceProfileWriter(assets, executor, diagnosticsCallback, name, file2);
            byte[] bArr3 = deviceProfileWriter2.c;
            if (bArr3 == null) {
                deviceProfileWriter2.b(3, Integer.valueOf(Build.VERSION.SDK_INT));
            } else {
                if (file2.exists()) {
                    if (!file2.canWrite()) {
                        deviceProfileWriter2.b(4, null);
                    }
                    deviceProfileWriter2.f = true;
                    try {
                        try {
                            r7 = deviceProfileWriter2.a(assets, "dexopt/baseline.prof");
                        } catch (FileNotFoundException e) {
                            diagnosticsCallback.b(6, e);
                            r7 = 0;
                            bArr = ProfileTranscoder.a;
                            if (r7 != 0) {
                            }
                            dexProfileDataArr2 = deviceProfileWriter2.g;
                            if (dexProfileDataArr2 != null) {
                            }
                            DiagnosticsCallback diagnosticsCallback2 = deviceProfileWriter2.b;
                            dexProfileDataArr3 = deviceProfileWriter2.g;
                            byte[] bArr4 = deviceProfileWriter2.c;
                            boolean z12 = r7;
                            z12 = r7;
                            if (dexProfileDataArr3 != null) {
                            }
                            bArr2 = deviceProfileWriter2.h;
                            if (bArr2 != null) {
                            }
                            if (z4) {
                            }
                            z6 = z4;
                            z9 = z5;
                            if (!z6) {
                            }
                            z10 = false;
                            ProfileVerifier.c(context, z10);
                        } catch (IOException e2) {
                            diagnosticsCallback.b(7, e2);
                            r7 = 0;
                            bArr = ProfileTranscoder.a;
                            if (r7 != 0) {
                            }
                            dexProfileDataArr2 = deviceProfileWriter2.g;
                            if (dexProfileDataArr2 != null) {
                            }
                            DiagnosticsCallback diagnosticsCallback22 = deviceProfileWriter2.b;
                            dexProfileDataArr3 = deviceProfileWriter2.g;
                            byte[] bArr42 = deviceProfileWriter2.c;
                            boolean z122 = r7;
                            z122 = r7;
                            if (dexProfileDataArr3 != null) {
                            }
                            bArr2 = deviceProfileWriter2.h;
                            if (bArr2 != null) {
                            }
                            if (z4) {
                            }
                            z6 = z4;
                            z9 = z5;
                            if (!z6) {
                            }
                            z10 = false;
                            ProfileVerifier.c(context, z10);
                        }
                        if (r7 != 0) {
                            try {
                                try {
                                } catch (IllegalStateException e3) {
                                    diagnosticsCallback.b(8, e3);
                                    try {
                                        r7.close();
                                    } catch (IOException e4) {
                                        diagnosticsCallback.b(7, e4);
                                    }
                                    dexProfileDataArr = null;
                                    deviceProfileWriter2.g = dexProfileDataArr;
                                    dexProfileDataArr2 = deviceProfileWriter2.g;
                                    if (dexProfileDataArr2 != null) {
                                    }
                                    DiagnosticsCallback diagnosticsCallback222 = deviceProfileWriter2.b;
                                    dexProfileDataArr3 = deviceProfileWriter2.g;
                                    byte[] bArr422 = deviceProfileWriter2.c;
                                    boolean z1222 = r7;
                                    z1222 = r7;
                                    if (dexProfileDataArr3 != null) {
                                    }
                                    bArr2 = deviceProfileWriter2.h;
                                    if (bArr2 != null) {
                                    }
                                    if (z4) {
                                    }
                                    z6 = z4;
                                    z9 = z5;
                                    if (!z6) {
                                    }
                                    z10 = false;
                                    ProfileVerifier.c(context, z10);
                                }
                            } catch (IOException e5) {
                                diagnosticsCallback.b(7, e5);
                                r7.close();
                                dexProfileDataArr = null;
                                deviceProfileWriter2.g = dexProfileDataArr;
                                dexProfileDataArr2 = deviceProfileWriter2.g;
                                if (dexProfileDataArr2 != null) {
                                }
                                DiagnosticsCallback diagnosticsCallback2222 = deviceProfileWriter2.b;
                                dexProfileDataArr3 = deviceProfileWriter2.g;
                                byte[] bArr4222 = deviceProfileWriter2.c;
                                boolean z12222 = r7;
                                z12222 = r7;
                                if (dexProfileDataArr3 != null) {
                                }
                                bArr2 = deviceProfileWriter2.h;
                                if (bArr2 != null) {
                                }
                                if (z4) {
                                }
                                z6 = z4;
                                z9 = z5;
                                if (!z6) {
                                }
                                z10 = false;
                                ProfileVerifier.c(context, z10);
                            }
                            if (Arrays.equals(bArr, Encoding.b(r7, 4))) {
                                dexProfileDataArr = ProfileTranscoder.g(r7, Encoding.b(r7, 4), deviceProfileWriter2.e);
                                try {
                                    r7.close();
                                } catch (IOException e6) {
                                    diagnosticsCallback.b(7, e6);
                                }
                                deviceProfileWriter2.g = dexProfileDataArr;
                            } else {
                                throw new IllegalStateException("Invalid magic");
                            }
                        }
                        dexProfileDataArr2 = deviceProfileWriter2.g;
                        if (dexProfileDataArr2 != null && (r7 = Build.VERSION.SDK_INT) >= 31) {
                            try {
                                str2 = "dexopt/baseline.profm";
                                a2 = deviceProfileWriter2.a(assets, "dexopt/baseline.profm");
                                str = str2;
                            } catch (FileNotFoundException e7) {
                                diagnosticsCallback.b(9, e7);
                                str = r7;
                            } catch (IOException e8) {
                                diagnosticsCallback.b(7, e8);
                                str = r7;
                            } catch (IllegalStateException e9) {
                                deviceProfileWriter2.g = null;
                                diagnosticsCallback.b(8, e9);
                                str = r7;
                            }
                            if (a2 == null) {
                                try {
                                    if (Arrays.equals(ProfileTranscoder.b, Encoding.b(a2, 4))) {
                                        byte[] b2 = Encoding.b(a2, 4);
                                        deviceProfileWriter2.g = ProfileTranscoder.d(a2, b2, bArr3, dexProfileDataArr2);
                                        a2.close();
                                        deviceProfileWriter = deviceProfileWriter2;
                                        r7 = b2;
                                        if (deviceProfileWriter != null) {
                                            deviceProfileWriter2 = deviceProfileWriter;
                                        }
                                    } else {
                                        throw new IllegalStateException("Invalid magic");
                                    }
                                } finally {
                                }
                            } else {
                                if (a2 != null) {
                                    a2.close();
                                    str = str2;
                                }
                                deviceProfileWriter = null;
                                r7 = str;
                                if (deviceProfileWriter != null) {
                                }
                            }
                        }
                        DiagnosticsCallback diagnosticsCallback22222 = deviceProfileWriter2.b;
                        dexProfileDataArr3 = deviceProfileWriter2.g;
                        byte[] bArr42222 = deviceProfileWriter2.c;
                        boolean z122222 = r7;
                        z122222 = r7;
                        if (dexProfileDataArr3 != null && bArr42222 != null) {
                            z7 = deviceProfileWriter2.f;
                            if (!z7) {
                                try {
                                    byteArrayOutputStream = new ByteArrayOutputStream();
                                    try {
                                        byteArrayOutputStream.write(bArr);
                                        byteArrayOutputStream.write(bArr42222);
                                    } finally {
                                    }
                                } catch (IOException e10) {
                                    diagnosticsCallback22222.b(7, e10);
                                    z8 = z7;
                                } catch (IllegalStateException e11) {
                                    diagnosticsCallback22222.b(8, e11);
                                    z8 = z7;
                                }
                                if (!ProfileTranscoder.i(byteArrayOutputStream, bArr42222, dexProfileDataArr3)) {
                                    diagnosticsCallback22222.b(5, null);
                                    deviceProfileWriter2.g = null;
                                    byteArrayOutputStream.close();
                                    z122222 = byteArrayOutputStream;
                                } else {
                                    deviceProfileWriter2.h = byteArrayOutputStream.toByteArray();
                                    byteArrayOutputStream.close();
                                    z8 = byteArrayOutputStream;
                                    deviceProfileWriter2.g = null;
                                    z122222 = z8;
                                }
                            } else {
                                u2.l("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                return;
                            }
                        }
                        bArr2 = deviceProfileWriter2.h;
                        if (bArr2 != null) {
                            z4 = false;
                            z5 = true;
                        } else {
                            try {
                                if (deviceProfileWriter2.f) {
                                    try {
                                        try {
                                            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr2);
                                            try {
                                                try {
                                                    FileOutputStream fileOutputStream = new FileOutputStream(deviceProfileWriter2.d);
                                                    try {
                                                        try {
                                                            FileChannel channel = fileOutputStream.getChannel();
                                                            try {
                                                                FileLock tryLock = channel.tryLock();
                                                                try {
                                                                    try {
                                                                        if (tryLock != null) {
                                                                            try {
                                                                                if (tryLock.isValid()) {
                                                                                    byte[] bArr5 = new byte[512];
                                                                                    while (true) {
                                                                                        int read = byteArrayInputStream.read(bArr5);
                                                                                        if (read <= 0) {
                                                                                            break;
                                                                                        } else {
                                                                                            fileOutputStream.write(bArr5, 0, read);
                                                                                        }
                                                                                    }
                                                                                    z5 = true;
                                                                                    deviceProfileWriter2.b(1, null);
                                                                                    tryLock.close();
                                                                                    channel.close();
                                                                                    fileOutputStream.close();
                                                                                    byteArrayInputStream.close();
                                                                                    deviceProfileWriter2.h = null;
                                                                                    deviceProfileWriter2.g = null;
                                                                                    z4 = true;
                                                                                }
                                                                            } catch (Throwable th3) {
                                                                                th = th3;
                                                                                Throwable th4 = th;
                                                                                if (tryLock != null) {
                                                                                    try {
                                                                                        tryLock.close();
                                                                                        throw th4;
                                                                                    } catch (Throwable th5) {
                                                                                        th4.addSuppressed(th5);
                                                                                        throw th4;
                                                                                    }
                                                                                }
                                                                                throw th4;
                                                                            }
                                                                        }
                                                                        throw new IOException("Unable to acquire a lock on the underlying file channel.");
                                                                    } catch (Throwable th6) {
                                                                        th = th6;
                                                                        Throwable th7 = th;
                                                                        if (channel != null) {
                                                                            try {
                                                                                channel.close();
                                                                                throw th7;
                                                                            } catch (Throwable th8) {
                                                                                th7.addSuppressed(th8);
                                                                                throw th7;
                                                                            }
                                                                        }
                                                                        throw th7;
                                                                    }
                                                                } catch (Throwable th9) {
                                                                    th = th9;
                                                                }
                                                            } catch (Throwable th10) {
                                                                th = th10;
                                                            }
                                                        } catch (Throwable th11) {
                                                            th = th11;
                                                            th2 = th;
                                                            try {
                                                                fileOutputStream.close();
                                                                throw th2;
                                                            } catch (Throwable th12) {
                                                                th2.addSuppressed(th12);
                                                                throw th2;
                                                            }
                                                        }
                                                    } catch (Throwable th13) {
                                                        th = th13;
                                                        th2 = th;
                                                        fileOutputStream.close();
                                                        throw th2;
                                                    }
                                                } catch (Throwable th14) {
                                                    th = th14;
                                                    th = th;
                                                    try {
                                                        byteArrayInputStream.close();
                                                        throw th;
                                                    } catch (Throwable th15) {
                                                        th.addSuppressed(th15);
                                                        throw th;
                                                    }
                                                }
                                            } catch (Throwable th16) {
                                                th = th16;
                                                th = th;
                                                byteArrayInputStream.close();
                                                throw th;
                                            }
                                        } catch (FileNotFoundException e12) {
                                            e = e12;
                                            z122222 = true;
                                            deviceProfileWriter2.b(6, e);
                                            z3 = z122222;
                                            z4 = false;
                                            z5 = z3;
                                            if (z4) {
                                            }
                                            z6 = z4;
                                            z9 = z5;
                                            if (!z6) {
                                            }
                                            z10 = false;
                                            ProfileVerifier.c(context, z10);
                                        } catch (IOException e13) {
                                            e = e13;
                                            z122222 = true;
                                            deviceProfileWriter2.b(7, e);
                                            z3 = z122222;
                                            z4 = false;
                                            z5 = z3;
                                            if (z4) {
                                            }
                                            z6 = z4;
                                            z9 = z5;
                                            if (!z6) {
                                            }
                                            z10 = false;
                                            ProfileVerifier.c(context, z10);
                                        }
                                    } catch (FileNotFoundException e14) {
                                        e = e14;
                                        deviceProfileWriter2.b(6, e);
                                        z3 = z122222;
                                        z4 = false;
                                        z5 = z3;
                                        if (z4) {
                                        }
                                        z6 = z4;
                                        z9 = z5;
                                        if (!z6) {
                                        }
                                        z10 = false;
                                        ProfileVerifier.c(context, z10);
                                    } catch (IOException e15) {
                                        e = e15;
                                        deviceProfileWriter2.b(7, e);
                                        z3 = z122222;
                                        z4 = false;
                                        z5 = z3;
                                        if (z4) {
                                        }
                                        z6 = z4;
                                        z9 = z5;
                                        if (!z6) {
                                        }
                                        z10 = false;
                                        ProfileVerifier.c(context, z10);
                                    }
                                } else {
                                    u2.l("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                    return;
                                }
                            } finally {
                                deviceProfileWriter2.h = null;
                                deviceProfileWriter2.g = null;
                            }
                        }
                        if (z4) {
                            a(packageInfo, filesDir);
                        }
                        z6 = z4;
                        z9 = z5;
                    } finally {
                    }
                    bArr = ProfileTranscoder.a;
                } else {
                    try {
                        if (!file2.createNewFile()) {
                            deviceProfileWriter2.b(4, null);
                        }
                        deviceProfileWriter2.f = true;
                        r7 = deviceProfileWriter2.a(assets, "dexopt/baseline.prof");
                        bArr = ProfileTranscoder.a;
                        if (r7 != 0) {
                        }
                        dexProfileDataArr2 = deviceProfileWriter2.g;
                        if (dexProfileDataArr2 != null) {
                            str2 = "dexopt/baseline.profm";
                            a2 = deviceProfileWriter2.a(assets, "dexopt/baseline.profm");
                            str = str2;
                            if (a2 == null) {
                            }
                        }
                        DiagnosticsCallback diagnosticsCallback222222 = deviceProfileWriter2.b;
                        dexProfileDataArr3 = deviceProfileWriter2.g;
                        byte[] bArr422222 = deviceProfileWriter2.c;
                        boolean z1222222 = r7;
                        z1222222 = r7;
                        if (dexProfileDataArr3 != null) {
                            z7 = deviceProfileWriter2.f;
                            if (!z7) {
                            }
                        }
                        bArr2 = deviceProfileWriter2.h;
                        if (bArr2 != null) {
                        }
                        if (z4) {
                        }
                        z6 = z4;
                        z9 = z5;
                    } catch (IOException unused2) {
                        z2 = true;
                        deviceProfileWriter2.b(4, null);
                    }
                }
                if (!z6 && z) {
                    z10 = z9;
                } else {
                    z10 = false;
                }
                ProfileVerifier.c(context, z10);
            }
            z2 = true;
            z6 = false;
            z9 = z2;
            if (!z6) {
            }
            z10 = false;
            ProfileVerifier.c(context, z10);
        } catch (PackageManager.NameNotFoundException e16) {
            diagnosticsCallback.b(7, e16);
            ProfileVerifier.c(context, false);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.profileinstaller.ProfileInstaller$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements DiagnosticsCallback {
        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public final void a() {
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public final void b(int i, Object obj) {
        }
    }
}
