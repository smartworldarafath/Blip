package okio.internal;

import defpackage.f7;
import defpackage.kb;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.JvmSystemFileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ResourceFileSystem extends FileSystem {
    public static final Path o;
    public final ClassLoader l;
    public final FileSystem m;
    public final Lazy n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final boolean a(Path path) {
            Path path2 = ResourceFileSystem.o;
            return !StringsKt.l(path.b(), ".class", true);
        }
    }

    static {
        String str = Path.k;
        o = Path.Companion.a("/");
    }

    public ResourceFileSystem(ClassLoader classLoader) {
        JvmSystemFileSystem jvmSystemFileSystem = FileSystem.j;
        jvmSystemFileSystem.getClass();
        this.l = classLoader;
        this.m = jvmSystemFileSystem;
        this.n = LazyKt.b(new kb(8, this));
    }

    @Override // okio.FileSystem
    public final List E(Path path) {
        path.getClass();
        Path path2 = o;
        String s = path2.f(path, true).d(path2).j.s();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (Pair pair : (List) this.n.getValue()) {
            FileSystem fileSystem = (FileSystem) pair.j;
            Path path3 = (Path) pair.k;
            try {
                List E = fileSystem.E(path3.e(s));
                ArrayList arrayList = new ArrayList();
                for (Object obj : E) {
                    if (Companion.a((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt.m(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Path path4 = (Path) it.next();
                    path4.getClass();
                    String replace = StringsKt.B(path4.j.s(), path3.j.s()).replace('\\', '/');
                    replace.getClass();
                    arrayList2.add(path2.e(replace));
                }
                CollectionsKt.g(linkedHashSet, arrayList2);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return CollectionsKt.X(linkedHashSet);
        }
        f7.j(path, "file not found: ");
        return null;
    }

    @Override // okio.FileSystem
    public final FileMetadata P(Path path) {
        path.getClass();
        if (Companion.a(path)) {
            Path path2 = o;
            String s = path2.f(path, true).d(path2).j.s();
            for (Pair pair : (List) this.n.getValue()) {
                FileMetadata P = ((FileSystem) pair.j).P(((Path) pair.k).e(s));
                if (P != null) {
                    return P;
                }
            }
            return null;
        }
        return null;
    }

    @Override // okio.FileSystem
    public final FileHandle R(Path path) {
        path.getClass();
        if (Companion.a(path)) {
            Path path2 = o;
            String s = path2.f(path, true).d(path2).j.s();
            Iterator it = ((List) this.n.getValue()).iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                try {
                    return ((FileSystem) pair.j).R(((Path) pair.k).e(s));
                } catch (FileNotFoundException unused) {
                }
            }
            f7.j(path, "file not found: ");
            return null;
        }
        f7.j(path, "file not found: ");
        return null;
    }

    @Override // okio.FileSystem
    public final Sink S(Path path, boolean z) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final Source X(Path path) {
        path.getClass();
        if (Companion.a(path)) {
            Path path2 = o;
            path2.getClass();
            URL resource = this.l.getResource(Path.b(path2, path, false).d(path2).j.s());
            if (resource != null) {
                URLConnection openConnection = resource.openConnection();
                if (openConnection instanceof JarURLConnection) {
                    ((JarURLConnection) openConnection).setUseCaches(false);
                }
                InputStream inputStream = openConnection.getInputStream();
                inputStream.getClass();
                return Okio.e(inputStream);
            }
            f7.j(path, "file not found: ");
            return null;
        }
        f7.j(path, "file not found: ");
        return null;
    }

    @Override // okio.FileSystem
    public final Sink a(Path path) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void h(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void q(Path path) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void v(Path path) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }
}
