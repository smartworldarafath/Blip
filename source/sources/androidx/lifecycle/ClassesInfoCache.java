package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import defpackage.q;
import defpackage.u2;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public final class ClassesInfoCache {
    public static final ClassesInfoCache c = new ClassesInfoCache();
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Deprecated
    /* loaded from: classes.dex */
    public static class CallbackInfo {
        public final HashMap a = new HashMap();
        public final HashMap b;

        public CallbackInfo(HashMap hashMap) {
            this.b = hashMap;
            for (Map.Entry entry : hashMap.entrySet()) {
                Lifecycle.Event event = (Lifecycle.Event) entry.getValue();
                List list = (List) this.a.get(event);
                if (list == null) {
                    list = new ArrayList();
                    this.a.put(event, list);
                }
                list.add((MethodReference) entry.getKey());
            }
        }

        public static void a(List list, LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    MethodReference methodReference = (MethodReference) list.get(size);
                    Method method = methodReference.b;
                    try {
                        int i = methodReference.a;
                        if (i != 0) {
                            if (i != 1) {
                                if (i == 2) {
                                    method.invoke(obj, lifecycleOwner, event);
                                }
                            } else {
                                method.invoke(obj, lifecycleOwner);
                            }
                        } else {
                            method.invoke(obj, null);
                        }
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        u2.k("Failed to call observer method", e2.getCause());
                        return;
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Deprecated
    /* loaded from: classes.dex */
    public static final class MethodReference {
        public final int a;
        public final Method b;

        public MethodReference(int i, Method method) {
            this.a = i;
            this.b = method;
            method.setAccessible(true);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof MethodReference) {
                    MethodReference methodReference = (MethodReference) obj;
                    if (this.a == methodReference.a && this.b.getName().equals(methodReference.b.getName())) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return this.b.getName().hashCode() + (this.a * 31);
        }
    }

    public static void b(HashMap hashMap, MethodReference methodReference, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = (Lifecycle.Event) hashMap.get(methodReference);
        if (event2 != null && event != event2) {
            String name = methodReference.b.getName();
            String name2 = cls.getName();
            String valueOf = String.valueOf(event2);
            String valueOf2 = String.valueOf(event);
            StringBuilder o = q.o("Method ", name, " in ", name2, " already declared with different @OnLifecycleEvent value: previous value ");
            o.append(valueOf);
            o.append(", new value ");
            o.append(valueOf2);
            throw new IllegalArgumentException(o.toString());
        }
        if (event2 == null) {
            hashMap.put(methodReference, event);
        }
    }

    public final CallbackInfo a(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = this.a;
        if (superclass != null) {
            CallbackInfo callbackInfo = (CallbackInfo) hashMap2.get(superclass);
            if (callbackInfo == null) {
                callbackInfo = a(superclass, null);
            }
            hashMap.putAll(callbackInfo.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            CallbackInfo callbackInfo2 = (CallbackInfo) hashMap2.get(cls2);
            if (callbackInfo2 == null) {
                callbackInfo2 = a(cls2, null);
            }
            for (Map.Entry entry : callbackInfo2.b.entrySet()) {
                b(hashMap, (MethodReference) entry.getKey(), (Lifecycle.Event) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length > 0) {
                    if (LifecycleOwner.class.isAssignableFrom(parameterTypes[0])) {
                        i = 1;
                    } else {
                        u2.g("invalid parameter type. Must be one and instanceof LifecycleOwner");
                        return null;
                    }
                } else {
                    i = 0;
                }
                Lifecycle.Event value = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (Lifecycle.Event.class.isAssignableFrom(parameterTypes[1])) {
                        if (value == Lifecycle.Event.ON_ANY) {
                            i = 2;
                        } else {
                            u2.g("Second arg is supported only for ON_ANY value");
                            return null;
                        }
                    } else {
                        u2.g("invalid parameter type. second arg must be an event");
                        return null;
                    }
                }
                if (parameterTypes.length <= 2) {
                    b(hashMap, new MethodReference(i, method), value, cls);
                    z = true;
                } else {
                    u2.g("cannot have more than 2 params");
                    return null;
                }
            }
        }
        CallbackInfo callbackInfo3 = new CallbackInfo(hashMap);
        hashMap2.put(cls, callbackInfo3);
        this.b.put(cls, Boolean.valueOf(z));
        return callbackInfo3;
    }
}
