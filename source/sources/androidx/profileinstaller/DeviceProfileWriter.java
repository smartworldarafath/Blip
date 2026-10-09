package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.profileinstaller.ProfileInstaller;
import defpackage.k5;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DeviceProfileWriter {
    public final Executor a;
    public final ProfileInstaller.DiagnosticsCallback b;
    public final byte[] c;
    public final File d;
    public final String e;
    public boolean f = false;
    public DexProfileData[] g;
    public byte[] h;

    public DeviceProfileWriter(AssetManager assetManager, Executor executor, ProfileInstaller.DiagnosticsCallback diagnosticsCallback, String str, File file) {
        byte[] bArr;
        this.a = executor;
        this.b = diagnosticsCallback;
        this.e = str;
        this.d = file;
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            bArr = ProfileVersion.a;
        } else {
            switch (i) {
                case 28:
                case 29:
                case 30:
                    bArr = ProfileVersion.b;
                    break;
                default:
                    bArr = null;
                    break;
            }
        }
        this.c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.b.a();
                return null;
            }
            return null;
        }
    }

    public final void b(int i, Serializable serializable) {
        this.a.execute(new k5(i, 2, this, serializable));
    }
}
