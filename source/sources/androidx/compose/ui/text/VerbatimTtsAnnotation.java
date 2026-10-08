package androidx.compose.ui.text;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VerbatimTtsAnnotation extends TtsAnnotation {
    public final String a;

    public VerbatimTtsAnnotation(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof VerbatimTtsAnnotation) {
                if (!this.a.equals(((VerbatimTtsAnnotation) obj).a)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return q.i("VerbatimTtsAnnotation(verbatim=", this.a, ")");
    }
}
