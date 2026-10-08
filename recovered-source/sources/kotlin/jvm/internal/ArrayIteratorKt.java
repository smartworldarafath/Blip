package kotlin.jvm.internal;

import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ArrayIteratorKt {
    public static final Iterator a(Object[] objArr) {
        objArr.getClass();
        return new ArrayIterator(objArr);
    }
}
