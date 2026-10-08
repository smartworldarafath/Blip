package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewModelInitializer<T extends ViewModel> {
    public final ClassReference a;
    public final Function1 b;

    public ViewModelInitializer(ClassReference classReference, Function1 function1) {
        function1.getClass();
        this.a = classReference;
        this.b = function1;
    }
}
