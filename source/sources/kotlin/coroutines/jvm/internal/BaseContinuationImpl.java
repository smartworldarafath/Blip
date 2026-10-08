package kotlin.coroutines.jvm.internal;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ModuleNameRetriever;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseContinuationImpl implements Continuation<Object>, CoroutineStackFrame, Serializable {
    public final Continuation j;

    public BaseContinuationImpl(Continuation continuation) {
        this.j = continuation;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame d() {
        Continuation continuation = this.j;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.Continuation
    public final void g(Object obj) {
        while (true) {
            BaseContinuationImpl baseContinuationImpl = this;
            Continuation continuation = baseContinuationImpl.j;
            continuation.getClass();
            try {
                obj = baseContinuationImpl.v(obj);
                if (obj == CoroutineSingletons.j) {
                    return;
                }
            } catch (Throwable th) {
                obj = new Result.Failure(th);
            }
            baseContinuationImpl.w();
            if (continuation instanceof BaseContinuationImpl) {
                this = continuation;
            } else {
                continuation.g(obj);
                return;
            }
        }
    }

    public Continuation s(Object obj, Continuation continuation) {
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object u = u();
        if (u == null) {
            u = getClass().getName();
        }
        sb.append(u);
        return sb.toString();
    }

    public StackTraceElement u() {
        int i;
        String str;
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        Object obj;
        Integer num;
        int i2;
        DebugMetadata debugMetadata = (DebugMetadata) getClass().getAnnotation(DebugMetadata.class);
        String str2 = null;
        if (debugMetadata == null || debugMetadata.v() < 1) {
            return null;
        }
        int i3 = -1;
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(this);
            if (obj2 instanceof Integer) {
                num = (Integer) obj2;
            } else {
                num = null;
            }
            if (num != null) {
                i2 = num.intValue();
            } else {
                i2 = 0;
            }
            i = i2 - 1;
        } catch (Exception unused) {
            i = -1;
        }
        if (i >= 0) {
            i3 = debugMetadata.l()[i];
        }
        ModuleNameRetriever.Cache cache = ModuleNameRetriever.b;
        ModuleNameRetriever.Cache cache2 = ModuleNameRetriever.a;
        if (cache == null) {
            try {
                ModuleNameRetriever.Cache cache3 = new ModuleNameRetriever.Cache(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                ModuleNameRetriever.b = cache3;
                cache = cache3;
            } catch (Exception unused2) {
                ModuleNameRetriever.b = cache2;
                cache = cache2;
            }
        }
        if (cache != cache2 && (method = cache.a) != null && (invoke = method.invoke(getClass(), null)) != null && (method2 = cache.b) != null && (invoke2 = method2.invoke(invoke, null)) != null) {
            Method method3 = cache.c;
            if (method3 != null) {
                obj = method3.invoke(invoke2, null);
            } else {
                obj = null;
            }
            if (obj instanceof String) {
                str2 = (String) obj;
            }
        }
        if (str2 == null) {
            str = debugMetadata.c();
        } else {
            str = str2 + '/' + debugMetadata.c();
        }
        return new StackTraceElement(str, debugMetadata.m(), debugMetadata.f(), i3);
    }

    public abstract Object v(Object obj);

    public void w() {
    }
}
