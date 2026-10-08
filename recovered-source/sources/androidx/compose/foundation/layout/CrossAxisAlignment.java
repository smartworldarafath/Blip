package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.AlignmentLineProvider;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CrossAxisAlignment {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AlignmentLineCrossAxisAlignment extends CrossAxisAlignment {
        public final AlignmentLineProvider.Value a;

        public AlignmentLineCrossAxisAlignment(AlignmentLineProvider.Value value) {
            this.a = value;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public final int a(int i, int i2, LayoutDirection layoutDirection, Placeable placeable, int i3) {
            int K = placeable.K(this.a.a);
            if (K != Integer.MIN_VALUE) {
                int i4 = i3 - K;
                if (layoutDirection == LayoutDirection.k) {
                    return (i - i2) - i4;
                }
                return i4;
            }
            return 0;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public final Integer b(Placeable placeable) {
            return Integer.valueOf(placeable.K(this.a.a));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class HorizontalCrossAxisAlignment extends CrossAxisAlignment {
        public final Alignment.Horizontal a;

        public HorizontalCrossAxisAlignment(BiasAlignment.Horizontal horizontal) {
            this.a = horizontal;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public final int a(int i, int i2, LayoutDirection layoutDirection, Placeable placeable, int i3) {
            return ((BiasAlignment.Horizontal) this.a).a(i2, i, layoutDirection);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof HorizontalCrossAxisAlignment) && Intrinsics.a(this.a, ((HorizontalCrossAxisAlignment) obj).a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "HorizontalCrossAxisAlignment(horizontal=" + this.a + ")";
        }
    }

    public abstract int a(int i, int i2, LayoutDirection layoutDirection, Placeable placeable, int i3);

    public Integer b(Placeable placeable) {
        return null;
    }
}
