package androidx.core.net;

import android.net.Uri;
import defpackage.fe;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UriKt {
    public static final File a(Uri uri) {
        if (Intrinsics.a(uri.getScheme(), "file")) {
            String path = uri.getPath();
            if (path != null) {
                return new File(path);
            }
            fe.s(uri, "Uri path is null: ");
            return null;
        }
        fe.s(uri, "Uri lacks 'file' scheme: ");
        return null;
    }
}
