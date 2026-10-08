package okio.internal;

import defpackage.fe;
import defpackage.k8;
import defpackage.q;
import defpackage.wi;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okio.Buffer;
import okio.FileHandle;
import okio.FileSystem;
import okio.Path;
import okio.RealBufferedSource;
import okio.ZipFileSystem;
import okio.internal.ZipFilesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ZipFilesKt {
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.util.Comparator] */
    public static final LinkedHashMap a(ArrayList arrayList) {
        String str = Path.k;
        Path a = Path.Companion.a("/");
        LinkedHashMap g = MapsKt.g(new Pair(a, new ZipEntry(a, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532)));
        for (ZipEntry zipEntry : CollectionsKt.R(arrayList, new Object())) {
            if (((ZipEntry) g.put(zipEntry.a, zipEntry)) == null) {
                while (true) {
                    Path path = zipEntry.a;
                    Path c = path.c();
                    if (c != null) {
                        ZipEntry zipEntry2 = (ZipEntry) g.get(c);
                        if (zipEntry2 != null) {
                            zipEntry2.q.add(path);
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(c, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532);
                        g.put(c, zipEntry3);
                        zipEntry3.q.add(path);
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return g;
    }

    public static final String b(int i) {
        CharsKt.b(16);
        String num = Integer.toString(i, 16);
        num.getClass();
        return "0x".concat(num);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01a9 A[Catch: all -> 0x014a, TRY_LEAVE, TryCatch #4 {all -> 0x014a, blocks: (B:3:0x000d, B:5:0x001b, B:6:0x0023, B:26:0x007a, B:28:0x0084, B:72:0x0149, B:82:0x0142, B:83:0x014e, B:108:0x01a9, B:114:0x01b6, B:117:0x01a4, B:11:0x01c2, B:15:0x01ce, B:16:0x01d5, B:133:0x01d6, B:134:0x01d9, B:135:0x01da, B:136:0x01ef, B:78:0x013d, B:106:0x019f, B:30:0x008d, B:32:0x0096, B:35:0x00a7, B:50:0x012c, B:64:0x0125, B:65:0x0130, B:66:0x0135, B:8:0x002c, B:19:0x0035, B:25:0x005b, B:130:0x01ba, B:131:0x01bf), top: B:2:0x000d, inners: #0, #1, #6, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01b6 A[Catch: all -> 0x014a, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x014a, blocks: (B:3:0x000d, B:5:0x001b, B:6:0x0023, B:26:0x007a, B:28:0x0084, B:72:0x0149, B:82:0x0142, B:83:0x014e, B:108:0x01a9, B:114:0x01b6, B:117:0x01a4, B:11:0x01c2, B:15:0x01ce, B:16:0x01d5, B:133:0x01d6, B:134:0x01d9, B:135:0x01da, B:136:0x01ef, B:78:0x013d, B:106:0x019f, B:30:0x008d, B:32:0x0096, B:35:0x00a7, B:50:0x012c, B:64:0x0125, B:65:0x0130, B:66:0x0135, B:8:0x002c, B:19:0x0035, B:25:0x005b, B:130:0x01ba, B:131:0x01bf), top: B:2:0x000d, inners: #0, #1, #6, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ZipFileSystem c(Path path, FileSystem fileSystem, Function1 function1) {
        RealBufferedSource realBufferedSource;
        Throwable th;
        Throwable th2;
        Throwable th3;
        int D0;
        fileSystem.getClass();
        FileHandle R = fileSystem.R(path);
        try {
            long size = R.size();
            long j = size - 22;
            long j2 = 0;
            if (j >= 0) {
                long max = Math.max(size - 65558, 0L);
                do {
                    RealBufferedSource realBufferedSource2 = new RealBufferedSource(R.h(j));
                    try {
                        if (realBufferedSource2.D0() == 101010256) {
                            int h = realBufferedSource2.h() & 65535;
                            int h2 = realBufferedSource2.h() & 65535;
                            long h3 = realBufferedSource2.h() & 65535;
                            if (h3 == (realBufferedSource2.h() & 65535) && h == 0 && h2 == 0) {
                                realBufferedSource2.skip(4L);
                                int h4 = realBufferedSource2.h() & 65535;
                                EocdRecord eocdRecord = new EocdRecord(h4, h3, realBufferedSource2.D0() & 4294967295L);
                                realBufferedSource2.p(h4);
                                realBufferedSource2.close();
                                long j3 = j - 20;
                                if (j3 > 0) {
                                    realBufferedSource2 = new RealBufferedSource(R.h(j3));
                                    try {
                                        if (realBufferedSource2.D0() == 117853008) {
                                            int D02 = realBufferedSource2.D0();
                                            long O0 = realBufferedSource2.O0();
                                            if (realBufferedSource2.D0() == 1 && D02 == 0) {
                                                realBufferedSource2 = new RealBufferedSource(R.h(O0));
                                                try {
                                                    D0 = realBufferedSource2.D0();
                                                } catch (Throwable th4) {
                                                    try {
                                                    } catch (Throwable th5) {
                                                        ExceptionsKt.a(th4, th5);
                                                    }
                                                    th3 = th4;
                                                }
                                                if (D0 == 101075792) {
                                                    realBufferedSource2.skip(12L);
                                                    int D03 = realBufferedSource2.D0();
                                                    int D04 = realBufferedSource2.D0();
                                                    long O02 = realBufferedSource2.O0();
                                                    if (O02 == realBufferedSource2.O0() && D03 == 0 && D04 == 0) {
                                                        realBufferedSource2.skip(8L);
                                                        try {
                                                            th3 = null;
                                                        } catch (Throwable th6) {
                                                            th3 = th6;
                                                        }
                                                        eocdRecord = new EocdRecord(h4, O02, realBufferedSource2.O0());
                                                        if (th3 != null) {
                                                            throw th3;
                                                        }
                                                    } else {
                                                        throw new IOException("unsupported zip: spanned");
                                                    }
                                                } else {
                                                    throw new IOException("bad zip: expected " + b(101075792) + " but was " + b(D0));
                                                }
                                            } else {
                                                throw new IOException("unsupported zip: spanned");
                                            }
                                        }
                                        try {
                                            th2 = null;
                                        } catch (Throwable th7) {
                                            th2 = th7;
                                        }
                                    } catch (Throwable th8) {
                                        try {
                                        } catch (Throwable th9) {
                                            ExceptionsKt.a(th8, th9);
                                        }
                                        th2 = th8;
                                    }
                                    if (th2 != null) {
                                        throw th2;
                                    }
                                }
                                ArrayList arrayList = new ArrayList();
                                RealBufferedSource realBufferedSource3 = new RealBufferedSource(R.h(eocdRecord.b));
                                try {
                                    long j4 = eocdRecord.a;
                                    while (j2 < j4) {
                                        ZipEntry d = d(realBufferedSource3);
                                        realBufferedSource = realBufferedSource3;
                                        try {
                                            if (d.h < eocdRecord.b) {
                                                if (((Boolean) function1.b(d)).booleanValue()) {
                                                    arrayList.add(d);
                                                }
                                                j2++;
                                                realBufferedSource3 = realBufferedSource;
                                            } else {
                                                throw new IOException("bad zip: local file header offset >= central directory offset");
                                            }
                                        } catch (Throwable th10) {
                                            th = th10;
                                            th = th;
                                            try {
                                                realBufferedSource.close();
                                            } catch (Throwable th11) {
                                                ExceptionsKt.a(th, th11);
                                            }
                                            if (th != null) {
                                            }
                                        }
                                    }
                                    try {
                                        realBufferedSource3.close();
                                        th = null;
                                    } catch (Throwable th12) {
                                        th = th12;
                                    }
                                } catch (Throwable th13) {
                                    th = th13;
                                    realBufferedSource = realBufferedSource3;
                                }
                                if (th != null) {
                                    ZipFileSystem zipFileSystem = new ZipFileSystem(path, fileSystem, a(arrayList));
                                    try {
                                        R.close();
                                    } catch (Throwable unused) {
                                    }
                                    return zipFileSystem;
                                }
                                throw th;
                            }
                            throw new IOException("unsupported zip: spanned");
                        }
                        realBufferedSource2.close();
                        j--;
                    } finally {
                        realBufferedSource2.close();
                    }
                } while (j >= max);
                throw new IOException("not a zip: end of central directory signature not found");
            }
            throw new IOException("not a zip: size=" + R.size());
        } catch (Throwable th14) {
            if (R != null) {
                try {
                    R.close();
                    throw th14;
                } catch (Throwable th15) {
                    ExceptionsKt.a(th14, th15);
                    throw th14;
                }
            }
            throw th14;
        }
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r1v5, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public static final ZipEntry d(final RealBufferedSource realBufferedSource) {
        long j;
        int D0 = realBufferedSource.D0();
        if (D0 == 33639248) {
            realBufferedSource.skip(4L);
            short h = realBufferedSource.h();
            int i = h & 65535;
            if ((h & 1) == 0) {
                int h2 = realBufferedSource.h() & 65535;
                int h3 = realBufferedSource.h() & 65535;
                int h4 = realBufferedSource.h() & 65535;
                long D02 = realBufferedSource.D0() & 4294967295L;
                final ?? obj = new Object();
                obj.j = realBufferedSource.D0() & 4294967295L;
                final ?? obj2 = new Object();
                obj2.j = realBufferedSource.D0() & 4294967295L;
                int h5 = realBufferedSource.h() & 65535;
                int h6 = realBufferedSource.h() & 65535;
                int h7 = realBufferedSource.h() & 65535;
                realBufferedSource.skip(8L);
                final ?? obj3 = new Object();
                obj3.j = realBufferedSource.D0() & 4294967295L;
                String p = realBufferedSource.p(h5);
                if (!StringsKt.j(p, (char) 0)) {
                    if (obj2.j == 4294967295L) {
                        j = 8;
                    } else {
                        j = 0;
                    }
                    if (obj.j == 4294967295L) {
                        j += 8;
                    }
                    if (obj3.j == 4294967295L) {
                        j += 8;
                    }
                    final long j2 = j;
                    final ?? obj4 = new Object();
                    final ?? obj5 = new Object();
                    final ?? obj6 = new Object();
                    final ?? obj7 = new Object();
                    e(realBufferedSource, h6, new Function2() { // from class: xi
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj8, Object obj9) {
                            long j3;
                            int intValue = ((Integer) obj8).intValue();
                            long longValue = ((Long) obj9).longValue();
                            RealBufferedSource realBufferedSource2 = realBufferedSource;
                            if (intValue != 1) {
                                if (intValue == 10) {
                                    if (longValue >= 4) {
                                        realBufferedSource2.skip(4L);
                                        ZipFilesKt.e(realBufferedSource2, (int) (longValue - 4), new wi(obj4, realBufferedSource2, obj5, obj6));
                                    } else {
                                        k8.j("bad zip: NTFS extra too short");
                                        return null;
                                    }
                                }
                            } else {
                                Ref$BooleanRef ref$BooleanRef = Ref$BooleanRef.this;
                                if (!ref$BooleanRef.j) {
                                    ref$BooleanRef.j = true;
                                    if (longValue >= j2) {
                                        Ref$LongRef ref$LongRef = obj2;
                                        long j4 = ref$LongRef.j;
                                        if (j4 == 4294967295L) {
                                            j4 = realBufferedSource2.O0();
                                        }
                                        ref$LongRef.j = j4;
                                        Ref$LongRef ref$LongRef2 = obj;
                                        long j5 = 0;
                                        if (ref$LongRef2.j == 4294967295L) {
                                            j3 = realBufferedSource2.O0();
                                        } else {
                                            j3 = 0;
                                        }
                                        ref$LongRef2.j = j3;
                                        Ref$LongRef ref$LongRef3 = obj3;
                                        if (ref$LongRef3.j == 4294967295L) {
                                            j5 = realBufferedSource2.O0();
                                        }
                                        ref$LongRef3.j = j5;
                                    } else {
                                        k8.j("bad zip: zip64 extra too short");
                                        return null;
                                    }
                                } else {
                                    k8.j("bad zip: zip64 extra repeated");
                                    return null;
                                }
                            }
                            return Unit.a;
                        }
                    });
                    if (j2 > 0 && !obj7.j) {
                        k8.j("bad zip: zip64 extra required but absent");
                        return null;
                    }
                    String p2 = realBufferedSource.p(h7);
                    String str = Path.k;
                    return new ZipEntry(Path.Companion.a("/").e(p), StringsKt.l(p, "/", false), p2, D02, obj.j, obj2.j, h2, obj3.j, h4, h3, (Long) obj4.j, (Long) obj5.j, (Long) obj6.j, 57344);
                }
                k8.j("bad zip: filename contains 0x00");
                return null;
            }
            k8.j("unsupported zip: general purpose bit flag=".concat(b(i)));
            return null;
        }
        fe.q("bad zip: expected ", b(33639248), " but was ", b(D0));
        return null;
    }

    public static final void e(RealBufferedSource realBufferedSource, int i, Function2 function2) {
        Buffer buffer = realBufferedSource.k;
        long j = i;
        while (j != 0) {
            if (j >= 4) {
                int h = realBufferedSource.h() & 65535;
                long h2 = realBufferedSource.h() & 65535;
                long j2 = j - 4;
                if (j2 >= h2) {
                    realBufferedSource.W0(h2);
                    long j3 = buffer.k;
                    function2.n(Integer.valueOf(h), Long.valueOf(h2));
                    long j4 = (buffer.k + h2) - j3;
                    if (j4 >= 0) {
                        if (j4 > 0) {
                            buffer.skip(j4);
                        }
                        j = j2 - h2;
                    } else {
                        k8.j(q.g(h, "unsupported zip: too many bytes processed for "));
                        return;
                    }
                } else {
                    k8.j("bad zip: truncated value in extra field");
                    return;
                }
            } else {
                k8.j("bad zip: truncated header in extra field");
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public static final ZipEntry f(RealBufferedSource realBufferedSource, ZipEntry zipEntry) {
        int D0 = realBufferedSource.D0();
        if (D0 == 67324752) {
            realBufferedSource.skip(2L);
            short h = realBufferedSource.h();
            int i = h & 65535;
            if ((h & 1) == 0) {
                realBufferedSource.skip(18L);
                int h2 = realBufferedSource.h() & 65535;
                realBufferedSource.skip(realBufferedSource.h() & 65535);
                if (zipEntry == null) {
                    realBufferedSource.skip(h2);
                    return null;
                }
                ?? obj = new Object();
                ?? obj2 = new Object();
                ?? obj3 = new Object();
                e(realBufferedSource, h2, new wi(realBufferedSource, (Ref$ObjectRef) obj, (Ref$ObjectRef) obj2, (Ref$ObjectRef) obj3));
                return new ZipEntry(zipEntry.a, zipEntry.b, zipEntry.c, zipEntry.d, zipEntry.e, zipEntry.f, zipEntry.g, zipEntry.h, zipEntry.i, zipEntry.j, zipEntry.k, zipEntry.l, zipEntry.m, (Integer) obj.j, (Integer) obj2.j, (Integer) obj3.j);
            }
            k8.j("unsupported zip: general purpose bit flag=".concat(b(i)));
            return null;
        }
        fe.q("bad zip: expected ", b(67324752), " but was ", b(D0));
        return null;
    }
}
