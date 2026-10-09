package com.google.common.primitives;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Ints extends IntsMethodsForWeb {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class IntArrayAsList extends AbstractList<Integer> implements RandomAccess, Serializable {
        public final int[] j;
        public final int k;
        public final int l;

        public IntArrayAsList(int i, int i2, int[] iArr) {
            this.j = iArr;
            this.k = i;
            this.l = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            if (obj instanceof Integer) {
                int intValue = ((Integer) obj).intValue();
                int i = this.k;
                while (true) {
                    if (i < this.l) {
                        if (this.j[i] == intValue) {
                            break;
                        }
                        i++;
                    } else {
                        i = -1;
                        break;
                    }
                }
                if (i != -1) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof IntArrayAsList) {
                IntArrayAsList intArrayAsList = (IntArrayAsList) obj;
                int size = size();
                if (intArrayAsList.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.j[this.k + i] != intArrayAsList.j[intArrayAsList.k + i]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            Preconditions.h(i, size());
            return Integer.valueOf(this.j[this.k + i]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            int i = 1;
            for (int i2 = this.k; i2 < this.l; i2++) {
                i = (i * 31) + this.j[i2];
            }
            return i;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Integer) {
                int intValue = ((Integer) obj).intValue();
                int i = this.k;
                int i2 = i;
                while (true) {
                    if (i2 < this.l) {
                        if (this.j[i2] == intValue) {
                            break;
                        }
                        i2++;
                    } else {
                        i2 = -1;
                        break;
                    }
                }
                if (i2 >= 0) {
                    return i2 - i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            int i;
            if (obj instanceof Integer) {
                int intValue = ((Integer) obj).intValue();
                int i2 = this.l;
                while (true) {
                    i2--;
                    i = this.k;
                    if (i2 >= i) {
                        if (this.j[i2] == intValue) {
                            break;
                        }
                    } else {
                        i2 = -1;
                        break;
                    }
                }
                if (i2 >= 0) {
                    return i2 - i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i, Object obj) {
            Integer num = (Integer) obj;
            Preconditions.h(i, size());
            int i2 = this.k + i;
            int[] iArr = this.j;
            int i3 = iArr[i2];
            num.getClass();
            iArr[i2] = num.intValue();
            return Integer.valueOf(i3);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.l - this.k;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List subList(int i, int i2) {
            Preconditions.l(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.k;
            return new IntArrayAsList(i + i3, i3 + i2, this.j);
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            int[] iArr = this.j;
            int i = this.k;
            sb.append(iArr[i]);
            while (true) {
                i++;
                if (i < this.l) {
                    sb.append(", ");
                    sb.append(iArr[i]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }
    }

    public static List a(int... iArr) {
        if (iArr.length == 0) {
            return Collections.EMPTY_LIST;
        }
        return new IntArrayAsList(0, iArr.length, iArr);
    }

    public static int b(long j) {
        boolean z;
        int i = (int) j;
        if (i == j) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.f(z, "Out of range: %s", j);
        return i;
    }

    public static int c(byte b, byte b2, byte b3, byte b4) {
        return (b << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
    }

    public static int d(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    public static int[] e(AbstractCollection abstractCollection) {
        if (abstractCollection instanceof IntArrayAsList) {
            IntArrayAsList intArrayAsList = (IntArrayAsList) abstractCollection;
            return Arrays.copyOfRange(intArrayAsList.j, intArrayAsList.k, intArrayAsList.l);
        }
        Object[] array = abstractCollection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            Object obj = array[i];
            obj.getClass();
            iArr[i] = ((Number) obj).intValue();
        }
        return iArr;
    }

    public static Integer f(String str) {
        byte b;
        Long valueOf;
        byte b2;
        str.getClass();
        if (!str.isEmpty()) {
            int i = 0;
            if (str.charAt(0) == '-') {
                i = 1;
            }
            if (i != str.length()) {
                int i2 = i + 1;
                char charAt = str.charAt(i);
                if (charAt < 128) {
                    b = Longs.AsciiDigits.a[charAt];
                } else {
                    byte[] bArr = Longs.AsciiDigits.a;
                    b = -1;
                }
                if (b >= 0 && b < 10) {
                    long j = -b;
                    while (true) {
                        if (i2 < str.length()) {
                            int i3 = i2 + 1;
                            char charAt2 = str.charAt(i2);
                            if (charAt2 < 128) {
                                b2 = Longs.AsciiDigits.a[charAt2];
                            } else {
                                byte[] bArr2 = Longs.AsciiDigits.a;
                                b2 = -1;
                            }
                            if (b2 < 0 || b2 >= 10 || j < -922337203685477580L) {
                                break;
                            }
                            long j2 = j * 10;
                            long j3 = b2;
                            if (j2 < Long.MIN_VALUE + j3) {
                                break;
                            }
                            j = j2 - j3;
                            i2 = i3;
                        } else if (i != 0) {
                            valueOf = Long.valueOf(j);
                        } else if (j != Long.MIN_VALUE) {
                            valueOf = Long.valueOf(-j);
                        }
                    }
                }
            }
        }
        valueOf = null;
        if (valueOf == null || valueOf.longValue() != valueOf.intValue()) {
            return null;
        }
        return Integer.valueOf(valueOf.intValue());
    }
}
