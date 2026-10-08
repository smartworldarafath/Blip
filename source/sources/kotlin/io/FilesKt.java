package kotlin.io;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import kotlin.text.Charsets;

/* loaded from: classes.dex */
public abstract class FilesKt extends FilesKt__UtilsKt {
    public static void b(File file, String str) {
        Charset charset = Charsets.a;
        charset.getClass();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            FilesKt__FileReadWriteKt.a(fileOutputStream, str, charset);
            fileOutputStream.close();
        } finally {
        }
    }
}
