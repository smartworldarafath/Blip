package androidx.lifecycle;

import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateHandleSupport$savedStateHandlesVM$1 implements ViewModelProvider.Factory {
    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel c(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
        return new SavedStateHandlesVM();
    }
}
