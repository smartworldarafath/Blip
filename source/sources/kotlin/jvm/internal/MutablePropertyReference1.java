package kotlin.jvm.internal;

import defpackage.fe;
import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MutablePropertyReference1 extends MutablePropertyReference implements KMutableProperty1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        ((MutablePropertyReference1Impl) this).h();
        throw null;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable d() {
        Reflection.a.getClass();
        return this;
    }

    public final void h() {
        if (!this.q) {
            KCallable g = g();
            if (g != this) {
                ((MutablePropertyReference1) ((KMutableProperty1) ((KProperty) g))).h();
                return;
            }
            throw new Error("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
        }
        fe.t("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
    }
}
