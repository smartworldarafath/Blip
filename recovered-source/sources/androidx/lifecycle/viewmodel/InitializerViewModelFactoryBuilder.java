package androidx.lifecycle.viewmodel;

import defpackage.fe;
import defpackage.q;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InitializerViewModelFactoryBuilder {
    public final LinkedHashMap a = new LinkedHashMap();

    public final void a(ClassReference classReference, Function1 function1) {
        function1.getClass();
        LinkedHashMap linkedHashMap = this.a;
        if (!linkedHashMap.containsKey(classReference)) {
            linkedHashMap.put(classReference, new ViewModelInitializer(classReference, function1));
        } else {
            fe.l(q.i("A `initializer` with the same `clazz` has already been added: ", classReference.b(), "."));
        }
    }

    public final InitializerViewModelFactory b() {
        Collection values = this.a.values();
        values.getClass();
        ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) values.toArray(new ViewModelInitializer[0]);
        return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
    }
}
