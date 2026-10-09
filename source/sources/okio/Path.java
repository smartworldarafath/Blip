package okio;

import defpackage.k8;
import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Path implements Comparable<Path> {
    public static final String k;
    public final ByteString j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Type inference failed for: r0v1, types: [okio.Buffer, java.lang.Object] */
        public static Path a(String str) {
            str.getClass();
            ByteString byteString = okio.internal.Path.a;
            ?? obj = new Object();
            obj.E0(str);
            return okio.internal.Path.d(obj, false);
        }
    }

    static {
        String str = File.separator;
        str.getClass();
        k = str;
    }

    public Path(ByteString byteString) {
        byteString.getClass();
        this.j = byteString;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        int a = okio.internal.Path.a(this);
        ByteString byteString = this.j;
        if (a == -1) {
            a = 0;
        } else if (a < byteString.e() && byteString.j(a) == 92) {
            a++;
        }
        int e = byteString.e();
        int i = a;
        while (a < e) {
            if (byteString.j(a) == 47 || byteString.j(a) == 92) {
                arrayList.add(byteString.o(i, a));
                i = a + 1;
            }
            a++;
        }
        if (i < byteString.e()) {
            arrayList.add(byteString.o(i, byteString.e()));
        }
        return arrayList;
    }

    public final String b() {
        ByteString byteString = okio.internal.Path.a;
        ByteString byteString2 = this.j;
        int l = ByteString.l(byteString2, byteString);
        if (l == -1) {
            l = ByteString.l(byteString2, okio.internal.Path.b);
        }
        if (l != -1) {
            byteString2 = ByteString.p(byteString2, l + 1, 0, 2);
        } else if (g() != null && byteString2.e() == 2) {
            byteString2 = ByteString.m;
        }
        return byteString2.s();
    }

    public final Path c() {
        ByteString byteString = okio.internal.Path.d;
        ByteString byteString2 = this.j;
        if (!Intrinsics.a(byteString2, byteString)) {
            ByteString byteString3 = okio.internal.Path.a;
            if (!Intrinsics.a(byteString2, byteString3)) {
                ByteString byteString4 = okio.internal.Path.b;
                if (!Intrinsics.a(byteString2, byteString4)) {
                    ByteString byteString5 = okio.internal.Path.e;
                    byteString2.getClass();
                    byteString5.getClass();
                    int e = byteString2.e();
                    byte[] bArr = byteString5.j;
                    if (!byteString2.n(e - bArr.length, byteString5, bArr.length) || (byteString2.e() != 2 && !byteString2.n(byteString2.e() - 3, byteString3, 1) && !byteString2.n(byteString2.e() - 3, byteString4, 1))) {
                        int l = ByteString.l(byteString2, byteString3);
                        if (l == -1) {
                            l = ByteString.l(byteString2, byteString4);
                        }
                        if (l == 2 && g() != null) {
                            if (byteString2.e() != 3) {
                                return new Path(ByteString.p(byteString2, 0, 3, 1));
                            }
                            return null;
                        }
                        if (l == 1) {
                            byteString4.getClass();
                            if (byteString2.n(0, byteString4, byteString4.e())) {
                                return null;
                            }
                        }
                        if (l == -1 && g() != null) {
                            if (byteString2.e() != 2) {
                                return new Path(ByteString.p(byteString2, 0, 2, 1));
                            }
                            return null;
                        }
                        if (l == -1) {
                            return new Path(byteString);
                        }
                        if (l == 0) {
                            return new Path(ByteString.p(byteString2, 0, 1, 1));
                        }
                        return new Path(ByteString.p(byteString2, 0, l, 1));
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Path path) {
        Path path2 = path;
        path2.getClass();
        return this.j.compareTo(path2.j);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [okio.Buffer, java.lang.Object] */
    public final Path d(Path path) {
        Path path2;
        Path path3;
        path.getClass();
        ByteString byteString = path.j;
        int a = okio.internal.Path.a(this);
        ByteString byteString2 = this.j;
        if (a == -1) {
            path2 = null;
        } else {
            path2 = new Path(byteString2.o(0, a));
        }
        int a2 = okio.internal.Path.a(path);
        if (a2 == -1) {
            path3 = null;
        } else {
            path3 = new Path(byteString.o(0, a2));
        }
        if (Intrinsics.a(path2, path3)) {
            ArrayList a3 = a();
            ArrayList a4 = path.a();
            int min = Math.min(a3.size(), a4.size());
            int i = 0;
            while (i < min && Intrinsics.a(a3.get(i), a4.get(i))) {
                i++;
            }
            if (i == min && byteString2.e() == byteString.e()) {
                return Companion.a(".");
            }
            if (a4.subList(i, a4.size()).indexOf(okio.internal.Path.e) == -1) {
                if (Intrinsics.a(byteString, okio.internal.Path.d)) {
                    return this;
                }
                ?? obj = new Object();
                ByteString c = okio.internal.Path.c(path);
                if (c == null && (c = okio.internal.Path.c(this)) == null) {
                    c = okio.internal.Path.f(k);
                }
                int size = a4.size();
                for (int i2 = i; i2 < size; i2++) {
                    obj.Z(okio.internal.Path.e);
                    obj.Z(c);
                }
                int size2 = a3.size();
                while (i < size2) {
                    obj.Z((ByteString) a3.get(i));
                    obj.Z(c);
                    i++;
                }
                return okio.internal.Path.d(obj, false);
            }
            k8.t("Impossible relative path to resolve: ", this, " and ", path);
            return null;
        }
        k8.t("Paths of different roots cannot be relative to each other: ", this, " and ", path);
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [okio.Buffer, java.lang.Object] */
    public final Path e(String str) {
        str.getClass();
        ?? obj = new Object();
        obj.E0(str);
        return okio.internal.Path.b(this, okio.internal.Path.d(obj, false), false);
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Path) && Intrinsics.a(((Path) obj).j, this.j)) {
            return true;
        }
        return false;
    }

    public final Path f(Path path, boolean z) {
        path.getClass();
        return okio.internal.Path.b(this, path, z);
    }

    public final Character g() {
        ByteString byteString = okio.internal.Path.a;
        ByteString byteString2 = this.j;
        if (ByteString.h(byteString2, byteString) == -1 && byteString2.e() >= 2 && byteString2.j(1) == 58) {
            char j = (char) byteString2.j(0);
            if (('a' <= j && j < '{') || ('A' <= j && j < '[')) {
                return Character.valueOf(j);
            }
            return null;
        }
        return null;
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final File toFile() {
        return new File(this.j.s());
    }

    public final String toString() {
        return this.j.s();
    }
}
