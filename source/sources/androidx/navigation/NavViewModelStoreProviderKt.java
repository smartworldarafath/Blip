package androidx.navigation;

import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavViewModelStoreProviderKt {
    public static final NavViewModelStoreProvider a(ViewModelStore viewModelStore) {
        return new NavViewModelStoreProviderImpl(new ViewModelStoreProvider(viewModelStore));
    }
}
