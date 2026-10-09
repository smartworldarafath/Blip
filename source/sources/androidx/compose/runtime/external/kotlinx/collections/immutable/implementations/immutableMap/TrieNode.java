package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrieNode<K, V> {
    public static final TrieNode e = new TrieNode(0, 0, new Object[0], null);
    public int a;
    public int b;
    public final MutabilityOwnership c;
    public Object[] d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ModificationResult<K, V> {
        public TrieNode a;
        public final int b;

        public ModificationResult(TrieNode trieNode, int i) {
            this.a = trieNode;
            this.b = i;
        }
    }

    public TrieNode(int i, int i2, Object[] objArr, MutabilityOwnership mutabilityOwnership) {
        this.a = i;
        this.b = i2;
        this.c = mutabilityOwnership;
        this.d = objArr;
    }

    public static TrieNode j(int i, Object obj, Object obj2, int i2, Object obj3, Object obj4, int i3, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr;
        if (i3 > 30) {
            return new TrieNode(0, 0, new Object[]{obj, obj2, obj3, obj4}, mutabilityOwnership);
        }
        int d = TrieNodeKt.d(i, i3);
        int d2 = TrieNodeKt.d(i2, i3);
        if (d != d2) {
            if (d < d2) {
                objArr = new Object[]{obj, obj2, obj3, obj4};
            } else {
                objArr = new Object[]{obj3, obj4, obj, obj2};
            }
            return new TrieNode((1 << d) | (1 << d2), 0, objArr, mutabilityOwnership);
        }
        return new TrieNode(0, 1 << d, new Object[]{j(i, obj, obj2, i2, obj3, obj4, i3 + 5, mutabilityOwnership)}, mutabilityOwnership);
    }

    public final Object[] a(int i, int i2, int i3, Object obj, Object obj2, int i4, MutabilityOwnership mutabilityOwnership) {
        int i5;
        Object obj3 = this.d[i];
        if (obj3 != null) {
            i5 = obj3.hashCode();
        } else {
            i5 = 0;
        }
        TrieNode j = j(i5, obj3, x(i), i3, obj, obj2, i4 + 5, mutabilityOwnership);
        int t = t(i2);
        int i6 = t + 1;
        Object[] objArr = this.d;
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt.j(0, i, 6, objArr, objArr2);
        ArraysKt.g(i, i + 2, i6, objArr, objArr2);
        objArr2[t - 1] = j;
        ArraysKt.g(t, i6, objArr.length, objArr, objArr2);
        return objArr2;
    }

    public final int b() {
        if (this.b == 0) {
            return this.d.length / 2;
        }
        int bitCount = Integer.bitCount(this.a);
        int length = this.d.length;
        for (int i = bitCount * 2; i < length; i++) {
            bitCount += s(i).b();
        }
        return bitCount;
    }

    public final boolean c(Object obj) {
        IntProgression h = RangesKt.h(RangesKt.j(0, this.d.length), 2);
        int i = h.j;
        int i2 = h.k;
        int i3 = h.l;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (!Intrinsics.a(obj, this.d[i])) {
                if (i != i2) {
                    i += i3;
                }
            }
            return true;
        }
        return false;
    }

    public final boolean d(int i, int i2, Object obj) {
        int d = 1 << TrieNodeKt.d(i, i2);
        if (h(d)) {
            return Intrinsics.a(obj, this.d[f(d)]);
        }
        if (i(d)) {
            TrieNode s = s(t(d));
            if (i2 == 30) {
                return s.c(obj);
            }
            return s.d(i, i2 + 5, obj);
        }
        return false;
    }

    public final boolean e(TrieNode trieNode) {
        if (this != trieNode) {
            if (this.b == trieNode.b && this.a == trieNode.a) {
                int length = this.d.length;
                for (int i = 0; i < length; i++) {
                    if (this.d[i] == trieNode.d[i]) {
                    }
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int f(int i) {
        return Integer.bitCount(this.a & (i - 1)) * 2;
    }

    public final Object g(int i, int i2, Object obj) {
        int d = 1 << TrieNodeKt.d(i, i2);
        if (h(d)) {
            int f = f(d);
            if (Intrinsics.a(obj, this.d[f])) {
                return x(f);
            }
            return null;
        }
        if (i(d)) {
            TrieNode s = s(t(d));
            if (i2 == 30) {
                IntProgression h = RangesKt.h(RangesKt.j(0, s.d.length), 2);
                int i3 = h.j;
                int i4 = h.k;
                int i5 = h.l;
                if ((i5 > 0 && i3 <= i4) || (i5 < 0 && i4 <= i3)) {
                    while (!Intrinsics.a(obj, s.d[i3])) {
                        if (i3 != i4) {
                            i3 += i5;
                        } else {
                            return null;
                        }
                    }
                    return s.x(i3);
                }
                return null;
            }
            return s.g(i, i2 + 5, obj);
        }
        return null;
    }

    public final boolean h(int i) {
        if ((this.a & i) != 0) {
            return true;
        }
        return false;
    }

    public final boolean i(int i) {
        if ((this.b & i) != 0) {
            return true;
        }
        return false;
    }

    public final TrieNode k(int i, PersistentHashMapBuilder persistentHashMapBuilder) {
        persistentHashMapBuilder.a(persistentHashMapBuilder.n - 1);
        persistentHashMapBuilder.l = x(i);
        Object[] objArr = this.d;
        if (objArr.length == 2) {
            return null;
        }
        if (this.c == persistentHashMapBuilder.j) {
            this.d = TrieNodeKt.b(i, objArr);
            return this;
        }
        return new TrieNode(0, 0, TrieNodeKt.b(i, objArr), persistentHashMapBuilder.j);
    }

    public final TrieNode l(int i, Object obj, Object obj2, int i2, PersistentHashMapBuilder persistentHashMapBuilder) {
        PersistentHashMapBuilder persistentHashMapBuilder2;
        TrieNode l;
        int d = 1 << TrieNodeKt.d(i, i2);
        boolean h = h(d);
        MutabilityOwnership mutabilityOwnership = this.c;
        if (h) {
            int f = f(d);
            if (Intrinsics.a(obj, this.d[f])) {
                persistentHashMapBuilder.l = x(f);
                if (x(f) == obj2) {
                    return this;
                }
                if (mutabilityOwnership == persistentHashMapBuilder.j) {
                    this.d[f + 1] = obj2;
                    return this;
                }
                persistentHashMapBuilder.m++;
                Object[] objArr = this.d;
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                copyOf[f + 1] = obj2;
                return new TrieNode(this.a, this.b, copyOf, persistentHashMapBuilder.j);
            }
            persistentHashMapBuilder.a(persistentHashMapBuilder.n + 1);
            MutabilityOwnership mutabilityOwnership2 = persistentHashMapBuilder.j;
            if (mutabilityOwnership == mutabilityOwnership2) {
                this.d = a(f, d, i, obj, obj2, i2, mutabilityOwnership2);
                this.a ^= d;
                this.b |= d;
                return this;
            }
            return new TrieNode(this.a ^ d, this.b | d, a(f, d, i, obj, obj2, i2, mutabilityOwnership2), mutabilityOwnership2);
        }
        if (i(d)) {
            int t = t(d);
            TrieNode s = s(t);
            if (i2 == 30) {
                IntProgression h2 = RangesKt.h(RangesKt.j(0, s.d.length), 2);
                int i3 = h2.j;
                int i4 = h2.k;
                int i5 = h2.l;
                if ((i5 > 0 && i3 <= i4) || (i5 < 0 && i4 <= i3)) {
                    while (!Intrinsics.a(obj, s.d[i3])) {
                        if (i3 != i4) {
                            i3 += i5;
                        }
                    }
                    persistentHashMapBuilder.l = s.x(i3);
                    if (s.c == persistentHashMapBuilder.j) {
                        s.d[i3 + 1] = obj2;
                        l = s;
                    } else {
                        persistentHashMapBuilder.m++;
                        Object[] objArr2 = s.d;
                        Object[] copyOf2 = Arrays.copyOf(objArr2, objArr2.length);
                        copyOf2[i3 + 1] = obj2;
                        l = new TrieNode(0, 0, copyOf2, persistentHashMapBuilder.j);
                    }
                    persistentHashMapBuilder2 = persistentHashMapBuilder;
                }
                persistentHashMapBuilder.a(persistentHashMapBuilder.n + 1);
                l = new TrieNode(0, 0, TrieNodeKt.a(s.d, 0, obj, obj2), persistentHashMapBuilder.j);
                persistentHashMapBuilder2 = persistentHashMapBuilder;
            } else {
                persistentHashMapBuilder2 = persistentHashMapBuilder;
                l = s.l(i, obj, obj2, i2 + 5, persistentHashMapBuilder2);
            }
            if (s == l) {
                return this;
            }
            return r(t, l, persistentHashMapBuilder2.j);
        }
        persistentHashMapBuilder.a(persistentHashMapBuilder.n + 1);
        MutabilityOwnership mutabilityOwnership3 = persistentHashMapBuilder.j;
        int f2 = f(d);
        Object[] objArr3 = this.d;
        if (mutabilityOwnership == mutabilityOwnership3) {
            this.d = TrieNodeKt.a(objArr3, f2, obj, obj2);
            this.a |= d;
            return this;
        }
        return new TrieNode(this.a | d, this.b, TrieNodeKt.a(objArr3, f2, obj, obj2), mutabilityOwnership3);
    }

    public final TrieNode m(TrieNode trieNode, int i, DeltaCounter deltaCounter, PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNode trieNode2;
        Object[] objArr;
        int i2;
        int i3;
        TrieNode j;
        int i4;
        int i5;
        int i6;
        if (this == trieNode) {
            deltaCounter.a += b();
            return this;
        }
        int i7 = 0;
        if (i > 30) {
            MutabilityOwnership mutabilityOwnership = persistentHashMapBuilder.j;
            int i8 = trieNode.b;
            Object[] objArr2 = this.d;
            Object[] copyOf = Arrays.copyOf(objArr2, objArr2.length + trieNode.d.length);
            int length = this.d.length;
            IntProgression h = RangesKt.h(RangesKt.j(0, trieNode.d.length), 2);
            int i9 = h.j;
            int i10 = h.k;
            int i11 = h.l;
            if ((i11 > 0 && i9 <= i10) || (i11 < 0 && i10 <= i9)) {
                while (true) {
                    if (!c(trieNode.d[i9])) {
                        Object[] objArr3 = trieNode.d;
                        copyOf[length] = objArr3[i9];
                        copyOf[length + 1] = objArr3[i9 + 1];
                        length += 2;
                    } else {
                        deltaCounter.a++;
                    }
                    if (i9 == i10) {
                        break;
                    }
                    i9 += i11;
                }
            }
            if (length != this.d.length) {
                if (length == trieNode.d.length) {
                    return trieNode;
                }
                if (length == copyOf.length) {
                    return new TrieNode(0, 0, copyOf, mutabilityOwnership);
                }
                return new TrieNode(0, 0, Arrays.copyOf(copyOf, length), mutabilityOwnership);
            }
        } else {
            int i12 = this.b | trieNode.b;
            int i13 = this.a;
            int i14 = trieNode.a;
            int i15 = (i13 ^ i14) & (~i12);
            int i16 = i13 & i14;
            int i17 = i15;
            while (i16 != 0) {
                int lowestOneBit = Integer.lowestOneBit(i16);
                if (Intrinsics.a(this.d[f(lowestOneBit)], trieNode.d[trieNode.f(lowestOneBit)])) {
                    i17 |= lowestOneBit;
                } else {
                    i12 |= lowestOneBit;
                }
                i16 ^= lowestOneBit;
            }
            if ((i12 & i17) != 0) {
                PreconditionsKt.b("Check failed.");
            }
            if (Intrinsics.a(this.c, persistentHashMapBuilder.j) && this.a == i17 && this.b == i12) {
                trieNode2 = this;
            } else {
                trieNode2 = new TrieNode(i17, i12, new Object[Integer.bitCount(i12) + (Integer.bitCount(i17) * 2)], null);
            }
            int i18 = i12;
            int i19 = 0;
            while (i18 != 0) {
                int lowestOneBit2 = Integer.lowestOneBit(i18);
                Object[] objArr4 = trieNode2.d;
                int length2 = (objArr4.length - 1) - i19;
                if (i(lowestOneBit2)) {
                    j = s(t(lowestOneBit2));
                    if (trieNode.i(lowestOneBit2)) {
                        j = j.m(trieNode.s(trieNode.t(lowestOneBit2)), i + 5, deltaCounter, persistentHashMapBuilder);
                        objArr = objArr4;
                    } else if (trieNode.h(lowestOneBit2)) {
                        int f = trieNode.f(lowestOneBit2);
                        Object obj = trieNode.d[f];
                        Object x = trieNode.x(f);
                        int i20 = persistentHashMapBuilder.n;
                        if (obj != null) {
                            i6 = obj.hashCode();
                        } else {
                            i6 = i7;
                        }
                        int i21 = i6;
                        objArr = objArr4;
                        j = j.l(i21, obj, x, i + 5, persistentHashMapBuilder);
                        if (persistentHashMapBuilder.n == i20) {
                            deltaCounter.a++;
                        }
                    } else {
                        objArr = objArr4;
                    }
                } else {
                    objArr = objArr4;
                    if (trieNode.i(lowestOneBit2)) {
                        TrieNode s = trieNode.s(trieNode.t(lowestOneBit2));
                        if (h(lowestOneBit2)) {
                            int f2 = f(lowestOneBit2);
                            Object obj2 = this.d[f2];
                            if (obj2 != null) {
                                i4 = obj2.hashCode();
                            } else {
                                i4 = 0;
                            }
                            int i22 = i + 5;
                            if (s.d(i4, i22, obj2)) {
                                deltaCounter.a++;
                            } else {
                                Object x2 = x(f2);
                                if (obj2 != null) {
                                    i5 = obj2.hashCode();
                                } else {
                                    i5 = 0;
                                }
                                j = s.l(i5, obj2, x2, i22, persistentHashMapBuilder);
                            }
                        }
                        j = s;
                    } else {
                        int f3 = f(lowestOneBit2);
                        Object obj3 = this.d[f3];
                        Object x3 = x(f3);
                        int f4 = trieNode.f(lowestOneBit2);
                        Object obj4 = trieNode.d[f4];
                        Object x4 = trieNode.x(f4);
                        if (obj3 != null) {
                            i2 = obj3.hashCode();
                        } else {
                            i2 = 0;
                        }
                        if (obj4 != null) {
                            i3 = obj4.hashCode();
                        } else {
                            i3 = 0;
                        }
                        j = j(i2, obj3, x3, i3, obj4, x4, i + 5, persistentHashMapBuilder.j);
                    }
                }
                objArr[length2] = j;
                i19++;
                i18 ^= lowestOneBit2;
                i7 = 0;
            }
            int i23 = 0;
            while (i17 != 0) {
                int lowestOneBit3 = Integer.lowestOneBit(i17);
                int i24 = i23 * 2;
                if (!trieNode.h(lowestOneBit3)) {
                    int f5 = f(lowestOneBit3);
                    Object[] objArr5 = trieNode2.d;
                    objArr5[i24] = this.d[f5];
                    objArr5[i24 + 1] = x(f5);
                } else {
                    int f6 = trieNode.f(lowestOneBit3);
                    Object[] objArr6 = trieNode2.d;
                    objArr6[i24] = trieNode.d[f6];
                    objArr6[i24 + 1] = trieNode.x(f6);
                    if (h(lowestOneBit3)) {
                        deltaCounter.a++;
                    }
                }
                i23++;
                i17 ^= lowestOneBit3;
            }
            if (!e(trieNode2)) {
                if (trieNode.e(trieNode2)) {
                    return trieNode;
                }
                return trieNode2;
            }
        }
        return this;
    }

    public final TrieNode n(int i, Object obj, int i2, PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNode n;
        int d = 1 << TrieNodeKt.d(i, i2);
        if (h(d)) {
            int f = f(d);
            if (Intrinsics.a(obj, this.d[f])) {
                return p(f, d, persistentHashMapBuilder);
            }
        } else if (i(d)) {
            int t = t(d);
            TrieNode s = s(t);
            if (i2 == 30) {
                IntProgression h = RangesKt.h(RangesKt.j(0, s.d.length), 2);
                int i3 = h.j;
                int i4 = h.k;
                int i5 = h.l;
                if ((i5 > 0 && i3 <= i4) || (i5 < 0 && i4 <= i3)) {
                    while (!Intrinsics.a(obj, s.d[i3])) {
                        if (i3 != i4) {
                            i3 += i5;
                        }
                    }
                    n = s.k(i3, persistentHashMapBuilder);
                }
                n = s;
                break;
            }
            n = s.n(i, obj, i2 + 5, persistentHashMapBuilder);
            return q(s, n, t, d, persistentHashMapBuilder.j);
        }
        return this;
    }

    public final TrieNode o(int i, Object obj, Object obj2, int i2, PersistentHashMapBuilder persistentHashMapBuilder) {
        PersistentHashMapBuilder persistentHashMapBuilder2;
        TrieNode o;
        int d = 1 << TrieNodeKt.d(i, i2);
        if (h(d)) {
            int f = f(d);
            if (Intrinsics.a(obj, this.d[f]) && Intrinsics.a(obj2, x(f))) {
                return p(f, d, persistentHashMapBuilder);
            }
            return this;
        }
        if (i(d)) {
            int t = t(d);
            TrieNode s = s(t);
            if (i2 == 30) {
                IntProgression h = RangesKt.h(RangesKt.j(0, s.d.length), 2);
                int i3 = h.j;
                int i4 = h.k;
                int i5 = h.l;
                if ((i5 > 0 && i3 <= i4) || (i5 < 0 && i4 <= i3)) {
                    while (true) {
                        if (Intrinsics.a(obj, s.d[i3]) && Intrinsics.a(obj2, s.x(i3))) {
                            o = s.k(i3, persistentHashMapBuilder);
                            break;
                        }
                        if (i3 == i4) {
                            break;
                        }
                        i3 += i5;
                    }
                    persistentHashMapBuilder2 = persistentHashMapBuilder;
                }
                o = s;
                persistentHashMapBuilder2 = persistentHashMapBuilder;
            } else {
                persistentHashMapBuilder2 = persistentHashMapBuilder;
                o = s.o(i, obj, obj2, i2 + 5, persistentHashMapBuilder2);
            }
            return q(s, o, t, d, persistentHashMapBuilder2.j);
        }
        return this;
    }

    public final TrieNode p(int i, int i2, PersistentHashMapBuilder persistentHashMapBuilder) {
        persistentHashMapBuilder.a(persistentHashMapBuilder.n - 1);
        persistentHashMapBuilder.l = x(i);
        Object[] objArr = this.d;
        if (objArr.length == 2) {
            return null;
        }
        if (this.c == persistentHashMapBuilder.j) {
            this.d = TrieNodeKt.b(i, objArr);
            this.a ^= i2;
            return this;
        }
        return new TrieNode(i2 ^ this.a, this.b, TrieNodeKt.b(i, objArr), persistentHashMapBuilder.j);
    }

    public final TrieNode q(TrieNode trieNode, TrieNode trieNode2, int i, int i2, MutabilityOwnership mutabilityOwnership) {
        MutabilityOwnership mutabilityOwnership2 = this.c;
        if (trieNode2 == null) {
            Object[] objArr = this.d;
            if (objArr.length == 1) {
                return null;
            }
            if (mutabilityOwnership2 == mutabilityOwnership) {
                this.d = TrieNodeKt.c(i, objArr);
                this.b ^= i2;
                return this;
            }
            return new TrieNode(this.a, this.b ^ i2, TrieNodeKt.c(i, objArr), mutabilityOwnership);
        }
        if (mutabilityOwnership2 != mutabilityOwnership && trieNode == trieNode2) {
            return this;
        }
        return r(i, trieNode2, mutabilityOwnership);
    }

    public final TrieNode r(int i, TrieNode trieNode, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.d;
        if (objArr.length == 1 && trieNode.d.length == 2 && trieNode.b == 0) {
            trieNode.a = this.b;
            return trieNode;
        }
        if (this.c == mutabilityOwnership) {
            objArr[i] = trieNode;
            return this;
        }
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        copyOf[i] = trieNode;
        return new TrieNode(this.a, this.b, copyOf, mutabilityOwnership);
    }

    public final TrieNode s(int i) {
        Object obj = this.d[i];
        obj.getClass();
        return (TrieNode) obj;
    }

    public final int t(int i) {
        return (this.d.length - 1) - Integer.bitCount(this.b & (i - 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c6, code lost:
    
        if (r13 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d2, code lost:
    
        r13.a = w(r11, r4, r13.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00da, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00cf, code lost:
    
        if (r13 == null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ModificationResult u(int i, int i2, Object obj, Object obj2) {
        ModificationResult u;
        int d = 1 << TrieNodeKt.d(i, i2);
        if (h(d)) {
            int f = f(d);
            if (Intrinsics.a(obj, this.d[f])) {
                if (x(f) != obj2) {
                    Object[] objArr = this.d;
                    Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                    copyOf[f + 1] = obj2;
                    return new ModificationResult(new TrieNode(this.a, this.b, copyOf, null), 0);
                }
            } else {
                return new ModificationResult(new TrieNode(this.a ^ d, this.b | d, a(f, d, i, obj, obj2, i2, null), null), 1);
            }
        } else if (i(d)) {
            int t = t(d);
            TrieNode s = s(t);
            if (i2 == 30) {
                IntProgression h = RangesKt.h(RangesKt.j(0, s.d.length), 2);
                int i3 = h.j;
                int i4 = h.k;
                int i5 = h.l;
                if ((i5 > 0 && i3 <= i4) || (i5 < 0 && i4 <= i3)) {
                    while (!Intrinsics.a(obj, s.d[i3])) {
                        if (i3 != i4) {
                            i3 += i5;
                        }
                    }
                    if (obj2 == s.x(i3)) {
                        u = null;
                    } else {
                        Object[] objArr2 = s.d;
                        Object[] copyOf2 = Arrays.copyOf(objArr2, objArr2.length);
                        copyOf2[i3 + 1] = obj2;
                        u = new ModificationResult(new TrieNode(0, 0, copyOf2, null), 0);
                    }
                }
                u = new ModificationResult(new TrieNode(0, 0, TrieNodeKt.a(s.d, 0, obj, obj2), null), 1);
                break;
            }
            u = s.u(i, i2 + 5, obj, obj2);
        } else {
            return new ModificationResult(new TrieNode(this.a | d, this.b, TrieNodeKt.a(this.d, f(d), obj, obj2), null), 1);
        }
        return null;
    }

    public final TrieNode v(int i, int i2, Object obj) {
        TrieNode v;
        int d = 1 << TrieNodeKt.d(i, i2);
        if (h(d)) {
            int f = f(d);
            if (Intrinsics.a(obj, this.d[f])) {
                Object[] objArr = this.d;
                if (objArr.length != 2) {
                    return new TrieNode(this.a ^ d, this.b, TrieNodeKt.b(f, objArr), null);
                }
            } else {
                return this;
            }
        } else if (i(d)) {
            int t = t(d);
            TrieNode s = s(t);
            if (i2 == 30) {
                IntProgression h = RangesKt.h(RangesKt.j(0, s.d.length), 2);
                int i3 = h.j;
                int i4 = h.k;
                int i5 = h.l;
                if ((i5 > 0 && i3 <= i4) || (i5 < 0 && i4 <= i3)) {
                    while (!Intrinsics.a(obj, s.d[i3])) {
                        if (i3 != i4) {
                            i3 += i5;
                        }
                    }
                    Object[] objArr2 = s.d;
                    if (objArr2.length == 2) {
                        v = null;
                    } else {
                        v = new TrieNode(0, 0, TrieNodeKt.b(i3, objArr2), null);
                    }
                }
                v = s;
                break;
            }
            v = s.v(i, i2 + 5, obj);
            if (v == null) {
                Object[] objArr3 = this.d;
                if (objArr3.length != 1) {
                    return new TrieNode(this.a, this.b ^ d, TrieNodeKt.c(t, objArr3), null);
                }
            } else {
                if (s != v) {
                    return w(t, d, v);
                }
                return this;
            }
        } else {
            return this;
        }
        return null;
    }

    public final TrieNode w(int i, int i2, TrieNode trieNode) {
        Object[] objArr = trieNode.d;
        if (objArr.length == 2 && trieNode.b == 0) {
            if (this.d.length == 1) {
                trieNode.a = this.b;
                return trieNode;
            }
            int f = f(i2);
            Object[] objArr2 = this.d;
            Object obj = objArr[0];
            Object obj2 = objArr[1];
            Object[] copyOf = Arrays.copyOf(objArr2, objArr2.length + 1);
            ArraysKt.g(i + 2, i + 1, objArr2.length, copyOf, copyOf);
            ArraysKt.g(f + 2, f, i, copyOf, copyOf);
            copyOf[f] = obj;
            copyOf[f + 1] = obj2;
            return new TrieNode(this.a ^ i2, this.b ^ i2, copyOf, null);
        }
        Object[] objArr3 = this.d;
        Object[] copyOf2 = Arrays.copyOf(objArr3, objArr3.length);
        copyOf2[i] = trieNode;
        return new TrieNode(this.a, this.b, copyOf2, null);
    }

    public final Object x(int i) {
        return this.d[i + 1];
    }
}
