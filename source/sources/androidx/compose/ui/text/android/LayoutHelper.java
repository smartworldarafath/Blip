package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.TextUtils;
import defpackage.jb;
import defpackage.q;
import java.text.Bidi;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutHelper {
    public final Layout a;
    public final ArrayList b;
    public final ArrayList c;
    public final boolean[] d;
    public char[] e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BidiRun {
        public final int a;
        public final int b;
        public final boolean c;

        public BidiRun(int i, int i2, boolean z) {
            this.a = i;
            this.b = i2;
            this.c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BidiRun)) {
                return false;
            }
            BidiRun bidiRun = (BidiRun) obj;
            if (this.a == bidiRun.a && this.b == bidiRun.b && this.c == bidiRun.c) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + q.b(this.b, Integer.hashCode(this.a) * 31, 31);
        }

        public final String toString() {
            StringBuilder k = jb.k("BidiRun(start=", this.a, ", end=", this.b, ", isRtl=");
            k.append(this.c);
            k.append(")");
            return k.toString();
        }
    }

    public LayoutHelper(Layout layout) {
        this.a = layout;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        do {
            int q = StringsKt.q(this.a.getText(), '\n', i, 4);
            if (q < 0) {
                i = this.a.getText().length();
            } else {
                i = q + 1;
            }
            arrayList.add(Integer.valueOf(i));
        } while (i < this.a.getText().length());
        this.b = arrayList;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList2.add(null);
        }
        this.c = arrayList2;
        this.d = new boolean[this.b.size()];
        this.b.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
    
        if (r5.getRunCount() == 1) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bidi a(int i) {
        int intValue;
        Bidi bidi;
        int i2;
        boolean[] zArr = this.d;
        boolean z = zArr[i];
        ArrayList arrayList = this.c;
        if (z) {
            return (Bidi) arrayList.get(i);
        }
        ArrayList arrayList2 = this.b;
        if (i == 0) {
            intValue = 0;
        } else {
            intValue = ((Number) arrayList2.get(i - 1)).intValue();
        }
        int intValue2 = ((Number) arrayList2.get(i)).intValue();
        int i3 = intValue2 - intValue;
        char[] cArr = this.e;
        if (cArr == null || cArr.length < i3) {
            cArr = new char[i3];
        }
        char[] cArr2 = cArr;
        Layout layout = this.a;
        TextUtils.getChars(layout.getText(), intValue, intValue2, cArr2, 0);
        if (Bidi.requiresBidi(cArr2, 0, i3)) {
            if (layout.getParagraphDirection(layout.getLineForOffset(e(i))) == -1) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            bidi = new Bidi(cArr2, 0, null, 0, i3, i2);
        }
        bidi = null;
        arrayList.set(i, bidi);
        zArr[i] = true;
        if (bidi != null) {
            char[] cArr3 = this.e;
            if (cArr2 == cArr3) {
                cArr2 = null;
            } else {
                cArr2 = cArr3;
            }
        }
        this.e = cArr2;
        return bidi;
    }

    public final float b(int i, boolean z) {
        Layout layout = this.a;
        int lineEnd = layout.getLineEnd(layout.getLineForOffset(i));
        if (i > lineEnd) {
            i = lineEnd;
        }
        if (z) {
            return layout.getPrimaryHorizontal(i);
        }
        return layout.getSecondaryHorizontal(i);
    }

    public final float c(int i, boolean z, boolean z2) {
        boolean z3;
        Bidi bidi;
        boolean z4;
        int i2;
        int i3;
        boolean z5;
        int i4;
        boolean z6;
        boolean z7;
        if (!z2) {
            return b(i, z);
        }
        Layout layout = this.a;
        int a = LayoutCompat_androidKt.a(layout, i, z2);
        int lineStart = layout.getLineStart(a);
        int lineEnd = layout.getLineEnd(a);
        if (i != lineStart && i != lineEnd) {
            return b(i, z);
        }
        if (i != 0 && i != layout.getText().length()) {
            int d = d(i, z2);
            if (layout.getParagraphDirection(layout.getLineForOffset(e(d))) == -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            int f = f(lineEnd, lineStart);
            int e = e(d);
            int i5 = lineStart - e;
            int i6 = f - e;
            Bidi a2 = a(d);
            if (a2 != null) {
                bidi = a2.createLineBidi(i5, i6);
            } else {
                bidi = null;
            }
            if (bidi != null && bidi.getRunCount() != 1) {
                int runCount = bidi.getRunCount();
                BidiRun[] bidiRunArr = new BidiRun[runCount];
                for (int i7 = 0; i7 < runCount; i7++) {
                    int runStart = bidi.getRunStart(i7) + lineStart;
                    int runLimit = bidi.getRunLimit(i7) + lineStart;
                    if (bidi.getRunLevel(i7) % 2 == 1) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    bidiRunArr[i7] = new BidiRun(runStart, runLimit, z7);
                }
                int runCount2 = bidi.getRunCount();
                byte[] bArr = new byte[runCount2];
                for (int i8 = 0; i8 < runCount2; i8++) {
                    bArr[i8] = (byte) bidi.getRunLevel(i8);
                }
                Bidi.reorderVisually(bArr, 0, bidiRunArr, 0, runCount);
                if (i == lineStart) {
                    int i9 = 0;
                    while (true) {
                        if (i9 < runCount) {
                            if (bidiRunArr[i9].a == i) {
                                i4 = i9;
                                break;
                            }
                            i9++;
                        } else {
                            i4 = -1;
                            break;
                        }
                    }
                    BidiRun bidiRun = bidiRunArr[i4];
                    if (!z && z3 != bidiRun.c) {
                        z6 = z3;
                    } else if (!z3) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (i4 == 0 && z6) {
                        return layout.getLineLeft(a);
                    }
                    if (i4 == runCount - 1 && !z6) {
                        return layout.getLineRight(a);
                    }
                    if (z6) {
                        return layout.getPrimaryHorizontal(bidiRunArr[i4 - 1].a);
                    }
                    return layout.getPrimaryHorizontal(bidiRunArr[i4 + 1].a);
                }
                if (i > f) {
                    i2 = f(i, lineStart);
                } else {
                    i2 = i;
                }
                int i10 = 0;
                while (true) {
                    if (i10 < runCount) {
                        if (bidiRunArr[i10].b == i2) {
                            i3 = i10;
                            break;
                        }
                        i10++;
                    } else {
                        i3 = -1;
                        break;
                    }
                }
                BidiRun bidiRun2 = bidiRunArr[i3];
                if (!z && z3 != bidiRun2.c) {
                    if (!z3) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                } else {
                    z5 = z3;
                }
                if (i3 == 0 && z5) {
                    return layout.getLineLeft(a);
                }
                if (i3 == runCount - 1 && !z5) {
                    return layout.getLineRight(a);
                }
                if (z5) {
                    return layout.getPrimaryHorizontal(bidiRunArr[i3 - 1].b);
                }
                return layout.getPrimaryHorizontal(bidiRunArr[i3 + 1].b);
            }
            boolean isRtlCharAt = layout.isRtlCharAt(lineStart);
            if (z || z3 == isRtlCharAt) {
                if (!z3) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            }
            if (i == lineStart) {
                z4 = z3;
            } else if (!z3) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z4) {
                return layout.getLineLeft(a);
            }
            return layout.getLineRight(a);
        }
        return b(i, z);
    }

    public final int d(int i, boolean z) {
        int i2;
        Integer valueOf = Integer.valueOf(i);
        ArrayList arrayList = this.b;
        int k = CollectionsKt.k(arrayList, valueOf);
        if (k < 0) {
            i2 = -(k + 1);
        } else {
            i2 = k + 1;
        }
        if (z && i2 > 0) {
            int i3 = i2 - 1;
            if (i == ((Number) arrayList.get(i3)).intValue()) {
                return i3;
            }
        }
        return i2;
    }

    public final int e(int i) {
        if (i == 0) {
            return 0;
        }
        return ((Number) this.b.get(i - 1)).intValue();
    }

    public final int f(int i, int i2) {
        while (i > i2) {
            char charAt = this.a.getText().charAt(i - 1);
            if (charAt != ' ' && charAt != '\n' && charAt != 5760 && ((Intrinsics.b(charAt, 8192) < 0 || Intrinsics.b(charAt, 8202) > 0 || charAt == 8199) && charAt != 8287 && charAt != 12288)) {
                return i;
            }
            i--;
        }
        return i;
    }
}
