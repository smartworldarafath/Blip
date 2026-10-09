package androidx.lifecycle;

import androidx.lifecycle.viewmodel.CreationExtras;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ViewModelStoreOwnerDefaults {
    public static final CreationExtras a(ViewModelStoreOwner viewModelStoreOwner) {
        if (viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory) {
            return ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).d();
        }
        return CreationExtras.Empty.b;
    }
}
