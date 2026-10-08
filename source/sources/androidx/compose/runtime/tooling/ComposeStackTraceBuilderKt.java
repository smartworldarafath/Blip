package androidx.compose.runtime.tooling;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposeStackTraceBuilderKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.runtime.tooling.ComposeStackTraceBuilder] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.composer.gapbuffer.GapAnchor] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Integer] */
    public static final List a(SlotWriter slotWriter, Integer num, int i, Integer num2) {
        int i2;
        int i3;
        int s;
        Object obj;
        int i4;
        MutableObjectList mutableObjectList;
        if (!slotWriter.w && slotWriter.p() != 0) {
            ?? composeStackTraceBuilder = new ComposeStackTraceBuilder();
            if (num2 != null) {
                i2 = num2.intValue();
            } else {
                i2 = slotWriter.v;
                if (i2 < 0) {
                    i2 = slotWriter.E(slotWriter.b, i);
                }
            }
            if (num == 0) {
                int N = slotWriter.i - slotWriter.N(slotWriter.b, slotWriter.r(i));
                MutableIntObjectMap mutableIntObjectMap = slotWriter.s;
                if (mutableIntObjectMap != null && (mutableObjectList = (MutableObjectList) mutableIntObjectMap.b(i)) != null) {
                    i4 = mutableObjectList.b;
                } else {
                    i4 = 0;
                }
                num = Integer.valueOf(N + i4);
            }
            int r = slotWriter.r(i) * 5;
            int[] iArr = slotWriter.b;
            if (r < iArr.length) {
                s = slotWriter.s(i);
            } else {
                if (i2 >= 0) {
                    i3 = slotWriter.E(iArr, i2);
                } else {
                    i3 = i2;
                }
                s = slotWriter.s(i2);
                int i5 = i2;
                i2 = i3;
                i = i5;
            }
            while (i >= 0) {
                if ((slotWriter.b[(slotWriter.r(i) * 5) + 1] & 536870912) != 0) {
                    obj = slotWriter.t(i);
                } else {
                    obj = Composer.Companion.a;
                }
                slotWriter.O(i);
                composeStackTraceBuilder.c(s, obj, null, num);
                num = slotWriter.b(i);
                if (i2 >= 0) {
                    int E = slotWriter.E(slotWriter.b, i2);
                    s = slotWriter.s(i2);
                    int i6 = i2;
                    i2 = E;
                    i = i6;
                } else {
                    i = i2;
                }
            }
            return composeStackTraceBuilder.a;
        }
        return EmptyList.j;
    }

    public static final Integer b(SlotReader slotReader, CompositionContext compositionContext, int i, int i2) {
        Integer b;
        RememberObserverHolder rememberObserverHolder;
        Object obj;
        int[] iArr = slotReader.b;
        while (true) {
            GapComposer.CompositionContextHolder compositionContextHolder = null;
            if (i >= i2) {
                return null;
            }
            int i3 = iArr[(i * 5) + 3] + i;
            if (slotReader.j(i) && slotReader.i(i) == 206 && Intrinsics.a(slotReader.p(iArr, i), ComposerKt.e)) {
                Object h = slotReader.h(i, 0);
                if (h instanceof RememberObserverHolder) {
                    rememberObserverHolder = (RememberObserverHolder) h;
                } else {
                    rememberObserverHolder = null;
                }
                if (rememberObserverHolder != null) {
                    obj = ((GapRememberObserverHolder) rememberObserverHolder).a;
                } else {
                    obj = null;
                }
                if (obj instanceof GapComposer.CompositionContextHolder) {
                    compositionContextHolder = (GapComposer.CompositionContextHolder) obj;
                }
                if (compositionContextHolder != null && compositionContextHolder.j == compositionContext) {
                    return Integer.valueOf(i);
                }
            }
            if (slotReader.d(i) && (b = b(slotReader, compositionContext, i + 1, i3)) != null) {
                return Integer.valueOf(b.intValue());
            }
            i = i3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.tooling.ComposeStackTraceBuilder, androidx.compose.runtime.tooling.ReaderTraceBuilder] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public static final ArrayList c(SlotReader slotReader, int i, Integer num) {
        Object obj;
        ?? readerTraceBuilder = new ReaderTraceBuilder(slotReader);
        int q = slotReader.q(i);
        GapAnchor a = slotReader.a(i);
        while (i >= 0) {
            if (slotReader.k(i)) {
                obj = slotReader.p(slotReader.b, i);
            } else {
                obj = Composer.Companion.a;
            }
            readerTraceBuilder.c(slotReader.i(i), obj, slotReader.a.g(i), num);
            if (q >= 0) {
                GapAnchor gapAnchor = a;
                a = slotReader.a(q);
                i = q;
                q = slotReader.q(q);
                num = gapAnchor;
            } else {
                i = q;
                num = a;
            }
        }
        return readerTraceBuilder.a;
    }
}
