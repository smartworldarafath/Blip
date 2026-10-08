package okio.internal;

import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* renamed from: okio.internal.-Path, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Path {
    public static final ByteString a;
    public static final ByteString b;
    public static final ByteString c;
    public static final ByteString d;
    public static final ByteString e;

    static {
        ByteString byteString = ByteString.m;
        a = ByteString.Companion.b("/");
        b = ByteString.Companion.b("\\");
        c = ByteString.Companion.b("/\\");
        d = ByteString.Companion.b(".");
        e = ByteString.Companion.b("..");
    }

    public static final int a(okio.Path path) {
        ByteString byteString = path.j;
        if (byteString.e() != 0) {
            if (byteString.j(0) != 47) {
                if (byteString.j(0) == 92) {
                    if (byteString.e() > 2 && byteString.j(1) == 92) {
                        ByteString byteString2 = b;
                        byteString2.getClass();
                        int g = byteString.g(2, byteString2.i());
                        if (g == -1) {
                            return byteString.e();
                        }
                        return g;
                    }
                } else if (byteString.e() > 2 && byteString.j(1) == 58 && byteString.j(2) == 92) {
                    char j = (char) byteString.j(0);
                    if ('a' > j || j >= '{') {
                        if ('A' <= j && j < '[') {
                            return 3;
                        }
                    } else {
                        return 3;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [okio.Buffer, java.lang.Object] */
    public static final okio.Path b(okio.Path path, okio.Path path2, boolean z) {
        path2.getClass();
        if (a(path2) != -1 || path2.g() != null) {
            return path2;
        }
        ByteString c2 = c(path);
        if (c2 == null && (c2 = c(path2)) == null) {
            c2 = f(okio.Path.k);
        }
        ?? obj = new Object();
        obj.Z(path.j);
        if (obj.k > 0) {
            obj.Z(c2);
        }
        obj.Z(path2.j);
        return d(obj, z);
    }

    public static final ByteString c(okio.Path path) {
        ByteString byteString = path.j;
        ByteString byteString2 = a;
        if (ByteString.h(byteString, byteString2) != -1) {
            return byteString2;
        }
        ByteString byteString3 = path.j;
        ByteString byteString4 = b;
        if (ByteString.h(byteString3, byteString4) != -1) {
            return byteString4;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0110 A[EDGE_INSN: B:68:0x0110->B:69:0x0110 BREAK  A[LOOP:1: B:20:0x00ab->B:36:0x00ab], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00a5  */
    /* JADX WARN: Type inference failed for: r1v0, types: [okio.Buffer, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final okio.Path d(Buffer buffer, boolean z) {
        ByteString byteString;
        boolean z2;
        long j;
        char n;
        boolean z3;
        boolean J;
        ByteString byteString2;
        int size;
        int i;
        ByteString s;
        ?? obj = new Object();
        ByteString byteString3 = null;
        int i2 = 0;
        while (true) {
            if (!buffer.w(a)) {
                byteString = b;
                if (!buffer.w(byteString)) {
                    break;
                }
            }
            byte readByte = buffer.readByte();
            if (byteString3 == null) {
                byteString3 = e(readByte);
            }
            i2++;
        }
        if (i2 >= 2 && Intrinsics.a(byteString3, byteString)) {
            z2 = true;
        } else {
            z2 = false;
        }
        ByteString byteString4 = c;
        if (z2) {
            byteString3.getClass();
            obj.Z(byteString3);
            obj.Z(byteString3);
        } else if (i2 > 0) {
            byteString3.getClass();
            obj.Z(byteString3);
        } else {
            long v = buffer.v(byteString4);
            if (byteString3 == null) {
                if (v == -1) {
                    byteString3 = f(okio.Path.k);
                } else {
                    byteString3 = e(buffer.n(v));
                }
            }
            if (Intrinsics.a(byteString3, byteString) && buffer.k >= 2) {
                j = -1;
                if (buffer.n(1L) == 58 && (('a' <= (n = (char) buffer.n(0L)) && n < '{') || ('A' <= n && n < '['))) {
                    if (v == 2) {
                        obj.l0(3L, buffer);
                    } else {
                        obj.l0(2L, buffer);
                    }
                }
                if (obj.k <= 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                ArrayList arrayList = new ArrayList();
                while (true) {
                    J = buffer.J();
                    byteString2 = d;
                    if (!J) {
                        break;
                    }
                    long v2 = buffer.v(byteString4);
                    if (v2 == j) {
                        s = buffer.s(buffer.k);
                    } else {
                        s = buffer.s(v2);
                        buffer.readByte();
                    }
                    ByteString byteString5 = e;
                    if (Intrinsics.a(s, byteString5)) {
                        if (!z3 || !arrayList.isEmpty()) {
                            if (z && (z3 || (!arrayList.isEmpty() && !Intrinsics.a(CollectionsKt.z(arrayList), byteString5)))) {
                                if (!z2 || arrayList.size() != 1) {
                                    CollectionsKt.M(arrayList);
                                }
                            } else {
                                arrayList.add(s);
                            }
                        }
                    } else if (!Intrinsics.a(s, byteString2) && !Intrinsics.a(s, ByteString.m)) {
                        arrayList.add(s);
                    }
                }
                size = arrayList.size();
                for (i = 0; i < size; i++) {
                    if (i > 0) {
                        obj.Z(byteString3);
                    }
                    obj.Z((ByteString) arrayList.get(i));
                }
                if (obj.k == 0) {
                    obj.Z(byteString2);
                }
                return new okio.Path(obj.s(obj.k));
            }
        }
        j = -1;
        if (obj.k <= 0) {
        }
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            J = buffer.J();
            byteString2 = d;
            if (!J) {
            }
        }
        size = arrayList2.size();
        while (i < size) {
        }
        if (obj.k == 0) {
        }
        return new okio.Path(obj.s(obj.k));
    }

    public static final ByteString e(byte b2) {
        if (b2 != 47) {
            if (b2 == 92) {
                return b;
            }
            u2.g(q.g(b2, "not a directory separator: "));
            return null;
        }
        return a;
    }

    public static final ByteString f(String str) {
        if (Intrinsics.a(str, "/")) {
            return a;
        }
        if (Intrinsics.a(str, "\\")) {
            return b;
        }
        u2.g(jb.f("not a directory separator: ", str));
        return null;
    }
}
