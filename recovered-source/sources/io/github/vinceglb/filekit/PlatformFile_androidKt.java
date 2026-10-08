package io.github.vinceglb.filekit;

import android.net.Uri;
import defpackage.k8;
import io.github.vinceglb.filekit.AndroidFile;
import java.io.File;
import kotlin.text.StringsKt;
import kotlinx.io.files.Path;
import kotlinx.io.files.PathsJvmKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PlatformFile_androidKt {
    public static final PlatformFile a(Uri uri) {
        String path;
        uri.getClass();
        File file = null;
        if (StringsKt.o(uri.getScheme(), "file", true) && (path = uri.getPath()) != null) {
            file = new File(path);
        }
        if (file != null) {
            return new PlatformFile(new AndroidFile.FileWrapper(file));
        }
        return new PlatformFile(new AndroidFile.UriWrapper(uri));
    }

    public static final PlatformFile b(String str) {
        str.getClass();
        if (!StringsKt.J(str, "content://", true) && !StringsKt.J(str, "file://", true)) {
            return new PlatformFile(new AndroidFile.FileWrapper(new File(str)));
        }
        Uri parse = Uri.parse(str);
        parse.getClass();
        return a(parse);
    }

    public static final String c(PlatformFile platformFile) {
        platformFile.getClass();
        AndroidFile androidFile = platformFile.a;
        if (androidFile instanceof AndroidFile.FileWrapper) {
            String path = ((AndroidFile.FileWrapper) androidFile).a.getPath();
            path.getClass();
            int i = PathsJvmKt.a;
            return new Path(new File(path)).toString();
        }
        if (androidFile instanceof AndroidFile.UriWrapper) {
            String uri = ((AndroidFile.UriWrapper) androidFile).a.toString();
            uri.getClass();
            return uri;
        }
        k8.e();
        return null;
    }
}
