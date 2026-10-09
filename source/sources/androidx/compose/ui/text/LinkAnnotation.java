package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LinkAnnotation implements AnnotatedString.Annotation {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Clickable extends LinkAnnotation {
        public final String a;
        public final TextLinkStyles b;

        public Clickable(String str, TextLinkStyles textLinkStyles) {
            this.a = str;
            this.b = textLinkStyles;
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        public final TextLinkStyles a() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Clickable) {
                    Clickable clickable = (Clickable) obj;
                    if (!this.a.equals(clickable.a) || !Intrinsics.a(this.b, clickable.b)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int i;
            int hashCode = this.a.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.b;
            if (textLinkStyles != null) {
                i = textLinkStyles.hashCode();
            } else {
                i = 0;
            }
            return (hashCode + i) * 31;
        }

        public final String toString() {
            return q.i("LinkAnnotation.Clickable(tag=", this.a, ")");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Url extends LinkAnnotation {
        public final String a;
        public final TextLinkStyles b;

        public Url(String str, TextLinkStyles textLinkStyles) {
            this.a = str;
            this.b = textLinkStyles;
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        public final TextLinkStyles a() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Url) {
                    Url url = (Url) obj;
                    if (!this.a.equals(url.a) || !Intrinsics.a(this.b, url.b)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int i;
            int hashCode = this.a.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.b;
            if (textLinkStyles != null) {
                i = textLinkStyles.hashCode();
            } else {
                i = 0;
            }
            return (hashCode + i) * 31;
        }

        public final String toString() {
            return q.i("LinkAnnotation.Url(url=", this.a, ")");
        }
    }

    public abstract TextLinkStyles a();
}
