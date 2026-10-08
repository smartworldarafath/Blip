package okio;

import defpackage.f7;
import defpackage.fe;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class JvmSystemFileSystem extends FileSystem {
    @Override // okio.FileSystem
    public final List E(Path path) {
        path.getClass();
        File file = path.toFile();
        String[] list = file.list();
        if (list == null) {
            if (!file.exists()) {
                f7.j(path, "no such file: ");
                return null;
            }
            fe.v(path, "failed to list ");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            str.getClass();
            arrayList.add(path.e(str));
        }
        CollectionsKt.O(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public FileMetadata P(Path path) {
        path.getClass();
        File file = path.toFile();
        boolean isFile = file.isFile();
        boolean isDirectory = file.isDirectory();
        long lastModified = file.lastModified();
        long length = file.length();
        if (!isFile && !isDirectory && lastModified == 0 && length == 0 && !file.exists()) {
            return null;
        }
        return new FileMetadata(isFile, isDirectory, null, Long.valueOf(length), null, Long.valueOf(lastModified), null);
    }

    @Override // okio.FileSystem
    public final FileHandle R(Path path) {
        path.getClass();
        return new JvmFileHandle(new RandomAccessFile(path.toFile(), "r"));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [okio.Timeout, java.lang.Object] */
    @Override // okio.FileSystem
    public final Sink S(Path path, boolean z) {
        path.getClass();
        if (z && A(path)) {
            throw new IOException(path + " already exists.");
        }
        return new OutputStreamSink(new FileOutputStream(path.toFile(), false), new Object());
    }

    @Override // okio.FileSystem
    public final Source X(Path path) {
        path.getClass();
        return Okio.d(path.toFile());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [okio.Timeout, java.lang.Object] */
    @Override // okio.FileSystem
    public final Sink a(Path path) {
        path.getClass();
        return new OutputStreamSink(new FileOutputStream(path.toFile(), true), new Object());
    }

    @Override // okio.FileSystem
    public void h(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        if (path.toFile().renameTo(path2.toFile())) {
            return;
        }
        throw new IOException("failed to move " + path + " to " + path2);
    }

    @Override // okio.FileSystem
    public final void q(Path path) {
        path.getClass();
        if (!path.toFile().mkdir()) {
            FileMetadata P = P(path);
            if (P == null || !P.b) {
                fe.v(path, "failed to create directory: ");
            }
        }
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }

    @Override // okio.FileSystem
    public final void v(Path path) {
        path.getClass();
        if (!Thread.interrupted()) {
            File file = path.toFile();
            if (!file.delete() && file.exists()) {
                fe.v(path, "failed to delete ");
                return;
            }
            return;
        }
        throw new InterruptedIOException("interrupted");
    }
}
