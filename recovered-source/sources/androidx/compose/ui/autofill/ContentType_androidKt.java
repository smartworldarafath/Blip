package androidx.compose.ui.autofill;

import kotlin.collections.SetsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContentType_androidKt {
    public static final ContentType a(String str) {
        return new AndroidContentType(SetsKt.e(str));
    }

    public static final String[] b(ContentType contentType) {
        contentType.getClass();
        return (String[]) ((AndroidContentType) contentType).b.toArray(new String[0]);
    }
}
