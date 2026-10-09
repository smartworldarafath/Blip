package androidx.compose.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GapComposerKt {
    public static final c a = new Object();

    public static final void a(int i, int i2, List list) {
        int c = c(i, list);
        if (c < 0) {
            c = -(c + 1);
        }
        while (c < list.size() && ((Invalidation) list.get(c)).b < i2) {
        }
    }

    public static final void b(SlotReader slotReader, ArrayList arrayList, int i) {
        boolean l = slotReader.l(i);
        int[] iArr = slotReader.b;
        if (l) {
            arrayList.add(slotReader.n(i));
            return;
        }
        int i2 = iArr[(i * 5) + 3] + i;
        for (int i3 = i + 1; i3 < i2; i3 += iArr[(i3 * 5) + 3]) {
            b(slotReader, arrayList, i3);
        }
    }

    public static final int c(int i, List list) {
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            int b = Intrinsics.b(((Invalidation) list.get(i3)).b, i);
            if (b < 0) {
                i2 = i3 + 1;
            } else if (b > 0) {
                size = i3 - 1;
            } else {
                return i3;
            }
        }
        return -(i2 + 1);
    }

    public static final void d(SlotWriter slotWriter, int i, Object obj) {
        int h = slotWriter.h(i);
        Object[] objArr = slotWriter.c;
        Object obj2 = objArr[h];
        objArr[h] = Composer.Companion.a;
        if (obj == obj2) {
            return;
        }
        ComposerKt.a("Slot table is out of sync (expected " + obj + ", got " + obj2 + ")");
    }
}
