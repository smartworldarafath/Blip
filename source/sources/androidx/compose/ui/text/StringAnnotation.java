package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StringAnnotation implements AnnotatedString.Annotation {
    public final String a;

    public /* synthetic */ StringAnnotation(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof StringAnnotation) {
            if (!Intrinsics.a(this.a, ((StringAnnotation) obj).a)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return q.i("StringAnnotation(value=", this.a, ")");
    }
}
