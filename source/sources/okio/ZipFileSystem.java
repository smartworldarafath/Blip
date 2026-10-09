package okio;

import defpackage.f7;
import defpackage.fe;
import java.io.IOException;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.zip.Inflater;
import kotlin.ExceptionsKt;
import kotlin.collections.CollectionsKt;
import okio.Path;
import okio.internal.ZipEntry;
import okio.internal.ZipFilesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ZipFileSystem extends FileSystem {
    public static final Path o;
    public final Path l;
    public final FileSystem m;
    public final LinkedHashMap n;

    static {
        String str = Path.k;
        o = Path.Companion.a("/");
    }

    public ZipFileSystem(Path path, FileSystem fileSystem, LinkedHashMap linkedHashMap) {
        fileSystem.getClass();
        this.l = path;
        this.m = fileSystem;
        this.n = linkedHashMap;
    }

    @Override // okio.FileSystem
    public final List E(Path path) {
        path.getClass();
        ZipEntry zipEntry = (ZipEntry) this.n.get(o.f(path, true));
        if (zipEntry != null) {
            return CollectionsKt.X(zipEntry.q);
        }
        fe.v(path, "not a directory: ");
        return null;
    }

    @Override // okio.FileSystem
    public final FileMetadata P(Path path) {
        Long valueOf;
        boolean z;
        Long l;
        Long l2;
        Long l3;
        Long valueOf2;
        Throwable th;
        Throwable th2;
        path.getClass();
        Path path2 = o;
        path2.getClass();
        ZipEntry zipEntry = (ZipEntry) this.n.get(okio.internal.Path.b(path2, path, true));
        if (zipEntry == null) {
            return null;
        }
        long j = zipEntry.h;
        if (j != -1) {
            FileHandle R = this.m.R(this.l);
            try {
                RealBufferedSource realBufferedSource = new RealBufferedSource(R.h(j));
                try {
                    zipEntry = ZipFilesKt.f(realBufferedSource, zipEntry);
                    zipEntry.getClass();
                    try {
                        realBufferedSource.close();
                        th2 = null;
                    } catch (Throwable th3) {
                        th2 = th3;
                    }
                } catch (Throwable th4) {
                    try {
                        realBufferedSource.close();
                    } catch (Throwable th5) {
                        ExceptionsKt.a(th4, th5);
                    }
                    th2 = th4;
                    zipEntry = null;
                }
            } catch (Throwable th6) {
                if (R != null) {
                    try {
                        R.close();
                    } catch (Throwable th7) {
                        ExceptionsKt.a(th6, th7);
                    }
                }
                th = th6;
                zipEntry = null;
            }
            if (th2 == null) {
                try {
                    R.close();
                    th = null;
                } catch (Throwable th8) {
                    th = th8;
                }
                if (th != null) {
                    throw th;
                }
            } else {
                throw th2;
            }
        }
        boolean z2 = zipEntry.b;
        boolean z3 = !z2;
        if (z2) {
            valueOf = null;
        } else {
            valueOf = Long.valueOf(zipEntry.f);
        }
        Long l4 = zipEntry.m;
        if (l4 != null) {
            l = Long.valueOf((l4.longValue() / 10000) - 11644473600000L);
            z = true;
        } else {
            if (zipEntry.p != null) {
                z = true;
                l = Long.valueOf(r0.intValue() * 1000);
            } else {
                z = true;
                l = null;
            }
        }
        Long l5 = zipEntry.k;
        if (l5 != null) {
            l2 = Long.valueOf((l5.longValue() / 10000) - 11644473600000L);
        } else {
            if (zipEntry.n != null) {
                l2 = Long.valueOf(r2.intValue() * 1000);
            } else {
                int i = zipEntry.j;
                if (i != -1) {
                    int i2 = zipEntry.i;
                    if (i != -1) {
                        int i3 = (i >> 11) & 31;
                        int i4 = (i >> 5) & 63;
                        int i5 = (i & 31) << 1;
                        GregorianCalendar gregorianCalendar = new GregorianCalendar();
                        gregorianCalendar.set(14, 0);
                        gregorianCalendar.set(((i2 >> 9) & 127) + 1980, ((i2 >> 5) & 15) - 1, i2 & 31, i3, i4, i5);
                        l2 = Long.valueOf(gregorianCalendar.getTime().getTime());
                    }
                }
                l2 = null;
            }
        }
        Long l6 = zipEntry.l;
        if (l6 != null) {
            valueOf2 = Long.valueOf((l6.longValue() / 10000) - 11644473600000L);
        } else {
            if (zipEntry.o != null) {
                valueOf2 = Long.valueOf(r1.intValue() * 1000);
            } else {
                l3 = null;
                return new FileMetadata(z3, z2, null, valueOf, l, l2, l3);
            }
        }
        l3 = valueOf2;
        return new FileMetadata(z3, z2, null, valueOf, l, l2, l3);
    }

    @Override // okio.FileSystem
    public final FileHandle R(Path path) {
        path.getClass();
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    public final Sink S(Path path, boolean z) {
        path.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public final Source X(Path path) {
        Throwable th;
        RealBufferedSource realBufferedSource;
        path.getClass();
        Path path2 = o;
        path2.getClass();
        ZipEntry zipEntry = (ZipEntry) this.n.get(okio.internal.Path.b(path2, path, true));
        if (zipEntry != null) {
            long j = zipEntry.f;
            FileHandle R = this.m.R(this.l);
            try {
                realBufferedSource = new RealBufferedSource(R.h(zipEntry.h));
                try {
                    R.close();
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                if (R != null) {
                    try {
                        R.close();
                    } catch (Throwable th4) {
                        ExceptionsKt.a(th3, th4);
                    }
                }
                th = th3;
                realBufferedSource = null;
            }
            if (th == null) {
                realBufferedSource.getClass();
                ZipFilesKt.f(realBufferedSource, null);
                if (zipEntry.g == 0) {
                    return new LimitSource(realBufferedSource, j, false);
                }
                return new LimitSource(new InflaterSource(new RealBufferedSource(new LimitSource(realBufferedSource, zipEntry.e, false)), new Inflater(true)), j, true);
            }
            throw th;
        }
        f7.j(path, "no such file: ");
        return null;
    }

    @Override // okio.FileSystem
    public final Sink a(Path path) {
        path.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public final void h(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public final void q(Path path) {
        path.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public final void v(Path path) {
        path.getClass();
        throw new IOException("zip file systems are read-only");
    }
}
