package androidx.lifecycle;

import android.app.Application;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.internal.JvmViewModelProviders;
import androidx.lifecycle.viewmodel.internal.ViewModelProviderImpl;
import defpackage.fe;
import defpackage.u2;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ViewModelProvider {
    public static final ViewModelProvider$special$$inlined$Key$1 b = new Object();
    public final ViewModelProviderImpl a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AndroidViewModelFactory extends NewInstanceFactory {
        public static AndroidViewModelFactory c;
        public static final ViewModelProvider$AndroidViewModelFactory$special$$inlined$Key$1 d = new Object();
        public final Application b;

        public AndroidViewModelFactory(Application application) {
            this.b = application;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel a(Class cls) {
            Application application = this.b;
            if (application != null) {
                return d(cls, application);
            }
            fe.t("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
            return null;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel b(Class cls, MutableCreationExtras mutableCreationExtras) {
            if (this.b != null) {
                return a(cls);
            }
            Application application = (Application) mutableCreationExtras.a.get(d);
            if (application != null) {
                return d(cls, application);
            }
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return JvmViewModelProviders.a(cls);
            }
            u2.g("CreationExtras must have an application by `APPLICATION_KEY`");
            return null;
        }

        public final ViewModel d(Class cls, Application application) {
            if (AndroidViewModel.class.isAssignableFrom(cls)) {
                try {
                    ViewModel viewModel = (ViewModel) cls.getConstructor(Application.class).newInstance(application);
                    viewModel.getClass();
                    return viewModel;
                } catch (IllegalAccessException e) {
                    fe.r("Cannot create an instance of ", cls, e);
                    return null;
                } catch (InstantiationException e2) {
                    fe.r("Cannot create an instance of ", cls, e2);
                    return null;
                } catch (NoSuchMethodException e3) {
                    fe.r("Cannot create an instance of ", cls, e3);
                    return null;
                } catch (InvocationTargetException e4) {
                    fe.r("Cannot create an instance of ", cls, e4);
                    return null;
                }
            }
            return JvmViewModelProviders.a(cls);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Factory {
        default ViewModel a(Class cls) {
            throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
        }

        default ViewModel b(Class cls, MutableCreationExtras mutableCreationExtras) {
            return a(cls);
        }

        default ViewModel c(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
            return b(JvmClassMappingKt.a(classReference), mutableCreationExtras);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class NewInstanceFactory implements Factory {
        public static NewInstanceFactory a;

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel a(Class cls) {
            return JvmViewModelProviders.a(cls);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel b(Class cls, MutableCreationExtras mutableCreationExtras) {
            return a(cls);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel c(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
            return b(JvmClassMappingKt.a(classReference), mutableCreationExtras);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class OnRequeryFactory {
    }

    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras) {
        viewModelStore.getClass();
        factory.getClass();
        creationExtras.getClass();
        this.a = new ViewModelProviderImpl(viewModelStore, factory, creationExtras);
    }

    public final ViewModel a(ClassReference classReference) {
        String b2 = classReference.b();
        if (b2 != null) {
            return this.a.a(classReference, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(b2));
        }
        u2.g("Local and anonymous classes can not be ViewModels");
        return null;
    }
}
