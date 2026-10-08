package okio;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ForwardingFileSystem extends FileSystem {
    public final FileSystem l;

    public ForwardingFileSystem(FileSystem fileSystem) {
        fileSystem.getClass();
        this.l = fileSystem;
    }

    @Override // okio.FileSystem
    public final List E(Path path) {
        path.getClass();
        List<Path> E = this.l.E(path);
        ArrayList arrayList = new ArrayList();
        for (Path path2 : E) {
            path2.getClass();
            arrayList.add(path2);
        }
        CollectionsKt.O(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public final FileMetadata P(Path path) {
        path.getClass();
        FileMetadata P = this.l.P(path);
        if (P == null) {
            return null;
        }
        Path path2 = P.c;
        if (path2 == null) {
            return P;
        }
        boolean z = P.a;
        boolean z2 = P.b;
        Long l = P.d;
        Long l2 = P.e;
        Long l3 = P.f;
        Long l4 = P.g;
        Map map = P.h;
        map.getClass();
        return new FileMetadata(z, z2, path2, l, l2, l3, l4, map);
    }

    @Override // okio.FileSystem
    public final FileHandle R(Path path) {
        path.getClass();
        return this.l.R(path);
    }

    @Override // okio.FileSystem
    public final Source X(Path path) {
        path.getClass();
        return this.l.X(path);
    }

    @Override // okio.FileSystem
    public final Sink a(Path path) {
        path.getClass();
        return this.l.a(path);
    }

    @Override // okio.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.l.close();
    }

    @Override // okio.FileSystem
    public final void h(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        this.l.h(path, path2);
    }

    @Override // okio.FileSystem
    public final void q(Path path) {
        path.getClass();
        this.l.q(path);
    }

    public final String toString() {
        return Reflection.a(getClass()).c() + '(' + this.l + ')';
    }

    @Override // okio.FileSystem
    public final void v(Path path) {
        path.getClass();
        this.l.v(path);
    }
}
