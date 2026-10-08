package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.AlignmentLine;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AlignmentLineProvider {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Value extends AlignmentLineProvider {
        public final AlignmentLine a;

        public Value(AlignmentLine alignmentLine) {
            this.a = alignmentLine;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Value) && Intrinsics.a(this.a, ((Value) obj).a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Value(alignmentLine=" + this.a + ")";
        }
    }
}
