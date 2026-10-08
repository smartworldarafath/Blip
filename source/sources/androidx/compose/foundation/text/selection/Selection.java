package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.style.ResolvedTextDirection;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Selection {
    public final AnchorInfo a;
    public final AnchorInfo b;
    public final boolean c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AnchorInfo {
        public final ResolvedTextDirection a;
        public final int b;
        public final long c;

        public AnchorInfo(ResolvedTextDirection resolvedTextDirection, int i, long j) {
            this.a = resolvedTextDirection;
            this.b = i;
            this.c = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnchorInfo)) {
                return false;
            }
            AnchorInfo anchorInfo = (AnchorInfo) obj;
            if (this.a == anchorInfo.a && this.b == anchorInfo.b && this.c == anchorInfo.c) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Long.hashCode(this.c) + q.b(this.b, this.a.hashCode() * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AnchorInfo(direction=");
            sb.append(this.a);
            sb.append(", offset=");
            sb.append(this.b);
            sb.append(", selectableId=");
            return q.k(sb, this.c, ")");
        }
    }

    public Selection(AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z) {
        this.a = anchorInfo;
        this.b = anchorInfo2;
        this.c = z;
    }

    public static Selection a(Selection selection, AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z, int i) {
        if ((i & 1) != 0) {
            anchorInfo = selection.a;
        }
        if ((i & 2) != 0) {
            anchorInfo2 = selection.b;
        }
        selection.getClass();
        return new Selection(anchorInfo, anchorInfo2, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Selection)) {
            return false;
        }
        Selection selection = (Selection) obj;
        if (Intrinsics.a(this.a, selection.a) && Intrinsics.a(this.b, selection.b) && this.c == selection.c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "Selection(start=" + this.a + ", end=" + this.b + ", handlesCrossed=" + this.c + ")";
    }
}
