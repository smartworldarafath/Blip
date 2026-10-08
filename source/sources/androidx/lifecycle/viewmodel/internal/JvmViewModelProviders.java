package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import defpackage.fe;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class JvmViewModelProviders {
    public static ViewModel a(Class cls) {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(null);
            if (Modifier.isPublic(declaredConstructor.getModifiers())) {
                try {
                    Object newInstance = declaredConstructor.newInstance(null);
                    newInstance.getClass();
                    return (ViewModel) newInstance;
                } catch (IllegalAccessException e) {
                    fe.r("Cannot create an instance of ", cls, e);
                    return null;
                } catch (InstantiationException e2) {
                    fe.r("Cannot create an instance of ", cls, e2);
                    return null;
                }
            }
            throw new RuntimeException("Cannot create an instance of " + cls);
        } catch (NoSuchMethodException e3) {
            fe.r("Cannot create an instance of ", cls, e3);
            return null;
        }
    }
}
