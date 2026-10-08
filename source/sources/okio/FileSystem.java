package okio;

import defpackage.f7;
import java.io.Closeable;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArrayDeque;
import okio.Path;
import okio.internal.ResourceFileSystem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileSystem implements Closeable {
    public static final JvmSystemFileSystem j;
    public static final Path k;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [okio.JvmSystemFileSystem] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v9 */
    static {
        ?? r0;
        try {
            Class.forName("java.nio.file.Files");
            r0 = new Object();
        } catch (ClassNotFoundException unused) {
            r0 = new Object();
        }
        j = r0;
        String str = Path.k;
        String property = System.getProperty("java.io.tmpdir");
        property.getClass();
        k = Path.Companion.a(property);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        classLoader.getClass();
        new ResourceFileSystem(classLoader);
    }

    public final boolean A(Path path) {
        path.getClass();
        if (P(path) != null) {
            return true;
        }
        return false;
    }

    public abstract List E(Path path);

    public final FileMetadata O(Path path) {
        path.getClass();
        FileMetadata P = P(path);
        if (P != null) {
            return P;
        }
        f7.j(path, "no such file: ");
        return null;
    }

    public abstract FileMetadata P(Path path);

    public abstract FileHandle R(Path path);

    public abstract Sink S(Path path, boolean z);

    public abstract Source X(Path path);

    public abstract Sink a(Path path);

    public abstract void h(Path path, Path path2);

    public final void n(Path path) {
        ArrayDeque arrayDeque = new ArrayDeque();
        while (path != null && !A(path)) {
            arrayDeque.addFirst(path);
            path = path.c();
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            q((Path) it.next());
        }
    }

    public abstract void q(Path path);

    public abstract void v(Path path);

    public final void w(Path path) {
        path.getClass();
        v(path);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
