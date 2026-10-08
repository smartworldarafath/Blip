package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import defpackage.q;
import kotlin.Deprecated;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public final class UrlAnnotation implements AnnotatedString.Annotation {
    public final String a;

    public UrlAnnotation(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof UrlAnnotation) {
                if (!this.a.equals(((UrlAnnotation) obj).a)) {
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
        return q.i("UrlAnnotation(url=", this.a, ")");
    }
}
