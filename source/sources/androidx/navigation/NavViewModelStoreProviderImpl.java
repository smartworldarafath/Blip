package androidx.navigation;

import androidx.lifecycle.viewmodel.ViewModelStoreProvider;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavViewModelStoreProviderImpl implements NavViewModelStoreProvider {
    public final ViewModelStoreProvider a;

    public NavViewModelStoreProviderImpl(ViewModelStoreProvider viewModelStoreProvider) {
        this.a = viewModelStoreProvider;
    }

    @Override // androidx.navigation.NavViewModelStoreProvider
    public final void a(String str) {
        str.getClass();
        this.a.a(str);
    }

    public final String toString() {
        return "NavControllerViewModel(provider=" + this.a + ")";
    }
}
