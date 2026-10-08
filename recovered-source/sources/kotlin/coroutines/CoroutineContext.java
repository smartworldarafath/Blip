package kotlin.coroutines;

import defpackage.e6;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface CoroutineContext {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Element extends CoroutineContext {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class DefaultImpls {
            public static Element a(Element element, Key key) {
                key.getClass();
                if (Intrinsics.a(element.getKey(), key)) {
                    return element;
                }
                return null;
            }

            public static CoroutineContext b(Element element, Key key) {
                key.getClass();
                if (Intrinsics.a(element.getKey(), key)) {
                    return EmptyCoroutineContext.j;
                }
                return element;
            }

            public static CoroutineContext c(Element element, CoroutineContext coroutineContext) {
                coroutineContext.getClass();
                if (coroutineContext == EmptyCoroutineContext.j) {
                    return element;
                }
                return (CoroutineContext) coroutineContext.P0(element, new e6(27));
            }
        }

        Key getKey();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Key<E extends Element> {
    }

    CoroutineContext A(CoroutineContext coroutineContext);

    Object P0(Object obj, Function2 function2);

    CoroutineContext g0(Key key);

    Element v(Key key);
}
