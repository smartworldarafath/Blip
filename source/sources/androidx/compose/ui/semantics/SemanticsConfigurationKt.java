package androidx.compose.ui.semantics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SemanticsConfigurationKt {
    public static final Object a(SemanticsConfiguration semanticsConfiguration, SemanticsPropertyKey semanticsPropertyKey) {
        Object e = semanticsConfiguration.j.e(semanticsPropertyKey);
        if (e == null) {
            return null;
        }
        return e;
    }
}
