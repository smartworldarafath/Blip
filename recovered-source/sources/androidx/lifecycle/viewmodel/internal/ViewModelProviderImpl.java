package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.LegacySavedStateHandleController;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewModelProviderImpl {
    public final ViewModelStore a;
    public final ViewModelProvider.Factory b;
    public final CreationExtras c;
    public final SynchronizedObject d;

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.viewmodel.internal.SynchronizedObject, java.lang.Object] */
    public ViewModelProviderImpl(ViewModelStore viewModelStore, ViewModelProvider.Factory factory, CreationExtras creationExtras) {
        viewModelStore.getClass();
        factory.getClass();
        creationExtras.getClass();
        this.a = viewModelStore;
        this.b = factory;
        this.c = creationExtras;
        this.d = new Object();
    }

    public final ViewModel a(ClassReference classReference, String str) {
        ViewModel viewModel;
        ViewModel a;
        synchronized (this.d) {
            try {
                viewModel = (ViewModel) this.a.a.get(str);
                if (classReference.d(viewModel)) {
                    Object obj = this.b;
                    if (obj instanceof ViewModelProvider.OnRequeryFactory) {
                        viewModel.getClass();
                        SavedStateViewModelFactory savedStateViewModelFactory = (SavedStateViewModelFactory) ((ViewModelProvider.OnRequeryFactory) obj);
                        savedStateViewModelFactory.getClass();
                        Lifecycle lifecycle = savedStateViewModelFactory.d;
                        if (lifecycle != null) {
                            SavedStateRegistry savedStateRegistry = savedStateViewModelFactory.e;
                            savedStateRegistry.getClass();
                            LegacySavedStateHandleController.a(viewModel, savedStateRegistry, lifecycle);
                        }
                    }
                    viewModel.getClass();
                } else {
                    MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.c);
                    mutableCreationExtras.a.put(ViewModelProvider.b, str);
                    ViewModelProvider.Factory factory = this.b;
                    factory.getClass();
                    try {
                        try {
                            a = factory.c(classReference, mutableCreationExtras);
                        } catch (AbstractMethodError unused) {
                            a = factory.a(JvmClassMappingKt.a(classReference));
                        }
                    } catch (AbstractMethodError unused2) {
                        a = factory.b(JvmClassMappingKt.a(classReference), mutableCreationExtras);
                    }
                    viewModel = a;
                    ViewModelStore viewModelStore = this.a;
                    viewModelStore.getClass();
                    viewModel.getClass();
                    ViewModel viewModel2 = (ViewModel) viewModelStore.a.put(str, viewModel);
                    if (viewModel2 != null) {
                        viewModel2.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return viewModel;
    }
}
