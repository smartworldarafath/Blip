package coil3.disk;

import coil3.disk.DiskCache;
import coil3.disk.DiskLruCache;
import defpackage.u2;
import kotlin.coroutines.CoroutineContext;
import okio.ByteString;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealDiskCache implements DiskCache {
    public final FileSystem a;
    public final DiskLruCache b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RealEditor implements DiskCache.Editor {
        public final DiskLruCache.Editor a;

        public RealEditor(DiskLruCache.Editor editor) {
            this.a = editor;
        }

        @Override // coil3.disk.DiskCache.Editor
        public final DiskCache.Snapshot a() {
            DiskLruCache.Snapshot n;
            DiskLruCache.Editor editor = this.a;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache.q) {
                editor.a(true);
                n = diskLruCache.n(editor.a.a);
            }
            if (n != null) {
                return new RealSnapshot(n);
            }
            return null;
        }

        @Override // coil3.disk.DiskCache.Editor
        public final void b() {
            this.a.a(false);
        }

        @Override // coil3.disk.DiskCache.Editor
        public final Path e() {
            return this.a.b(0);
        }

        @Override // coil3.disk.DiskCache.Editor
        public final Path g() {
            return this.a.b(1);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RealSnapshot implements DiskCache.Snapshot {
        public final DiskLruCache.Snapshot j;

        public RealSnapshot(DiskLruCache.Snapshot snapshot) {
            this.j = snapshot;
        }

        @Override // coil3.disk.DiskCache.Snapshot
        public final DiskCache.Editor b0() {
            DiskLruCache.Editor h;
            DiskLruCache.Snapshot snapshot = this.j;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache.q) {
                snapshot.close();
                h = diskLruCache.h(snapshot.j.a);
            }
            if (h != null) {
                return new RealEditor(h);
            }
            return null;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            this.j.close();
        }

        @Override // coil3.disk.DiskCache.Snapshot
        public final Path e() {
            DiskLruCache.Snapshot snapshot = this.j;
            if (!snapshot.k) {
                return (Path) snapshot.j.c.get(0);
            }
            u2.l("snapshot is closed");
            return null;
        }

        @Override // coil3.disk.DiskCache.Snapshot
        public final Path g() {
            DiskLruCache.Snapshot snapshot = this.j;
            if (!snapshot.k) {
                return (Path) snapshot.j.c.get(1);
            }
            u2.l("snapshot is closed");
            return null;
        }
    }

    public RealDiskCache(long j, CoroutineContext coroutineContext, FileSystem fileSystem, Path path) {
        this.a = fileSystem;
        this.b = new DiskLruCache(j, coroutineContext, fileSystem, path);
    }

    public final DiskCache.Editor a(String str) {
        ByteString byteString = ByteString.m;
        DiskLruCache.Editor h = this.b.h(ByteString.Companion.b(str).d("SHA-256").f());
        if (h != null) {
            return new RealEditor(h);
        }
        return null;
    }

    public final DiskCache.Snapshot b(String str) {
        ByteString byteString = ByteString.m;
        DiskLruCache.Snapshot n = this.b.n(ByteString.Companion.b(str).d("SHA-256").f());
        if (n != null) {
            return new RealSnapshot(n);
        }
        return null;
    }
}
