package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.internal.JvmViewModelProviders;
import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.fe;
import defpackage.u2;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateViewModelFactory extends ViewModelProvider.OnRequeryFactory implements ViewModelProvider.Factory {
    public final Application a;
    public final ViewModelProvider.AndroidViewModelFactory b;
    public final Bundle c;
    public final Lifecycle d;
    public final SavedStateRegistry e;

    public SavedStateViewModelFactory(Application application, SavedStateRegistryOwner savedStateRegistryOwner, Bundle bundle) {
        ViewModelProvider.AndroidViewModelFactory androidViewModelFactory;
        this.e = savedStateRegistryOwner.f();
        this.d = savedStateRegistryOwner.g();
        this.c = bundle;
        this.a = application;
        if (application != null) {
            if (ViewModelProvider.AndroidViewModelFactory.c == null) {
                ViewModelProvider.AndroidViewModelFactory.c = new ViewModelProvider.AndroidViewModelFactory(application);
            }
            androidViewModelFactory = ViewModelProvider.AndroidViewModelFactory.c;
            androidViewModelFactory.getClass();
        } else {
            androidViewModelFactory = new ViewModelProvider.AndroidViewModelFactory(null);
        }
        this.b = androidViewModelFactory;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return d(cls, canonicalName);
        }
        u2.g("Local and anonymous classes can not be ViewModels");
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel b(Class cls, MutableCreationExtras mutableCreationExtras) {
        Constructor a;
        LinkedHashMap linkedHashMap = mutableCreationExtras.a;
        String str = (String) linkedHashMap.get(ViewModelProvider.b);
        if (str != null) {
            if (linkedHashMap.get(SavedStateHandleSupport.a) != null && linkedHashMap.get(SavedStateHandleSupport.b) != null) {
                Application application = (Application) linkedHashMap.get(ViewModelProvider.AndroidViewModelFactory.d);
                boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(cls);
                if (isAssignableFrom && application != null) {
                    a = SavedStateViewModelFactory_androidKt.a(cls, SavedStateViewModelFactory_androidKt.a);
                } else {
                    a = SavedStateViewModelFactory_androidKt.a(cls, SavedStateViewModelFactory_androidKt.b);
                }
                if (a == null) {
                    return this.b.b(cls, mutableCreationExtras);
                }
                if (isAssignableFrom && application != null) {
                    return SavedStateViewModelFactory_androidKt.b(cls, a, application, SavedStateHandleSupport.a(mutableCreationExtras));
                }
                return SavedStateViewModelFactory_androidKt.b(cls, a, SavedStateHandleSupport.a(mutableCreationExtras));
            }
            if (this.d != null) {
                return d(cls, str);
            }
            u2.l("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
            return null;
        }
        u2.l("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel c(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
        return b(JvmClassMappingKt.a(classReference), mutableCreationExtras);
    }

    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Object, androidx.lifecycle.ViewModelProvider$NewInstanceFactory] */
    public final ViewModel d(Class cls, String str) {
        Constructor a;
        ViewModel b;
        AutoCloseable autoCloseable;
        Application application;
        Lifecycle lifecycle = this.d;
        if (lifecycle != null) {
            boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(cls);
            if (isAssignableFrom && this.a != null) {
                a = SavedStateViewModelFactory_androidKt.a(cls, SavedStateViewModelFactory_androidKt.a);
            } else {
                a = SavedStateViewModelFactory_androidKt.a(cls, SavedStateViewModelFactory_androidKt.b);
            }
            if (a == null) {
                if (this.a != null) {
                    return this.b.a(cls);
                }
                if (ViewModelProvider.NewInstanceFactory.a == null) {
                    ViewModelProvider.NewInstanceFactory.a = new Object();
                }
                ViewModelProvider.NewInstanceFactory.a.getClass();
                return JvmViewModelProviders.a(cls);
            }
            SavedStateRegistry savedStateRegistry = this.e;
            savedStateRegistry.getClass();
            SavedStateHandle a2 = SavedStateHandle.Companion.a(savedStateRegistry.a(str), this.c);
            SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, a2);
            savedStateHandleController.a(lifecycle, savedStateRegistry);
            LegacySavedStateHandleController.b(lifecycle, savedStateRegistry);
            if (isAssignableFrom && (application = this.a) != null) {
                b = SavedStateViewModelFactory_androidKt.b(cls, a, application, a2);
            } else {
                b = SavedStateViewModelFactory_androidKt.b(cls, a, a2);
            }
            b.getClass();
            ViewModelImpl viewModelImpl = b.a;
            if (viewModelImpl != null) {
                if (viewModelImpl.d) {
                    ViewModelImpl.a(savedStateHandleController);
                    return b;
                }
                synchronized (viewModelImpl.a) {
                    autoCloseable = (AutoCloseable) viewModelImpl.b.put("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
                }
                ViewModelImpl.a(autoCloseable);
                return b;
            }
            return b;
        }
        fe.t("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        return null;
    }

    public SavedStateViewModelFactory() {
        this.b = new ViewModelProvider.AndroidViewModelFactory(null);
    }
}
