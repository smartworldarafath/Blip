package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SerialKind {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CONTEXTUAL extends SerialKind {
        public static final CONTEXTUAL a = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ENUM extends SerialKind {
        public static final ENUM a = new Object();
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    public final String toString() {
        String c = Reflection.a(getClass()).c();
        c.getClass();
        return c;
    }
}
