package kotlin.coroutines;

import defpackage.e6;
import defpackage.k0;
import java.io.Serializable;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CombinedContext implements CoroutineContext, Serializable {
    public final CoroutineContext j;
    public final CoroutineContext.Element k;

    public CombinedContext(CoroutineContext.Element element, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        element.getClass();
        this.j = coroutineContext;
        this.k = element;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext A(CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        if (coroutineContext == EmptyCoroutineContext.j) {
            return this;
        }
        return (CoroutineContext) coroutineContext.P0(this, new e6(27));
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object P0(Object obj, Function2 function2) {
        return function2.n(this.j.P0(obj, function2), this.k);
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (obj instanceof CombinedContext) {
                CombinedContext combinedContext = (CombinedContext) obj;
                int i = 2;
                CombinedContext combinedContext2 = combinedContext;
                int i2 = 2;
                while (true) {
                    CoroutineContext coroutineContext = combinedContext2.j;
                    if (coroutineContext instanceof CombinedContext) {
                        combinedContext2 = (CombinedContext) coroutineContext;
                    } else {
                        combinedContext2 = null;
                    }
                    if (combinedContext2 == null) {
                        break;
                    }
                    i2++;
                }
                CombinedContext combinedContext3 = this;
                while (true) {
                    CoroutineContext coroutineContext2 = combinedContext3.j;
                    if (coroutineContext2 instanceof CombinedContext) {
                        combinedContext3 = (CombinedContext) coroutineContext2;
                    } else {
                        combinedContext3 = null;
                    }
                    if (combinedContext3 == null) {
                        break;
                    }
                    i++;
                }
                if (i2 == i) {
                    while (true) {
                        CoroutineContext.Element element = this.k;
                        if (!Intrinsics.a(combinedContext.v(element.getKey()), element)) {
                            z = false;
                            break;
                        }
                        CoroutineContext coroutineContext3 = this.j;
                        if (coroutineContext3 instanceof CombinedContext) {
                            this = (CombinedContext) coroutineContext3;
                        } else {
                            coroutineContext3.getClass();
                            CoroutineContext.Element element2 = (CoroutineContext.Element) coroutineContext3;
                            z = Intrinsics.a(combinedContext.v(element2.getKey()), element2);
                            break;
                        }
                    }
                    if (z) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext g0(CoroutineContext.Key key) {
        key.getClass();
        CoroutineContext.Element element = this.k;
        CoroutineContext.Element v = element.v(key);
        CoroutineContext coroutineContext = this.j;
        if (v != null) {
            return coroutineContext;
        }
        CoroutineContext g0 = coroutineContext.g0(key);
        if (g0 == coroutineContext) {
            return this;
        }
        if (g0 == EmptyCoroutineContext.j) {
            return element;
        }
        return new CombinedContext(element, g0);
    }

    public final int hashCode() {
        return this.k.hashCode() + this.j.hashCode();
    }

    public final String toString() {
        return "[" + ((String) P0("", new k0(8))) + ']';
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element v(CoroutineContext.Key key) {
        key.getClass();
        while (true) {
            CoroutineContext.Element v = this.k.v(key);
            if (v != null) {
                return v;
            }
            CoroutineContext coroutineContext = this.j;
            if (coroutineContext instanceof CombinedContext) {
                this = (CombinedContext) coroutineContext;
            } else {
                return coroutineContext.v(key);
            }
        }
    }
}
