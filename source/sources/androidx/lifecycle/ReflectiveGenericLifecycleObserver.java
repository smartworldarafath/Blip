package androidx.lifecycle;

import androidx.lifecycle.ClassesInfoCache;
import androidx.lifecycle.Lifecycle;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements LifecycleEventObserver {
    public final Object j;
    public final ClassesInfoCache.CallbackInfo k;

    public ReflectiveGenericLifecycleObserver(LifecycleObserver lifecycleObserver) {
        this.j = lifecycleObserver;
        ClassesInfoCache classesInfoCache = ClassesInfoCache.c;
        Class<?> cls = lifecycleObserver.getClass();
        ClassesInfoCache.CallbackInfo callbackInfo = (ClassesInfoCache.CallbackInfo) classesInfoCache.a.get(cls);
        this.k = callbackInfo == null ? classesInfoCache.a(cls, null) : callbackInfo;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        HashMap hashMap = this.k.a;
        List list = (List) hashMap.get(event);
        Object obj = this.j;
        ClassesInfoCache.CallbackInfo.a(list, lifecycleOwner, event, obj);
        ClassesInfoCache.CallbackInfo.a((List) hashMap.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj);
    }
}
