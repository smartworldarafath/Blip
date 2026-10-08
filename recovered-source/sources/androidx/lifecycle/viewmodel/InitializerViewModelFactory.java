package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import defpackage.fe;
import defpackage.jb;
import java.util.Arrays;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InitializerViewModelFactory implements ViewModelProvider.Factory {
    public final ViewModelInitializer[] a;

    public InitializerViewModelFactory(ViewModelInitializer... viewModelInitializerArr) {
        this.a = viewModelInitializerArr;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel b(Class cls, MutableCreationExtras mutableCreationExtras) {
        ViewModelInitializer viewModelInitializer;
        ViewModel viewModel;
        Function1 function1;
        ClassReference a = Reflection.a(cls);
        ViewModelInitializer[] viewModelInitializerArr = this.a;
        ViewModelInitializer[] viewModelInitializerArr2 = (ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length);
        int length = viewModelInitializerArr2.length;
        int i = 0;
        while (true) {
            if (i < length) {
                viewModelInitializer = viewModelInitializerArr2[i];
                if (viewModelInitializer.a.equals(a)) {
                    break;
                }
                i++;
            } else {
                viewModelInitializer = null;
                break;
            }
        }
        if (viewModelInitializer != null && (function1 = viewModelInitializer.b) != null) {
            viewModel = (ViewModel) function1.b(mutableCreationExtras);
        } else {
            viewModel = null;
        }
        if (viewModel != null) {
            return viewModel;
        }
        fe.l(jb.f("No initializer set for given class ", a.b()));
        return null;
    }
}
