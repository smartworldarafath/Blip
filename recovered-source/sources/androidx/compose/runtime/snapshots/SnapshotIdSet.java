package androidx.compose.runtime.snapshots;

import androidx.collection.MutableLongList;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SnapshotIdSet implements Iterable<Long>, KMappedMarker {
    public static final SnapshotIdSet n = new SnapshotIdSet(0, 0, 0, null);
    public final long j;
    public final long k;
    public final long l;
    public final long[] m;

    public SnapshotIdSet(long j, long j2, long j3, long[] jArr) {
        this.j = j;
        this.k = j2;
        this.l = j3;
        this.m = jArr;
    }

    public final SnapshotIdSet b(SnapshotIdSet snapshotIdSet) {
        long[] jArr;
        SnapshotIdSet snapshotIdSet2 = this;
        SnapshotIdSet snapshotIdSet3 = n;
        if (snapshotIdSet == snapshotIdSet3) {
            return snapshotIdSet2;
        }
        if (snapshotIdSet2 == snapshotIdSet3) {
            return snapshotIdSet3;
        }
        long j = snapshotIdSet.l;
        long j2 = snapshotIdSet.l;
        long[] jArr2 = snapshotIdSet.m;
        long j3 = snapshotIdSet.k;
        long j4 = snapshotIdSet.j;
        long j5 = snapshotIdSet2.l;
        if (j == j5 && jArr2 == (jArr = snapshotIdSet2.m)) {
            return new SnapshotIdSet(snapshotIdSet2.j & (~j4), snapshotIdSet2.k & (~j3), j5, jArr);
        }
        if (jArr2 != null) {
            for (long j6 : jArr2) {
                snapshotIdSet2 = snapshotIdSet2.c(j6);
            }
        }
        if (j3 != 0) {
            for (int i = 0; i < 64; i++) {
                if (((1 << i) & j3) != 0) {
                    snapshotIdSet2 = snapshotIdSet2.c(i + j2);
                }
            }
        }
        if (j4 != 0) {
            for (int i2 = 0; i2 < 64; i2++) {
                if (((1 << i2) & j4) != 0) {
                    snapshotIdSet2 = snapshotIdSet2.c(i2 + j2 + 64);
                }
            }
        }
        return snapshotIdSet2;
    }

    public final SnapshotIdSet c(long j) {
        long[] jArr;
        int a;
        long[] jArr2;
        long j2 = j - this.l;
        if (Intrinsics.c(j2, 0L) >= 0 && Intrinsics.c(j2, 64L) < 0) {
            long j3 = 1 << ((int) j2);
            long j4 = this.k;
            if ((j4 & j3) != 0) {
                return new SnapshotIdSet(this.j, j4 & (~j3), this.l, this.m);
            }
        } else if (Intrinsics.c(j2, 64L) >= 0 && Intrinsics.c(j2, 128L) < 0) {
            long j5 = 1 << (((int) j2) - 64);
            long j6 = this.j;
            if ((j6 & j5) != 0) {
                return new SnapshotIdSet(j6 & (~j5), this.k, this.l, this.m);
            }
        } else if (Intrinsics.c(j2, 0L) < 0 && (jArr = this.m) != null && (a = SnapshotId_jvmKt.a(jArr, j)) >= 0) {
            int length = jArr.length;
            int i = length - 1;
            if (i == 0) {
                jArr2 = null;
            } else {
                long[] jArr3 = new long[i];
                if (a > 0) {
                    ArraysKt.h(jArr, jArr3, 0, 0, a);
                }
                if (a < i) {
                    ArraysKt.h(jArr, jArr3, a, a + 1, length);
                }
                jArr2 = jArr3;
            }
            return new SnapshotIdSet(this.j, this.k, this.l, jArr2);
        }
        return this;
    }

    public final boolean d(long j) {
        long[] jArr;
        long j2 = j - this.l;
        if (Intrinsics.c(j2, 0L) >= 0 && Intrinsics.c(j2, 64L) < 0) {
            if (((1 << ((int) j2)) & this.k) != 0) {
                return true;
            }
            return false;
        }
        if (Intrinsics.c(j2, 64L) >= 0 && Intrinsics.c(j2, 128L) < 0) {
            if (((1 << (((int) j2) - 64)) & this.j) != 0) {
                return true;
            }
            return false;
        }
        if (Intrinsics.c(j2, 0L) <= 0 && (jArr = this.m) != null && SnapshotId_jvmKt.a(jArr, j) >= 0) {
            return true;
        }
        return false;
    }

    public final SnapshotIdSet e(SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSet2;
        long[] jArr;
        SnapshotIdSet snapshotIdSet3 = this;
        SnapshotIdSet snapshotIdSet4 = n;
        if (snapshotIdSet == snapshotIdSet4) {
            return snapshotIdSet3;
        }
        if (snapshotIdSet3 == snapshotIdSet4) {
            return snapshotIdSet;
        }
        long j = snapshotIdSet.l;
        long j2 = snapshotIdSet.l;
        long[] jArr2 = snapshotIdSet.m;
        long j3 = snapshotIdSet.k;
        long j4 = snapshotIdSet.j;
        long j5 = snapshotIdSet3.l;
        long j6 = snapshotIdSet3.k;
        long j7 = snapshotIdSet3.j;
        if (j == j5 && jArr2 == (jArr = snapshotIdSet3.m)) {
            return new SnapshotIdSet(j7 | j4, j6 | j3, j5, jArr);
        }
        int i = 0;
        long[] jArr3 = snapshotIdSet3.m;
        if (jArr3 == null) {
            if (jArr3 != null) {
                snapshotIdSet2 = snapshotIdSet;
                for (long j8 : jArr3) {
                    snapshotIdSet2 = snapshotIdSet2.f(j8);
                }
            } else {
                snapshotIdSet2 = snapshotIdSet;
            }
            long j9 = snapshotIdSet3.l;
            if (j6 != 0) {
                for (int i2 = 0; i2 < 64; i2++) {
                    if (((1 << i2) & j6) != 0) {
                        snapshotIdSet2 = snapshotIdSet2.f(i2 + j9);
                    }
                }
            }
            if (j7 != 0) {
                while (i < 64) {
                    if (((1 << i) & j7) != 0) {
                        snapshotIdSet2 = snapshotIdSet2.f(i + j9 + 64);
                    }
                    i++;
                }
            }
            return snapshotIdSet2;
        }
        if (jArr2 != null) {
            for (long j10 : jArr2) {
                snapshotIdSet3 = snapshotIdSet3.f(j10);
            }
        }
        if (j3 != 0) {
            for (int i3 = 0; i3 < 64; i3++) {
                if (((1 << i3) & j3) != 0) {
                    snapshotIdSet3 = snapshotIdSet3.f(i3 + j2);
                }
            }
        }
        if (j4 != 0) {
            while (i < 64) {
                if (((1 << i) & j4) != 0) {
                    snapshotIdSet3 = snapshotIdSet3.f(i + j2 + 64);
                }
                i++;
            }
        }
        return snapshotIdSet3;
    }

    public final SnapshotIdSet f(long j) {
        long j2;
        long j3;
        long[] jArr;
        long[] jArr2;
        int i;
        long j4;
        long j5 = this.l;
        long j6 = j - j5;
        long j7 = 0;
        int c = Intrinsics.c(j6, 0L);
        long j8 = this.k;
        if (c >= 0 && Intrinsics.c(j6, 64L) < 0) {
            long j9 = 1 << ((int) j6);
            if ((j8 & j9) == 0) {
                return new SnapshotIdSet(this.j, j8 | j9, this.l, this.m);
            }
        } else {
            int c2 = Intrinsics.c(j6, 64L);
            long j10 = this.j;
            int i2 = 64;
            if (c2 >= 0 && Intrinsics.c(j6, 128L) < 0) {
                long j11 = 1 << (((int) j6) - 64);
                if ((j10 & j11) == 0) {
                    return new SnapshotIdSet(j10 | j11, this.k, this.l, this.m);
                }
            } else {
                int c3 = Intrinsics.c(j6, 128L);
                long[] jArr3 = this.m;
                if (c3 >= 0) {
                    if (!d(j)) {
                        long j12 = ((j + 1) / 64) * 64;
                        if (Intrinsics.c(j12, 0L) < 0) {
                            j12 = 9223372036854775680L;
                        }
                        long j13 = j10;
                        SnapshotIdArrayBuilder snapshotIdArrayBuilder = null;
                        while (true) {
                            if (Intrinsics.c(j5, j12) < 0) {
                                if (j8 != j7) {
                                    if (snapshotIdArrayBuilder == null) {
                                        snapshotIdArrayBuilder = new SnapshotIdArrayBuilder(jArr3);
                                    }
                                    int i3 = 0;
                                    i = i2;
                                    while (i3 < i) {
                                        if ((j8 & (1 << i3)) != j7) {
                                            j4 = j7;
                                            snapshotIdArrayBuilder.a.a(i3 + j5);
                                        } else {
                                            j4 = j7;
                                        }
                                        i3++;
                                        j7 = j4;
                                    }
                                } else {
                                    i = i2;
                                }
                                long j14 = j7;
                                if (j13 == j14) {
                                    j2 = j12;
                                    j3 = j14;
                                    break;
                                }
                                j5 += 64;
                                j7 = j14;
                                j8 = j13;
                                i2 = i;
                                j13 = j7;
                            } else {
                                j2 = j5;
                                j3 = j8;
                                break;
                            }
                        }
                        if (snapshotIdArrayBuilder != null) {
                            MutableLongList mutableLongList = snapshotIdArrayBuilder.a;
                            int i4 = mutableLongList.b;
                            if (i4 == 0) {
                                jArr2 = null;
                            } else {
                                long[] jArr4 = new long[i4];
                                long[] jArr5 = mutableLongList.a;
                                for (int i5 = 0; i5 < i4; i5++) {
                                    jArr4[i5] = jArr5[i5];
                                }
                                jArr2 = jArr4;
                            }
                            if (jArr2 != null) {
                                jArr = jArr2;
                                return new SnapshotIdSet(j13, j3, j2, jArr).f(j);
                            }
                        }
                        jArr = jArr3;
                        return new SnapshotIdSet(j13, j3, j2, jArr).f(j);
                    }
                } else {
                    if (jArr3 == null) {
                        return new SnapshotIdSet(this.j, this.k, this.l, new long[]{j});
                    }
                    int a = SnapshotId_jvmKt.a(jArr3, j);
                    if (a < 0) {
                        int i6 = -(a + 1);
                        int length = jArr3.length;
                        long[] jArr6 = new long[length + 1];
                        ArraysKt.h(jArr3, jArr6, 0, 0, i6);
                        ArraysKt.h(jArr3, jArr6, i6 + 1, i6, length);
                        jArr6[i6] = j;
                        return new SnapshotIdSet(this.j, this.k, this.l, jArr6);
                    }
                }
            }
        }
        return this;
    }

    @Override // java.lang.Iterable
    public final Iterator<Long> iterator() {
        return SequencesKt.e(new SnapshotIdSet$iterator$1(this, null));
    }

    public final String toString() {
        String obj = super.toString();
        ArrayList arrayList = new ArrayList(CollectionsKt.m(this, 10));
        Iterator<Long> it = iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next().longValue()));
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj2 = arrayList.get(i2);
            boolean z = true;
            i++;
            if (i > 1) {
                sb.append((CharSequence) ", ");
            }
            if (obj2 != null) {
                z = obj2 instanceof CharSequence;
            }
            if (z) {
                sb.append((CharSequence) obj2);
            } else if (obj2 instanceof Character) {
                sb.append(((Character) obj2).charValue());
            } else {
                sb.append((CharSequence) obj2.toString());
            }
        }
        sb.append((CharSequence) "");
        return obj + " [" + sb.toString() + "]";
    }
}
