package androidx.navigation;

import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        CreationExtras creationExtras = (CreationExtras) obj;
        creationExtras.getClass();
        return new SavedStateViewModel(SavedStateHandleSupport.a(creationExtras));
    }
}
