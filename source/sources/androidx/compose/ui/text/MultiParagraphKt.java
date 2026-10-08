package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.util.ListUtilsKt;
import defpackage.jb;
import defpackage.la;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MultiParagraphKt {
    public static final int a(int i, List list) {
        int i2;
        char c;
        int i3 = ((ParagraphInfo) CollectionsKt.z(list)).c;
        if (i > ((ParagraphInfo) CollectionsKt.z(list)).c) {
            InlineClassHelperKt.a("Index " + i + " should be less or equal than last line's end " + i3);
        }
        int size = list.size() - 1;
        int i4 = 0;
        while (true) {
            if (i4 <= size) {
                i2 = (i4 + size) >>> 1;
                ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i2);
                if (paragraphInfo.b > i) {
                    c = 1;
                } else if (paragraphInfo.c <= i) {
                    c = 65535;
                } else {
                    c = 0;
                }
                if (c < 0) {
                    i4 = i2 + 1;
                } else {
                    if (c <= 0) {
                        break;
                    }
                    size = i2 - 1;
                }
            } else {
                i2 = -(i4 + 1);
                break;
            }
        }
        if (i2 >= 0 && i2 < list.size()) {
            return i2;
        }
        int size2 = list.size();
        String a = ListUtilsKt.a(list, null, new la(7), 31);
        StringBuilder k = jb.k("Found paragraph index ", i2, " should be in range [0, ", size2, ").\nDebug info: index=");
        k.append(i);
        k.append(", paragraphs=[");
        k.append(a);
        k.append("]");
        InlineClassHelperKt.a(k.toString());
        return i2;
    }

    public static final int b(int i, List list) {
        char c;
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i3);
            if (paragraphInfo.d > i) {
                c = 1;
            } else if (paragraphInfo.e <= i) {
                c = 65535;
            } else {
                c = 0;
            }
            if (c < 0) {
                i2 = i3 + 1;
            } else if (c > 0) {
                size = i3 - 1;
            } else {
                return i3;
            }
        }
        return -(i2 + 1);
    }

    public static final int c(ArrayList arrayList, float f) {
        char c;
        if (f <= 0.0f) {
            return 0;
        }
        if (f >= ((ParagraphInfo) CollectionsKt.z(arrayList)).g) {
            return arrayList.size() - 1;
        }
        int size = arrayList.size() - 1;
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i2);
            if (paragraphInfo.f > f) {
                c = 1;
            } else if (paragraphInfo.g <= f) {
                c = 65535;
            } else {
                c = 0;
            }
            if (c < 0) {
                i = i2 + 1;
            } else if (c > 0) {
                size = i2 - 1;
            } else {
                return i2;
            }
        }
        return -(i + 1);
    }

    public static final void d(ArrayList arrayList, long j, Function1 function1) {
        int size = arrayList.size();
        for (int a = a(TextRange.f(j), arrayList); a < size; a++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(a);
            if (paragraphInfo.b < TextRange.e(j)) {
                if (paragraphInfo.b != paragraphInfo.c) {
                    function1.b(paragraphInfo);
                }
            } else {
                return;
            }
        }
    }
}
