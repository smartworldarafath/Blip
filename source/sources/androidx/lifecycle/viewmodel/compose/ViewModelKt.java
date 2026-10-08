package androidx.lifecycle.viewmodel.compose;

import androidx.compose.runtime.Composer;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.lifecycle.viewmodel.internal.DefaultViewModelProviderFactory;
import kotlin.jvm.internal.ClassReference;

/* loaded from: classes.dex */
public abstract class ViewModelKt {
    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ViewModel a(ClassReference classReference, ViewModelStoreOwner viewModelStoreOwner, InitializerViewModelFactory initializerViewModelFactory, CreationExtras creationExtras, Composer composer) {
        ViewModelProvider.Factory factory;
        if (initializerViewModelFactory == null) {
            if (viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory) {
                factory = ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).c();
            } else {
                factory = DefaultViewModelProviderFactory.a;
            }
        }
        factory.getClass();
        creationExtras.getClass();
        return new ViewModelProvider(viewModelStoreOwner.e(), factory, creationExtras).a(classReference);
    }
}
